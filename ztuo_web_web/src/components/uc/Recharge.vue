<template>
    <div class="nav-rights">
        <div class="nav-right">
            <div class="bill_box">
                <!-- <section class="trade-group merchant-top">
                    <i class="merchant-icon tips"></i>
                    <span class="tips-word">{{$t('uc.finance.recharge.recharge')}}</span>
                </section> -->
                <section>
                    <div class="table-inner action-box open">
                        <!-- <i class="angle" style="right: 71px;"></i> -->
                        <div class="action-inner">
                            <div class="inner-left">
                                <p class="describe">{{$t('uc.finance.recharge.symbol')}}</p>
                                <Select v-model="coinType" style="width:100px;margin-top: 23px;" @on-change="changeCoin">
                                    <Option v-for="item in coinList" :value="item.coin.unit" :key="item.coin.unit">{{ item.coin.unit }}</Option>
                                </Select>
                            </div>
                            <div class="inner-box deposit-address">
                                <p class="describe">{{$t('uc.finance.recharge.address')}}</p>
                                <div class="title">
                                    <Input
                                        v-model="qrcode.value"
                                        readonly
                                        style="width: 400px"
                                    ></Input>
                                    <Button
                                        v-if="buttonAdd"
                                        class="copy-add"
                                        @click="resetAddress"
                                        :loading="loadingButton1"
                                    >
                                        {{ !loadingButton1 ? $t("uc.finance.money.getaddress") : $t("uc.finance.money.getaddress")}}
                                        <!--获取充币地址-->
                                    </Button>
                                    <a v-clipboard:copy="qrcode.value" v-clipboard:success="onCopy" v-clipboard:error="onError" href="javascript:;" id="copyBtn" class="link-copy">
                                        {{$t('uc.finance.recharge.copy')}}
                                    </a>
                                    <a id="showQRcode" class="link-qrcode" href="javascript:;" @click="showEwm">
                                        {{$t('uc.finance.recharge.qrcode')}}
                                        <Modal v-model="isShowEwm">
                                            <!--<div v-show="isShowEwm" class="show-qrcode">-->
                                            <p slot="header" style="text-align: center;">充币地址二维码</p>
                                            <div class="show-qrcode" style="text-align: center;">
                                                <!--<qriously :value="qrcode.coinName+':'+qrcode.value" :size="qrcode.size" />-->
                                                <qriously :value="qrcode.value" :size="qrcode.size" />
                                            </div>
                                            <div slot="footer"></div>
                                        </Modal>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="action-content">
                            <div class="action-body">
                                <p class="acb-p1">{{$t('common.tip')}}</p>
                                <p class="acb-p2">• {{$t('uc.finance.recharge.msg1')}}<br>• {{$t('uc.finance.recharge.msg2')}}<br>• {{$t('uc.finance.recharge.msg3')}}<br>• {{$t('uc.finance.recharge.msg4')}}<br>• {{$t('uc.finance.recharge.msg5')}}</p>
                            </div>
                        </div>
                        <div class="action-content">
                            <div class="action-body">
                                <p class="acb-p1">{{$t('uc.finance.recharge.record')}}</p>
                                <div class="order-table">
                                    <Table stripe :columns="tableColumnsRecharge" :data="tableRecharge" :loading="loading"></Table>
                                    <div style="margin: 10px;overflow: hidden">
                                        <div style="float: right;">
                                            <Page :total="dataCount" :current="1" @on-change="changePage" class="recharge_btn"></Page>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</template>
<script>
import Vue from "vue";
import VueQriously from "vue-qriously";
Vue.use(VueQriously);

