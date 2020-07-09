<template>
    <div class="nav-rights">
        <div class="nav-right">
            <div class="bill_flow_box">
                <div class="rightarea-con">
                    <div class="form-group">
                        <span>
                            {{$t('uc.finance.record.start_end')}} ：
                        </span>
                        <DatePicker
                            v-model="rangeDate"
                            @on-change="changedate"
                            format="yyyy-MM-dd"
                            type="daterange"
                            style="width: 200px;margin-right:10px;"
                            @on-clear="clear"
                        ></DatePicker>
                        <!--<DatePicker v-model="startDate" type="date"></DatePicker>-->
                        <!--<span>-->
                        <!--{{$t('uc.finance.record.to')}}-->
                        <!--</span>-->
                        <!--<DatePicker v-model="endDate" type="date"></DatePicker>-->
                        <span>{{$t('uc.finance.currency')}}：</span>
                        <Select
                            v-model="coinType"
                            style="width:100px;margin-right:30px;"
                            @on-change="getAddrList"
                            clearable
                            :placeholder="select"
                        >
                            <Option
                                v-for="item in coinList"
                                :value="item.unit"
                                :key="item.unit"
                            >
                                {{ item.unit }}
                            </Option>
                        </Select>
                        <span>
                            {{$t('uc.finance.record.operatetype')}} ：
                        </span>
                        <Select
                            v-model="recordValue"
                            clearable
                            style="width:200px"
                            @on-change="getType"
                            :placeholder="select"
                        >
                            <Option
                                v-for="(item, index) in recordType"
                                :value="index"
                                :key="item"
                            >
                                {{ item }}
                            </Option>
                        </Select>
                        <Button
                            type="warning"
                            @click="queryOrder"
                            style="padding: 6px 30px;margin-left:10px;background-color:#3399ff;border-color:#3399ff"
                        >
                            {{$t('uc.finance.record.search')}}
                        </Button>
                    </div>
                    <div class="order-table">
                        <Table
                            stripe
                            :no-data-text="$t('common.nodata')"
                            :columns="tableColumnsRecord"
                            :data="tableRecord"
                            :disabled-hover="true"
                            :loading="loading"
                        ></Table>
                        <div style="margin: 10px;overflow: hidden">
                            <div style="float: right;">
                                <Page
                                    :total="total"
                                    v-show="total > 10"
                                    :pageSize="pageSize"
                                    show-total
                                    :current="page"
                                    @on-change="changePage"
                                    id="record_pages"
                                ></Page>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
const map = new Map([
    ['0', '充值'],
    ['1', '提现'],
    ['2', '转账'],
    ['3', '币币交易'],
    ['4', '法币买入'],
    ['5', '法币卖出'],
    ['6', '活动奖励'],
    ['7', '推广奖励'],
    ['8', '分红'],
    ['9', '投票'],
    ['10', '人工充值'],
    ['11', '配对'],
    ['12', '缴纳商家认证保证金'],
    ['13', '退回商家认证保证金'],
    ['14', '法币充值'],
    ['15', '币币兑换'],
    ['16', '渠道推广'],
    ['17', '划转入杠杆钱包'],
    ['18', '从杠杆钱包划转出'],
    ['19', '钱包空投'],
    ['20', '锁仓'],
    ['21', '解锁'],
    ['22', '第三方转入'],
    ['23', '第三方转出'],
    ['24', '币币转入法币'],
    ['25', '法币转入币币'],
    ['26', '借贷流水'],
    ['27', '还款流水'],
]);
const mapEn = new Map([
    ['0', 'recharge'],
    ['1', 'withdraw deposit'],
    ['2', 'transfer'],
    ['3', 'currency deal'],
    ['4', 'legal tender buying'],
    ['5', 'legal tender selling'],
    ['6', 'activity reward'],
    ['7', 'Promotion rewards'],
    ['8', 'dividend'],
    ['9', 'voting'],
    ['10', 'Artificial Recharge'],
    ['11', 'pairing'],
    ['12', 'pay the merchant certification deposit'],
    ['13', 'Return the merchant certification deposit'],
    ['14', 'legal tender recharge'],
    ['15', 'currency exchange'],
    ['16', 'Channel promotion'],
    ['17', 'Transfer to lever wallet'],
    ['18', 'Transfer out of the lever wallet'],
    ['19', 'wallet airdrop'],
    ['20', 'locked position'],
    ['21', 'unlock'],
    ['22', 'Third party transfer'],
    ['23', 'Third party roll out'],
    ['24', 'The bitcoins are transferred into legal tender'],
    ['25', 'Legal tender is transferred into bitcoin'],
    ['26', 'loan flow'],
    ['27', 'repayment flow'],
]);

