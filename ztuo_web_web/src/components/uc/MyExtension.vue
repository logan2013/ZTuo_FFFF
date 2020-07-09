<template>
    <div class="nav-rights">
        <div class="nav-right col-xs-12 col-md-10 padding-right-clear">
            <div class="sharelink">
                <p class="c1">{{$t('recommendPage._commissionRecommended')}}</p>
                <p class="c2">{{$t('recommendPage._recommendMoney')}}</p>
                <div class="copyAndshare">
                    <div class="leftwrapper">
                        <div>
                            <span class="abstract">{{$t('recommendPage._recommendCode')}}</span>
                            <span class="code">{{qrcode.code}}</span>
                            <a
                                v-clipboard:copy="qrcode.code"
                                v-clipboard:success="onCopy"
                                v-clipboard:error="onError"
                                href="javascript:;"
                                class="link-copy"
                            >
                                <img src="../../assets/images/copycode.png" alt="">
                            </a>
                        </div>
                        <div>
                            <span class="abstract">{{$t('recommendPage._recommendLink')}}</span>
                            <span class="code">{{qrcode.value}}</span>
                            <a
                                v-clipboard:copy="qrcode.value"
                                v-clipboard:success="onCopy"
                                v-clipboard:error="onError"
                                href="javascript:;"
                                class="link-copy"
                            >
                                <img src="../../assets/images/copycode.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="rightwrapper">
                        <!-- <div @click="share">分享到QQ好友</div> -->
                    </div>
                </div>
            </div>
            <div class="bill_box rightarea padding-right-clear record account-box">
                <ButtonGroup>
                    <Button
                        v-for="(list,index) in buttonLists"
                        :key="list.text"
                        class="btStyle"
                        :class="{active:changeActive == index}"
                        @click="actives(index)"
                    >
                        {{list.text}}
                    </Button>
                </ButtonGroup>
                <div
                     class="message"
                     v-if="this.changeActive==0"
                >
                    <Table
                        stripe
                        :columns="tablePromoteFriends"
                        :data="dataPromoteFriends.content||[]"
                        :loading="loading"
                        :disabled-hover="true"
                    ></Table>
                    <div class="page-wrap">
                        <!-- <span>{{dataPromoteFriends.totalElements}}</span> -->
                        <Page
                            :current="currentPage"
                            v-show="dataPromoteFriends.totalElements > 10"
                            :total="parseInt(dataPromoteFriends.totalElements)"
                            @on-change="promoteFriendsPageChange"
                        ></Page>
                    </div>
                </div>
                <div
                     class="message"
                     v-else-if="this.changeActive==1"
                >
                    <Table
                        stripe
                        :columns="tablePromoteMoney"
                        :data="dataPromoteMoney||[]"
                        :loading="loading"
                        :disabled-hover="true"
                    ></Table>
                    <div class="page-wrap">
                        <!-- <span>{{dataPromoteMoney.totalElements}}</span> -->
                        <Page
                            :current="currentPage"
                            v-show="dataPromoteFriends.totalElements > 10"
                            :total="parseInt(dataPromoteMoney.totalElements)"
                            @on-change="promoteMoneyPageChange"
                        ></Page>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
