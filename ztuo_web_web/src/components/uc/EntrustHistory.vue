<style lang="scss" scoped>
.entrusthistory {
    float: left;
    width: 82%;
    padding-left: 30px;
}
.page {
    text-align: right;
    margin-top: 20px;
}
.table {
    border-radius: 6px;
}
.table .ivu-table-wrapper {
    position: relative;
    /* border: 1px solid #dddee1; */
    border-bottom: 0;
    border-right: 0;
    box-shadow: 0 0 2px #ccc;
    border-radius: 6px;
    overflow: hidden;
}
.form.ivu-form-inline .ivu-form-item {
    display: inline-block;
}
</style>
<style lang="scss">
.entrusthistory .ivu-table th,
.entrusthistory .ivu-table td {
    text-align: center;
}
.table .ivu-table-cell-expand {
    color: #3399ff;
}
.form .clear_btn {
    &:hover {
        color: #3399ff;
        border-color: #3399ff;
    }
    &:focus {
        background-color: #fff;
        -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        color: #3399ff;
        border-color: #3399ff;
    }
}
</style>



<template>
    <div class="entrusthistory">
        <Form class="form" :model="formItem" :label-width="60" inline>
            <FormItem :label-width="locale == 'en' ? 144 : 60 " :label="$t('historyAndCu.stEnTime')">
                <DatePicker type="daterange" v-model="formItem.date" style="width:180px;"></DatePicker>
            </FormItem>
            <FormItem :label="$t('historyAndCu.symbol')">
                <Select v-model="formItem.symbol" style="width:100px;" :placeholder="$t('header.choose')">
                    <Option v-for="(item,index) in symbol" :key="index" :value="item.symbol">{{item.symbol}}</Option>
                </Select>
            </FormItem>
            <FormItem :label="$t('historyAndCu.type')">
                <Select v-model="formItem.type" style="width:70px;" :placeholder="$t('header.choose')">
                    <Option v-for="(item, index) in exchangeType" :value="item[0]" :key="index">{{item[1]}}</Option>
                </Select>
            </FormItem>
            <FormItem :label="$t('historyAndCu.direction')">
                <Select v-model="formItem.direction" style="width:70px;" :placeholder="$t('header.choose')">
                    <Option value="0">{{$t('historyAndCu.buy')}}</Option>
                    <Option value="1">{{$t('historyAndCu.sell')}}</Option>
                </Select>
            </FormItem>
            <FormItem>
                <Button type="primary" @click="handleSubmit">{{$t('historyAndCu.search')}}</Button>
                <Button style="margin-left: 8px" @click="handleClear" class="clear_btn">{{$t('historyAndCu.clear')}}</Button>
            </FormItem>
        </Form>
        <div class="table">
            <Table :no-data-text="$t('common.nodata')" :columns="columns" :data="orders" :loading="loading"></Table>
            <div class="page">
                <Page :total="total" :pageSize="pageSize" :current="pageNo" @on-change="loadDataPage"></Page>
            </div>
        </div>
    </div>
