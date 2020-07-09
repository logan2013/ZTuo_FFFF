<template>
    <div class="shaow" id="lever">
        <div class="hidden-assets">
            <span>{{$t('myAccount._display')}}:</span>
            <i-switch v-model="googleSwitch" @on-change="changeGoogleSwitch">
                <span slot="open"></span>
                <span slot="close"></span>
            </i-switch>
        </div>
        <div class="order-table">
            <Table stripe :columns="tableColumnsMoney" :data="tableMoney" :loading="loading" :disabled-hover="true"></Table>
        </div>
         <!-- <Modal v-model="modal" title="转出" :footer-hide="true" :closable="false" :mask-closable="false">
            <Form ref="formInline" :model="formInline" inline>
                <FormItem prop="coinUnit">
                    <Cascader :data="data" v-model="value" @on-change="getValue"></Cascader>
                </FormItem>
                <FormItem>
                    <Input value="到币币账户" disabled>
                    </Input>
                </FormItem>
                <FormItem prop="amount">
                    <Input v-model="num" placeholder="划转个数" :number="true">
                    <span slot="append">
                        <span>{{unit}}</span>
                        <span style="color:#2d8cf0;" @click="turnAll">全部</span>
                    </span>
                    </Input>
                </FormItem>
                <FormItem>
                    <div :style="styleObject">可转&nbsp;&nbsp;{{allNum}}&nbsp;&nbsp;{{unit}}</div>
                </FormItem>
                <FormItem>
                    <Button type="default" @click="cancel">取消</Button>
                    <Button type="primary" @click="ok">确认</Button>
                </FormItem>
            </Form>
        </Modal> -->
        <transfermodal :modal="modal" @closetransferModal="closeModal" :getmoney="getMoney"></transfermodal>
    </div>