const getParamFun = (obj) => (pageNum) => Object.assign(obj, pageNum);
const getParams = getParamFun({ pageSize: 10, type: "", createStartTime: "", createEndTime: '' });
// 积分类型 PROMOTION_GIVING  LEGAL_RECHARGE_GIVING  COIN_RECHARGE_GIVING("")
const map = new Map([[0,'推广'],[1,'法币充值赠送'],[2,'币币充值赠送']]);
const mapEn = new Map([[0,'recommend'],[1,'Presentation of French Currency'],[2,'Currency recharge gift']]);
export default {
    components: {},
    data() {
        const m = this.$store.getters.lang == 'English' ?mapEn:map;
        return {
            buttonLists: [
                {
                    text: this.$t("uc.extension.title2")
                },
                {
                    text: this.$t("uc.extension.title3")
                }
            ],
            currentCommission: "0.00",
            commissionPaying: "6%",
            changeActive: 0,
            qrcode: {
                value: "",
                size: 200,
                code: ""
            },
            loading: true,
            tablePromoteFriends: [
                {
                    title: this.$t("uc.extension.username"),
                    key: "username",
                    align: "center"
                },
                {
                    title: this.$t("uc.extension.createdtime"),
                    key: "createTime",
                    align: "center"
                },
                {
                    title: this.$t("uc.extension.userlevel"),
                    key: "level",
                    align: "center",
                    render: function (h, params) {
                        return h("span", "V" + (parseInt(params.row.level) + 1))
                    }
                }
            ],
            dataPromoteFriends: {},
            tablePromoteMoney: [
                {
                    title: this.$t("uc.extension.type"),
                    render:(h,params)=>{

                        return h("div",{},m.get(params.row.type))
                    }
                },
                {
                    title: this.$t("uc.extension.amount"),
                    key: "amount",
                    align: "center"
                },
                {
                    title: this.$t("uc.extension.amounttime"),
                    key: "createTime",
                    align: "center"
                }
            ],
            dataPromoteMoney: {},
            pageSize: 10,
            currentPage: 1
        };
    },
    methods: {
        share() {
        },
        getList() {
            this.loading = false;
        },
        actives(index) {
            this.currentPage = 1;
            this.changeActive = index;
        },
        qrcodeM() {
            let promotionCode = this.user.promotionCode;
            this.qrcode.value = this.host + "/#/register?agent=" + promotionCode;
            this.qrcode.code = promotionCode;
        },
        onCopy(e) {
            this.$Message.success(this.$t("uc.extension.copy_msg1") + e.text);
        },
        onError(e) {
            this.$Message.error(this.$t("uc.extension.copy_msg2"));
        },
        getPromotionList(pageNo = 1, pageSize = 10) {
            this.$http
                .post(this.host + "/uc/promotion/record", { pageNo, pageSize })
                .then(response => {
                    var resp = response.body;
                    if (resp.code == 0) {
                        this.dataPromoteFriends = resp.data;
                    } else {
                        this.$Message.error(resp.message);
                    }
                });
        },
        promoteFriendsPageChange(data) {
            this.currentPage = data;
            this.getPromotionList(data, this.pageSize);
        },
        promoteMoneyPageChange(data) {
            this.currentPage = data;
            this.getPromotionMoney(data, this.pageSize);
        },
        getPromotionMoney(pageNum = 1) {
            const params = getParams({pageNum});
            this.$http.post(this.host + "/uc/integration/record/page_query",params)
                .then(response => {
                    var resp = response.body;
                    if (resp.code == 0) {
                        this.dataPromoteMoney = resp.data;
                    } else {
                        // this.$Message.error(resp.message);
                    }
                });
        },
        updateLangData() {
            this.buttonLists = [
                {
                    text: this.$t("uc.extension.title2")
                },
                {
                    text: this.$t("uc.extension.title3")
                }
            ];
            this.tablePromoteFriends[0].title = this.$t("uc.extension.username");
            this.tablePromoteFriends[1].title = this.$t("uc.extension.createdtime");
            this.tablePromoteFriends[2].title = this.$t("uc.extension.userlevel");
            this.tablePromoteMoney[0].title = this.$t("uc.extension.symbol");
            this.tablePromoteMoney[1].title = this.$t("uc.extension.amount");
            this.tablePromoteMoney[2].title = this.$t("uc.extension.amounttime");
            this.tablePromoteMoney[3].title = this.$t("uc.extension.remark");
        }
    },
    created() {
        this.actives(this.changeActive);
        this.qrcodeM();
        this.getList();
        this.getPromotionList();
        this.getPromotionMoney();
    },
    computed: {
        user: function () {
            return JSON.parse(localStorage.getItem("MEMBER"));
        },
        lang: function () {
            return this.$store.state.lang;
        }
    },
    watch: {
        lang: function () {
            this.updateLangData();
        }
    }
};
</script>
<style>
.page-wrap {
    text-align: right;
    margin-top: 30px;
}
.page-wrap > span {
    vertical-align: middle;
    font-size: 12px;
    margin-right: 10px;
}
.page-wrap .ivu-page {
    display: inline-block;
    vertical-align: middle;
}
</style>