</template>
<script>
var moment = require("moment");
import expandRow from "@components/exchange/expand.vue";
const map = new Map([['LIMIT_PRICE', '限价'], ['MARKET_PRICE', '市价'], ['CHECK_FULL_STOP', '止盈止损']]);
const mapEn = new Map([['LIMIT_PRICE', 'limited price'], ['MARKET_PRICE', 'market price'], ['CHECK_FULL_STOP', 'top profit and stop loss']]);
export default {
    components: { expandRow },
    data() {
        const self = this;
        return {
            locale:'',
            loading: false,
            pageSize: 10,
            pageNo: 1,
            total: 10,
            symbol: [],
            formItem: {
                symbol: "",
                type: "",
                direction: "",
                date: ""
            },

            orders: []
        };
    },
    created() {
        this.getHistoryOrder();
        this.getSymbol();
    },
     watch: {
    "$i18n.locale": {
      handler(newVal) {
        this.locale = newVal;
      },
      immediate: true
    }
  },
    methods: {
        dateFormat: function (tick) {
            return moment(tick).format("YYYY-MM-DD HH:mm:ss");
        },
        loadDataPage(data) {
            this.pageNo = data;
            this.getHistoryOrder();
        },
        handleSubmit() {
            this.pageNo = 1;
            this.getHistoryOrder();
        },
        handleClear() {
            this.formItem = {
                symbol: "",
                type: "",
                direction: "",
                date: ""
            };
        },
        getHistoryOrder() {
            //查询历史委托
            this.loading = true;
            const { symbol, type, direction, date: rangeDate } = this.formItem,
                startTime = new Date(rangeDate[0]).getTime() || "",
                endTime = new Date(rangeDate[1]).getTime() || "";
            let params = {};
            if (symbol) params.symbol = symbol;
            if (direction) params.direction = direction;
            if (type) params.type = type;
            if (startTime) params.startTime = startTime;
            if (endTime) params.endTime = endTime;
            params.pageNo = this.pageNo;
            params.pageSize = this.pageSize;
            var that = this;
            this.orders = [];
            this.$http
                .post(this.host + "/exchange/order/personal/history", params)
                .then(response => {
                    var resp = response.body;
                    let rows = [];
                    if (resp.content.length > 0) {
                        this.total = resp.totalElements;
                        for (var i = 0; i < resp.content.length; i++) {
                            var row = resp.content[i];
                            row.price =
                                row.type == "MARKET_PRICE"
                                    ? that.$t("exchange.marketprice")
                                    : row.price;
                            rows.push(row);
                        }
                        this.orders = rows;
                    }
                    this.loading = false;
                });
        },
        getSymbol() {
            this.$http.post(this.host + this.api.market.thumb, {}).then(response => {
                var resp = response.body;
                if (resp.length > 0) {
                    this.symbol = resp;
                }
            });
        }
    },
    computed: {
        columns() {
            const m = this.$store.getters.lang == "English" ? mapEn : map;
            const arr = [];
            arr.push({
                type: "expand",
                width: 30,
                render: (h, params) => {
                    return h(expandRow, {
                        props: {
                            skin: params.row.skin,
                            rows: params.row.detail
                        }
                    });
                }
            });
            arr.push({
                title: this.$t("exchange.time"),
                key: "time",
                minWidth: 55,
                render: (h, params) => {
                    return h("span", {}, this.dateFormat(params.row.time));
                }
            });
            arr.push({
                title: this.$t("historyAndCu.symbol"),
                key: "symbol"
            });
            arr.push({
                title: this.$t("historyAndCu.type"),
                width: 60,
                render(h, params) {
                    const type = params.row.type;
                    return h("span", {}, m.get(type));
                }
            });
            arr.push({
                title: this.$t("historyAndCu.triggerPrice"),
                key: "triggerPrice"
            });
            arr.push({
                title: this.$t("exchange.direction"),
                key: "direction",
                width: 60,
                render: (h, params) => {
                    const row = params.row;
                    const className = row.direction.toLowerCase();
                    return h(
                        "span",
                        {
                            attrs: {
                                class: className
                            }
                        },
                        row.direction == "BUY"
                            ? this.$t("exchange.buyin")
                            : this.$t("exchange.sellout")
                    );
                }
            });
            arr.push({
                title: this.$t("exchange.price"),
                key: "price",
                render:(h, params)=>{
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.price
                            }
                        },
                        this.toFloor(params.row.price)
                    );
                }
            });
            arr.push({
                title: this.$t("exchange.num"),
                key: "amount",
                render:(h, params)=>{
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.amount
                            }
                        },
                        this.toFloor(params.row.amount)
                    );
                }
            });
            arr.push({
                title: this.$t("exchange.done"),
                key: "tradedAmount",
                render:(h, params)=>{
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.tradedAmount
                            }
                        },
                        this.toFloor(params.row.tradedAmount)
                    );
                }
            });
            arr.push({
                title: this.$t("historyAndCu.turnoverAmount"),
                key: "turnover",
                render:(h, params)=>{
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.turnover
                            }
                        },
                        this.toFloor(params.row.turnover)
                    );
                }
            });
            arr.push({
                title: this.$t("exchange.status"),
                key: "status",
                width: 80,
                render: (h, params) => {
                    const status = params.row.status;
                    if (status == "COMPLETED") {
                        return h(
                            "span",
                            {
                                style: {
                                    color: "#3399ff"
                                }
                            },
                            this.$t("exchange.finished")
                        );
                    } else if (status == "CANCELED") {
                        return h(
                            "span",
                            {
                                style: {
                                    color: "#3399ff"
                                }
                            },
                            this.$t("exchange.canceled")
                        );
                    } else {
                        return h("span", {}, "--");
                    }
                }
            })
            return arr;

        },
        exchangeType() {
            const m = this.$store.getters.lang == "English" ? mapEn : map;
            return [...m];
        }
    }
};
</script>