export default {
    components: {
        VueQriously
    },
    data() {
        return {
            buttonAdd: false,
            loadingButton1: false,
            isShowEwm: false,
            dataCount: 0,
            loading: true,
            qrcode: {
                value: "",
                size: 200,
                coinName: ""
            },
            coinType: "",
            coinList: [],
            tableRecharge: [],
            allTableRecharge: []
        };
    },
    methods: {
        changePage(index) {
            this.getList(index);
        },
        getCurrentCoinRecharge() {
            if (this.coinType != "") {
                var temp = [];
                this.tableRecharge = this.allTableRecharge.filter(ele=>ele.symbol == this.coinType);
            } else {
                this.tableRecharge = this.allTableRecharge;
            }
        },
        showEwm() {
            this.isShowEwm = !this.isShowEwm;
        },
        onCopy(e) {
            this.$Message.success(
                this.$t("uc.finance.recharge.copysuccess") + e.text
            );
        },
        onError(e) {
            this.$Message.error(this.$t("uc.finance.recharge.copysuccess"));
        },
        changeCoin(value) {
            const list = (this.coinList.length>0 && this.coinList.filter(ele=>ele.coin.unit == value)) || [];
            // this.resetAddress();
            // this.getMoney();
            if(list.length>0){
                this.qrcode.value = list[0].address || '';
                this.qrcode.coinName = list[0].coin.name.toLowerCase();
            }
            if (!this.qrcode.value) {
                this.buttonAdd = true;
            } else {
                this.buttonAdd = false;
            }
            // for (var i = 0; i < this.coinList.length; i++) {
            //     if (this.coinList[i].coin.unit == value) {

            //     }
            // }
            this.getCurrentCoinRecharge();
        },
        // 获取充币地址
        resetAddress() {
            if (!this.coinType) {
                this.$Message.error("请选择币种");
                return;
            }
            let params = {};
            params["unit"] = this.coinType;
            console.log(this.coinType);
            let that = this;
            this.loadingButton1 = true;
            this.$http.post(this.host + "/uc/asset/wallet/reset-address", params).then(response => {
                let resp = response.body;
                if (resp.code == 0) {
                    this.$Message.success(this.$t("uc.finance.money.resetsuccess"));
                    this.loadingButton1 = false;
                    setTimeout(function () {
                        that.getMoney();
                    }, 3000);
                } else {
                    this.$Message.error(resp.message);
                    this.loadingButton1 = false;
                }
            });
        },
        getMoney() {
            //获取
            this.$http.post(this.host + this.api.uc.wallet).then(response => {
                let resp = response.body;
                if (resp.code == 0) {
                   this.coinList =  (resp.data.length>0 && resp.data.filter(ele=>ele.coin.canRecharge ==1)) || [];
                   this.changeCoin(this.coinType);
                } else {
                    this.$Message.error(resp.message);
                }
            });
        },
        getList(pageNo) {
            //获取tableRecharge
            // let memberId = 0;
            !this.$store.getters.isLogin && this.$router.push("/login");
            // this.$store.getters.isLogin && (memberId = this.$store.getters.member.id);
            const params = { unit: "", pageNo, pageSize:10, type:"0" };
            this.$http.post(this.host + "/uc/asset/transaction", params).then(response => {
                let resp = response.body;
                if (resp.code == 0) {
                    if (resp.data) {
                        this.allTableRecharge = resp.data.content || [];
                        this.dataCount = resp.data.totalElements || 0;
                        this.getCurrentCoinRecharge();
                    }
                    this.loading = false;
                } else {
                    this.$Message.error(resp.message);
                }
            });
        },
        getMember() {
            let self = this;
            this.$http.post(this.host + "/uc/approve/security/setting").then(response => {
                var resp = response.body;
                if (resp.code == 0) {
                    if (resp.data.realName == null || resp.data.realName == "") {
                        // 判断是否实名认证，未认证跳转到实名认证页面；
                        this.$Message.success(this.$t("otc.publishad.submittip1"));
                        self.$router.push("/uc/safe");
                    } else if (resp.data.phoneVerified == 0) {
                        // 判断是否是手机号0，1，未认证跳转到实名认证页面；
                        this.$Message.success(this.$t("otc.publishad.submittip2"));
                        self.$router.push("/uc/safe");
                    } else if (resp.data.fundsVerified == 0) {
                        // 判断是否设置交易密码，未认证跳转到实名认证页面；
                        this.$Message.success(this.$t("otc.publishad.submittip3"));
                        self.$router.push("/uc/safe");
                    }
                } else {
                    this.$Message.error(resp.message);
                }
            });
        }
    },
    created() {
        this.coinType = this.$route.query.name || "";
        // this.getMember();
        this.getMoney();
        this.getList(1);
    },
    computed: {
        tableColumnsRecharge() {
            let columns = [];
            columns.push({
                title: this.$t("uc.finance.recharge.time"),
                align: "center",
                render: (h, param) => {
                    let str = param.row.createTime;
                    return h("div", {}, str);
                }
            });
            columns.push({
                title: this.$t("uc.finance.recharge.symbol"),
                align: "center",
                render: (h, param) => {
                    let str = param.row.symbol;
                    return h("div", {}, str);
                }
            });
            columns.push({
                title: this.$t("uc.finance.recharge.address"),
                align: "center",
                render: (h, param) => {
                    let str = param.row.address;
                    return h("div", {}, str);
                }
            });
            columns.push({
                title: this.$t("uc.finance.recharge.amount"),
                align: "center",
                render: (h, param) => {
                    let str = param.row.amount;
                    return h("div", {}, str);
                }
            });
            return columns;
        }
    }
};
</script>
<style scoped>
.table-inner {
    position: relative;
    text-align: left;
    border-radius: 3px;
}