</template>
<script>
const Right = x => ({
    map: f => Right(f(x)),
    fold: (f, g) => g(x)
});
const Left = x => ({
    map: f => Left(x),
    fold: (f, g) => f(x)
});
const isCheck = (arr) => {
    return arr.length == 2 ? Right(arr) : Left(arr);
}
import transfermodal from "../transfer/Index";
export default {
    // props: ["modal"],
    components:{transfermodal},
    data() {
        return {
            styleObject: { "display": "none" },
            data: [],
            allNum: 0,
            modal: false,
            num: 0,
            unit: '',
            value: [],
            formInline: {

            },
            tableMoney: [],
            loading: true,
            googleSwitch:false,
            hiddenAccountData:[],
            showAccountData:[]
        }
    },
    created() {
        this.getMoney();
    },
    methods: {
        changeGoogleSwitch(){
            this.googleSwitch?this.tableMoney=this.hiddenAccountData:this.tableMoney=this.showAccountData;
        },
        closeModal(){
            this.modal = false;
        },
        turnAll() {
            const result = isCheck(this.value).map(value => value[1]).fold(x => "err", x => x);
            if (result == "err") {
                return;
            }
            this.num = this.allNum;
        },
        cancel() {
            this.modal = false;
            this.data = this.value = [];
            this.styleObject = { "display": "none" };
            this.num = this.allNum = 0;
            this.unit = "";
        },
        ok() {
            const result = isCheck(this.value).map(value => value[1]).fold(x => "err", x => x);
            if (result == "err") {
                this.$Message.error("请输入你要转出的币种");
                return;
            }
            if (this.num == 0) {
                this.$Message.error("请输入你要转出的个数");
                return;
            }
            const params = {
                coinUnit: this.value[1],
                amount: this.num,
                leverCoinSymbol: this.value[0]
            };
            this.$http.post(this.host + "/margin-trade/lever_wallet/turn_out", params).then(res => {
                const data = res.body;
                if (data.code == 0) {
                    this.getMoney();
                    this.modal = false;
                } else {
                    this.$Message.error(data.message);
                }
            }).catch(err => this.$Message.error(err.message));
        },
        getValue(value, selectedData) {
            const result = isCheck(value).map(value => value[1]).fold(x => "err", x => x);
            if (result != "err") {
                this.unit = result;//选中的币种
                this.allNum = selectedData[1].allNum;//选中币种最多可转的树木
                this.styleObject = {
                    "display": "block"
                }
            } else {
                this.styleObject = {
                    "display": "none"
                };
                this.allNum = 0;
                this.unit = '';
            }
        },
        getMoney() {
            console.log("该接口为杠杆交易的接口暂不支持！！！");
        }
    },
    computed: {
        tableColumnsMoney() {
            let self = this;
            let columns = [];
            columns.push({
                title: this.$t("uc.finance.money.cointype"),
                key: "symbol",
                width: 100,
                align: "center",
            });
            columns.push({
                title: this.$t("myAccount._available"),
                align: "center",
                render: (h, params) => {
                    const baseBalance = this.toFloor(params.row.leverWalletList[0].balance) + " " + params.row.leverWalletList[0].coin.name;
                    const coinBalance = this.toFloor(params.row.leverWalletList[1].balance) + " " + params.row.leverWalletList[1].coin.name;
                    const baseBalanceElement = h(
                        "div",
                        {
                            attrs: {
                                title: baseBalance
                            }
                        },
                        baseBalance
                    );
                    const coinBalanceElement = h("div",
                        {
                            attrs: {
                                title: coinBalance
                            }
                        },
                        coinBalance
                    )
                    return h("div", [baseBalanceElement, coinBalanceElement])
                }
            });
            columns.push({
                title: this.$t("uc.finance.money.frozen"),
                align: "center",
                render: (h, params) => {
                    const baseBalance = this.toFloor(params.row.leverWalletList[0].frozenBalance) + " " + params.row.leverWalletList[0].coin.name;
                    const coinBalance = this.toFloor(params.row.leverWalletList[1].frozenBalance) + " " + params.row.leverWalletList[1].coin.name;
                    const baseBalanceElement = h(
                        "div",
                        {
                            attrs: {
                                title: baseBalance
                            }
                        },
                        baseBalance
                    );
                    const coinBalanceElement = h("div",
                        {
                            attrs: {
                                title: coinBalance
                            }
                        },
                        coinBalance
                    )
                    return h("div", [baseBalanceElement, coinBalanceElement])
                }
            });
            columns.push({
                title:this.$t("myAccount._loanAvailable"),
                align: "center",
                render: (h, params) => {
                    const baseBalance = this.toFloor(params.row.baseLoanCount) + " " + params.row.leverWalletList[0].coin.name;
                    const coinBalance = this.toFloor(params.row.coinLoanCount) + " " + params.row.leverWalletList[1].coin.name;
                    const baseBalanceElement = h(
                        "div",
                        {
                            attrs: {
                                title: baseBalance
                            }
                        },
                        baseBalance
                    );
                    const coinBalanceElement = h("div",
                        {
                            attrs: {
                                title: coinBalance
                            }
                        },
                        coinBalance
                    )
                    return h("div", [baseBalanceElement, coinBalanceElement])
                }
            });
            columns.push({
                title: this.$t("myAccount._hazardRate"),
                align: "center",
                render: (h, params) => {
                    const dangerousRate = this.toFloor(params.row.riskRate) + "%";
                    return h("div", {}, dangerousRate)
                }
            });
            columns.push({
                title: this.$t("myAccount._BlowingUpPrice"),
                align: "center",
                render: (h, params) => {
                    const burstPrice = params.row.explosionPrice >= 0 ? params.row.explosionPrice : "--";
                    return h("div", {}, burstPrice)
                }
            });
            columns.push({
                title: this.$t("uc.finance.money.operate"),
                align: "center",
                width:200,
                render: (h, params) => {
                    const data = params.row;
                    const btn = h('Button', {
                        props: {
                            type: "info",

                        },
                        on: {
                            click: () => {
                                this.modal = true;
                            }
                        },
                        style: {
                            marginRight: "8px",
                        }
                    }, self.$t("myAccount._rollout"));
                    const browAndReturn = h('Button', {
                        props: {
                            type: "primary",
                        },
                        on: {
                            click: () => {
                                this.$router.push({
                                    name:"lever",
                                    params:{
                                        coin:encodeURIComponent(params.row.symbol)
                                    }
                                })
                            }
                        },
                        style: {
                            marginRight: "8px",
                        }
                    }, this.$t("myAccount._loanReturn"));
                    return h("p", [btn, browAndReturn]);
                }
            });
            return columns;
        }
    }
}
</script>

<style lang="scss" scoped>

</style>