<style scoped lang="scss">
.nav-right {
    height: auto;
    overflow: hidden;
    padding: 0 15px;
    .sharelink {
        width: 100%;
        p {
            color: #333;
        }
        .c1 {
            font-size: 20px;
        }
        .c2 {
            font-size: 12px;
            margin-bottom: 15px;
        }
        .copyAndshare {
            background: #fafafa;
            display: flex;
            padding: 20px;
            .leftwrapper {
                div {
                    height: 30px;
                    line-height: 30px;
                    color: 12px;
                    .code {
                        color: #3399ff;
                    }
                    .link-copy {
                        margin-left: 10px;
                    }
                }
            }
        }
    }
}
.nav-right .btStyle {
    width: 174px;
    height: 42px;
    font-size: 1.125em;
    color: #a2a0a1;
    background: #fff;
    margin: 20px 0 0;
}
.nav-right .active {
    color: #3399ff;
}
.rightarea .message {
    margin: 0 auto;
    font-size: 16px;
    color: #636363;
    padding-bottom: 140px;
}
.nav-right .message .tips {
    text-align: left;
    padding-bottom: 50px;
    border-bottom: 1px dashed #e9e9e9;
}
.rightarea {
    background: #fff;
}

.rightarea .rightarea-top {
    line-height: 75px;
    border-bottom: #f1f1f1 solid 1px;
}

.rightarea .rightarea-con {
    padding-top: 30px;
    padding-bottom: 125px;
}
.message .title .copy {
    user-select: text;
}
.message .title {
    float: left;
    margin: 46px 0 0px 0;
}
.message .inner-box {
    display: table-cell;
    width: 100%;
}
.message a.link-copy {
    margin-left: 10px;
}
.message .describe {
    float: left;
    margin: 52px 36px 0 0;
}
.message .commission {
    padding-bottom: 50px;
    border-bottom: 1px dashed #e9e9e9;
}
.message .commission span {
    color: #ff3533;
}
.message .commission strong {
    font-size: 26px;
}
.ivu-btn-primary {
    background-color: #3399ff;
    border-color: #3399ff;
}
</style>
<style lang="scss">
.nav-right {
    .message {
        .ivu-table-wrapper {
            border-color: #fff;
            -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
            -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
            box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
            // border-top: 4px solid #3399ff;
            margin-top: 2px;
            .ivu-table {
                .ivu-table-header th {
                    background: none;
                }
                .ivu-table-body td {
                    background: #fff;
                }
            }
        }
        .page-wrap {
            .ivu-page {
                .ivu-page-item.ivu-page-item-active {
                    background-color: #3399ff;
                    border-color: #3399ff;
                    color: #fff;
                    &:hover {
                        a {
                            color: #fff;
                        }
                    }
                }
                .ivu-page-item {
                    &:hover {
                        border: 1px solid #3399ff;
                        a {
                            color: #3399ff;
                        }
                    }
                }
                .ivu-page-prev,
                .ivu-page-next {
                    &:hover {
                        border: 1px solid #3399ff;
                        a {
                            color: #3399ff;
                        }
                    }
                }
            }
        }
    }
}
button.btStyle.ivu-btn {
    -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    border: none;
    &:hover {
        color: #3399ff;
        border: none;
    }
}
button.btStyle.ivu-btn.active {
    &:hover {
        border: none;
        color: #3399ff;
    }
    &:focus {
        -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    }
}
</style>