.acb-p1 {
    font-size: 18px;
    font-weight: 600;
    line-height: 50px;
}

.acb-p2 {
    font-size: 14px;
    line-height: 24px;
}

.action-inner {
    width: 100%;
    display: table;
}

.action-inner .inner-box {
    display: table-cell;
    width: 100%;
}

.action-box .title .copy {
    user-select: text;
}

.action-box .title .copy-add {
    height: 32px;
    text-align: center;
    font-size: 12px;
    background: #3399ff;
    color: #fff;
}

.action-box .title a.link-copy {
    font-size: 14px;
    margin-left: 20px;
    color: #3399ff;
}

.hb-night a {
    text-decoration: none;
    color: #7a98f7;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
}

.action-box .title a.link-qrcode {
    margin-left: 20px;
    font-size: 14px;
    position: relative;
    color: #3399ff;
}

.hb-night a {
    text-decoration: none;
    color: #7a98f7;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
}

.action-box .subtitle {
    font-size: 12px;
    margin-top: 30px;
}

.action-content {
    width: 100%;
    margin-top: 30px;
    /* overflow: hidden; */
    display: table;
}

.action-box .title {
    margin-top: 20px;
    font-size: 20px;
    user-select: none;
}

.action-box .title .show-qrcode {
    position: absolute;
    top: -100px;
    left: 40px;
    padding: 10px;
}

.action-inner .inner-box.deposit-address {
    width: 80%;
}

p.describe {
    font-size: 16px;
    font-weight: 600;
}
.merchant-icon {
    display: inline-block;
    margin-left: 4px;
    background-size: 100% 100%;
}

.merchant-icon.tips {
    width: 4px;
    height: 22px;
    margin-right: 10px;
    background: #3399ff;
}

.bill_box {
    width: 100%;
    height: auto;
    /* overflow: hidden; */
}

.nav-right {
    height: auto;
    overflow: hidden;
    padding: 0 15px;
}

.order_box {
    width: 100%;
    background: #fff;
    height: 56px;
    line-height: 56px;
    margin-bottom: 20px;
    border-bottom: 2px solid #ccf2ff;
    position: relative;
    text-align: left;
}

.order_box a {
    color: #8994a3;
    font-size: 16px;
    padding: 0 30px;
    cursor: pointer;
    text-decoration: none;
    text-align: center;
    line-height: 54px;
    display: inline-block;
}

.order_box .search {
    position: absolute;
    width: 300px;
    height: 32px;
    top: 12px;
    right: 0;
    display: flex;
    /* border: #c5cdd7 solid 1px; */
}
#recharge_btn .ivu-page li.ivu-page-item-active {
    background-color: #3399ff !important;
    border-color: #3399ff !important;
}
#recharge_btn li.ivu-page-item-active:hover {
    color: #3399ff !important;
}
.ivu-page-item-active {
    background-color: #3399ff;
    border-color: #3399ff;
}
.ivu-page-item:hover {
    color: #3399ff;
}
.recharge_btn .ivu-page-item-active {
    background-color: red !important;
}
</style>
