<template>
    <div class="shaow">
        <div class="hidden-assets">
            <span>隐藏资产为0的币种</span>
            <i-switch v-model="googleSwitch" @on-change="changeGoogleSwitch">
                <span slot="open"></span>
                <span slot="close"></span>
            </i-switch>
        </div>
        <div class="order-table">
            <Table stripe :columns="tableColumnsMoney" :data="tableMoney" :loading="loading" :disabled-hover="true"></Table>
        </div>
        <transfermodal :modal="modal" @closetransferModal="closeModal" :getmoney="getMoney"></transfermodal>
    </div>
</template>
<script>
import transfermodal from "../transfer/Index"
export default {
    // props: ["modal"],
    components:{transfermodal},
    inject:['reload'],
    data() {
        return {
            modal:false,
            tableMoney: [],
            loading: true,
            googleSwitch:false,
            hiddenAccountData:[],
            showAccountData:[]
        }
    },
    created() {
        this.modal = false;
        this.getMoney();
    },
    methods: {
        closeModal(){
            this.modal = false;
        },
        changeGoogleSwitch(){
            this.googleSwitch?this.tableMoney=this.hiddenAccountData:this.tableMoney=this.showAccountData;
        },
        getMoney() {
            this.$http.post(this.host + "/uc/asset/wallet").then(response => {
                var resp = response.body;
                if (resp.code == 0) {
                    this.tableMoney = resp.data;
                    this.showAccountData=this.tableMoney
                    // console.log(this.tableMoney,this.showAccountData);
                    for (let i = 0; i < this.tableMoney.length; i++) {
                        this.tableMoney[i]["coinType"] = this.tableMoney[i].coin.unit;
                        // console.log(this.tableMoney[i].balance,this.tableMoney[i].frozenBalance,this.tableMoney[i].releaseBalance);
                        if(this.tableMoney[i].balance != "0" || this.tableMoney[i].frozenBalance != "0" || this.tableMoney[i].releaseBalance != "0"){
                            this.hiddenAccountData.push(this.tableMoney[i]);
                            // console.log(this.hiddenAccountData);
                        }
                    }
                    this.loading = false;
                } else {
                    this.$Message.error(this.loginmsg);
                }
            });
        },
        resetAddress(unit) {
            let params = {};
            params["unit"] = unit;
            console.log(unit);
            let that = this;
            this.$http.post(this.host + "/uc/asset/wallet/reset-address", params).then(response => {
                var resp = response.body;
                if (resp.code == 0) {
                    this.$Message.success(this.$t("uc.finance.money.resetsuccess"));
                    // this.getMoney();
                    setTimeout(function () {
                        that.getMoney();
                        // that.reload();
                        that.$router.push({path: '/uc/recharge', query: {name: unit }});
                        window.location.reload();
                    }, 3000);
                } else {
                    this.$Message.error(resp.message);
                }
            });
        }
    },
    computed: {
        tableColumnsMoney() {
            let self = this;
            let columns = [];
            columns.push({
                title: this.$t("uc.finance.money.cointype"),
                key: "coinType",
                width: 100,
                align: "center"
            });
            columns.push({
                title: this.$t("uc.finance.money.balance"),
                key: "balance",
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.balance
                            }
                        },
                        self.toFloor(params.row.balance || "0")
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.money.frozen"),
                key: "frozenBalance",
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.frozenBalance
                            }
                        },
                        self.toFloor(params.row.frozenBalance || "0")
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.money.needreleased"),
                align: "center",
                render(h, params) {
                    return h(
                        "span",
                        {
                            attrs: {
                                title: params.row.toReleased
                            }
                        },
                        self.toFloor(params.row.toReleased || "0")
                    );
                }
            });
            columns.push({
                title: this.$t("uc.finance.money.operate"),
                key: "price1",
                width: 400,
                align: "center",
                render: (h, params)=> {
                    var actions = [];
                    if (params.row.coin.canRecharge == 1) {
                        if (params.row.address != null && params.row.address != "") {
                            // 充币
                            actions.push(
                                h(
                                    "Button",
                                    {
                                        // 充币;
                                        props: {
                                            type: "primary",
                                            size: "small"
                                        },
                                        on: {
                                            click: function () {
                                                self.$router.push(
                                                    "/uc/recharge?name=" + params.row.coin.unit
                                                );
                                            }
                                        },
                                        style: {
                                            marginRight: "8px"
                                        }
                                    },
                                    self.$t("uc.finance.money.charge")
                                )
                            );
                        } else {
                            //   获取地址按钮;
                            actions.push(
                                h("Button",
                                    {
                                        props: { type: "info", size: "small" },
                                        on: {
                                            click: function () {
                                                self.resetAddress(params.row.coin.unit);
                                                /*self.$router.push(
                                                    "/uc/recharge?name=" + params.row.coin.unit
                                                );*/
                                            }
                                        },
                                        style: {
                                            marginRight: "8px"
                                        }
                                    },
                                    self.$t("uc.finance.money.getaddress")
                                )
                            );
                        }
                    }
                    if (params.row.coin.canWithdraw == 1) {
                        // 提币;
                        actions.push(
                            h("Button", {
                                props: {
                                    type: "error",
                                    size: "small"
                                },
                                on: {
                                    click: function () {
                                        self.$router.push(
                                            "/uc/withdraw?name=" + params.row.coin.unit
                                        );
                                    }
                                },
                                style: {
                                    marginRight: "8px"
                                }
                            },
                                self.$t("uc.finance.money.pickup")
                            )
                        );
                    }
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
                    actions.push(btn);
                    return h("p", actions);
                }
            });
            return columns;
        }
    }
}
</script>

<style lang="scss" scoped>
</style>