export default {
    components: {},
    data() {
        return {
            loading: false,
            ordKeyword: "",
            rangeDate: "",
            startTime: "",
            endTime: "",
            select:'select',
            recordValue: "",
            // recordType: [...map.values()],
            coinList: [],
            coinType: "",
            pageSize: 10,
            page: 1,
            total: 0,
            tableRecord: []
        };
    },
    created: function () {
        this.getList(this.page);
        this.getAddrList();
    },
    methods: {
        changedate() {
            if (this.rangeDate[0]) {
                this.startTime = this.dateform(this.rangeDate[0]);
                this.endTime = this.dateform(this.rangeDate[1]);
            }
        },
        changePage(pageindex) {
            this.page = pageindex;
            this.getList(this.page);
        },
        queryOrder() {
            if (this.rangeDate.length == 0) {
                this.$Message.error(this.$t('uc.finance.record.searchPla'));
                return;
            } else {
                try {
                    this.page = 1;
                    this.getList(this.page);
                } catch (ex) {
                    this.$Message.error(this.$t('uc.finance.record.searchPla'));
                    return;
                }
            }
        },
        getAddrList() {
            //获取地址
            this.$http
                .post(this.host + "/uc/withdraw/support/coin/info")
                .then(response => {
                    var resp = response.body;
                    if (resp.code == 0 && resp.data.length > 0) {
                        this.coinList = resp.data;
                        if (this.coinType) {
                            this.coinType = this.coinType;
                        }
                    } else {
                        this.$Message.error(resp.message);
                    }
                });
        },
        getType() {
        },
        dateform(time) {
            var date = new Date(time);
            var y = date.getFullYear();
            var m = date.getMonth() + 1;
            m = m < 10 ? "0" + m : m;
            var d = date.getDate();
            d = d < 10 ? "0" + d : d;
            var h = date.getHours();
            h = h < 10 ? "0" + h : h;
            var minute = date.getMinutes();
            var second = date.getSeconds();
            minute = minute < 10 ? "0" + minute : minute;
            second = second < 10 ? "0" + second : second;
            return y + "-" + m + "-" + d + " " + h + ":" + minute + ":" + second;
        },
        getList(pageNo) {
            //获取tableWithdraw
            let memberId = 0;
            !this.$store.getters.isLogin && this.$router.push("/login");
            this.$store.getters.isLogin && (memberId = this.$store.getters.member.id);
            let startTime = "";
            let endTime = "";
            let symbol = "";
            let type = "";
            this.startTime && (startTime = this.startTime);
            this.endTime && (endTime = this.endTime);
            this.coinType && (symbol = this.coinType);
            if (this.recordValue == 0 || this.recordValue) {
                type = this.recordValue;
            }
            // this.recordValue!="" || this.recordValue!=undefined && (type = this.recordValue);
            this.loading = true;
            let params = {
                pageNo,
                pageSize: this.pageSize,
                startTime,
                endTime,
                memberId,
                symbol,
                type
            };
            this.$http.post(this.host + "/uc/asset/transaction", params).then(response => {
                var resp = response.body;
                if (resp.code == 0) {
                    this.loading = false;
                    if (resp.data) {
                        let trueData = resp.data;
                        this.total = trueData.totalElements;
                        this.tableRecord = trueData.content;
                    }
                } else {
                    this.$Message.error(resp.message);
                }
                this.loading = false;
            });
        },
        clear() {
            this.startTime = "";
            this.endTime = "";
        }
    },
    computed: {
        tableColumnsRecord() {
            let columns = [];
            var that = this;
            const m = this.$store.getters.lang == "English" ? mapEn : map;
            const T = this.$store.getters.lang == "English" ? 147 : '';
            const Y = this.$store.getters.lang == "English" ? 109 : '';
            const Y1 = this.$store.getters.lang == "English" ? 82 : '';
            const F = this.$store.getters.lang == "English" ? 116 : '';
            const F1 = this.$store.getters.lang == "English" ? 122 : '';
            const C = this.$store.getters.lang == "English" ? 133 : '';
            columns.push({
                title: this.$t("uc.finance.record.chargetime"),
                align: "center",
                width: T,
                render: (h, params) => {
                    return h("div", {}, params.row.createTime);
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.type"),
                width: Y,
                render: function (h, params) {
                    let str = "";
                    let type = params.row.type.toString();
                    return h("div", {}, m.get(type));
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.symbol"),
                width: Y,
                align: "center",
                render: (h, param) => {
                    return h("div", {}, param.row.symbol);
                }
            });
            columns.push({
                title: this.$t("uc.finance.Quantityofarrival"),
                width: C,
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.amount
                            }
                        },
                        Math.abs(that.toFloor(params.row.amount)) || 0
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.shouldfee"), //"应付手续费"
                width: Y,
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.fee
                            }
                        },
                        Math.abs(that.toFloor(params.row.fee)) || 0
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.discountfee"), //"抵扣手续费"
                width: F,
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.discount_fee
                            }
                        },
                        Math.abs(that.toFloor(params.row.discount_fee)) || 0
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.realfee"), //"实际手续费"
                width: F1,
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.real_fee
                            }
                        },
                        Math.abs(that.toFloor(params.row.real_fee)) || 0
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.record.status"),
                // key: "status",
                width: Y1,
                align: "center",
                render: (h, params) => {
                    return h("div", that.$t("uc.finance.record.finish"), "");
                }
            });
            return columns;
        },
        recordType() {
            const m = this.$store.getters.lang == "English" ? mapEn : map;
            return [...m.values()];
        }
    }
};
</script>
<style scoped lang="scss">
.nav-rights {
    .nav-right {
        height: auto;
        overflow: hidden;
        padding: 0 15px;
        .bill_flow_box .rightarea-con {
            .form-group {
                margin-bottom: 20px;
                text-align: left;
            }
        }
    }
}
</style>
<style lang="scss">
.nav-rights {
    .nav-right {
        .bill_flow_box .rightarea-con {
            .form-group {
                .ivu-date-picker {
                    .ivu-date-picker-rel {
                        .ivu-input {
                            &:hover {
                                border-color: #3399ff;
                            }
                            &:focus {
                                border-color: #3399ff;
                                box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                            }
                        }
                    }
                }
                .ivu-date-picker-focused {
                    .ivu-date-picker-rel {
                        .ivu-input {
                            border-color: #3399ff;
                            box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                            &:focus {
                                border-color: #3399ff;
                            }
                        }
                    }
                }
            }
        }
    }
}
#record_pages li.ivu-page-item.ivu-page-item-active {
    background-color: #3399ff;
    border-color: #3399ff;
    a {
        color: #fff;
    }
}
#record_pages li.ivu-page-item.ivu-page-item-active {
    &:hover {
        background-color: #3399ff;
        a {
            color: #fff;
        }
    }
}
.ivu-page-item:hover {
    color: #3399ff;
}
</style>
