<template>
    <div class="page-view">
        <!--头部-->
        <header>
            <div class="page-content" :style="{
                  padding: $route.path==='/'? topPadding : '0 5%',
                  backgroundColor: $route.path==='/'? topBackgroundColor : '$mainNightBgColor'
                }">
                <div class="time_download">
                    <div class="netLogo">
                        <router-link to="/">
                            <!-- <img src="./assets/images/logo.png" alt=""> -->
                        </router-link>
                    </div>
                    <div class="nav" :class="locale == 'en' ? 'en' : ''">
                        <router-link to="/">{{$t("header.index")}}</router-link>
                        <router-link to="/exchange">{{$t("header.exchange")}}</router-link>
                        <router-link to="/otc/trade/usdt">{{$t("header.otc")}}</router-link>
                        <router-link to="/helpList">{{$t('header.help')}}</router-link>
                        <router-link to="/notice">{{$t("header.service")}}</router-link>

                    </div>
                    <div class="nav-header">
                        <!--中英文切换-->
                        <div class="changelanguage">
                            <Dropdown @on-click="changelanguage">
                                <a href="javascript:void(0)" style="font-size:14px;color:#fff;">
                                    {{languageValue}}
                                    <Icon type="arrow-down-b"></Icon>
                                </a>
                                <DropdownMenu slot="list" id="change_language_theme">
                                    <DropdownItem v-if="languageValue=='简体中文'" name="en">English</DropdownItem>
                                    <DropdownItem v-else name="cn">简体中文</DropdownItem>
                                </DropdownMenu>
                            </Dropdown>
                        </div>
                        <!-- 登录 -->
                        <!--:style="isLogin?'width:12%':'width:6%'"-->
                        <div class="isLoginWrapper">
                            <div class="login_register isLogin" v-if="isLogin">
                                <div class="mymsg">
                                    <router-link to="/uc/safe">{{$t("uc.title")}}</router-link>
                                </div>
                                <Dropdown @on-click="goBi">
                                    <a href="javascript:void(0)">
                                        <span class="header-img">{{$t("uc.menuTitle.moneyManagement")}}</span>
                                        <Icon type="md-arrow-dropdown" size="16" />
                                    </a>
                                    <DropdownMenu slot="list">
                                        <DropdownItem name="recharge"><span>{{$t("exchange.recharge")}}</span></DropdownItem>
                                        <DropdownItem name="pickup"><span>{{$t("uc.finance.money.pickup")}}</span></DropdownItem>

                                    </DropdownMenu>
                                </Dropdown>
                                <Dropdown>
                                    <a href="javascript:void(0)">
                                        <!-- <Icon type="person"></Icon> -->
                                        <Icon type="md-person" class="header-icon" size="20" />
                                        <span class="header-img">{{strpo(member.username)}}</span>
                                        <Icon type="md-arrow-dropdown" size="16" />
                                    </a>
                                    <DropdownMenu slot="list">
                                        <div @click="logout">
                                            <DropdownItem>
                                                <img src="./assets/images/logout1.png"> {{$t("common.logout")}}
                                            </DropdownItem>
                                        </div>
                                    </DropdownMenu>
                                </Dropdown>

                            </div>
                            <!-- 未登录 -->
                            <div class="login_register" v-else>
                                <router-link to="/login" id="login">{{$t("common.login")}}</router-link>
                                <router-link to="/register" id="register">{{$t("common.register")}}</router-link>
                            </div>
                        </div>
                        <!-- app二维码 -->
                        <div class="rightwrapper">
                            <poptip placement="bottom" width="270" class="appdownload">
                                <a href="javascript:;" style="font-size:14px;">{{$t("header.appdownlaod")}}
                                </a>
                                <div class="api" slot="content">
                                    <div class="ios">
                                        <img src="../src/assets/images/app_ios.png" alt="">
                                        <div class="tips">
                                            <img src="../src/assets/images/ios.png" alt="">
                                            <span>IOS</span>
                                        </div>
                                    </div>
                                    <div class="andrio">
                                        <div style="margin-top: 4px" id="qrcode-and"></div>
                                        <div class="tips" style="margin-top: 7px">
                                            <img src="../src/assets/images/andraio.png" alt="">
                                            <span>Android</span>
                                        </div>
                                    </div>
                                </div>
                            </poptip>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--内容-->
        <router-view v-if="isRouterAlive"></router-view>
        <!--底部-->
        <footer>
            <div class="footer">
                <div class="footer_content">
                    <div class="footer-main">
                        <div class="footer_left">
                            <!-- <img src="./assets/images/logo.png" style="margin:0"></img> -->
                            <div>
                                <img src="./assets/images/in.png" alt="">
                                <img src="./assets/images/twitter.png" alt="">
                                <img src="./assets/images/telegram.png" alt="">
                                <img src="./assets/images/facebook.png" alt="">
                            </div>
                        </div>
                        <div class="footer_right">
                            <!--下载支持-->
                            <ul class="footer_info">
                                <li class="footer_title">
                                    <span>{{$t("footer.download")}}</span>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.apiDoc")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.appDownload")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.otherDownload")}}</router-link>
                                </li>

                            </ul>
                            <!--客户服务-->
                            <ul class="footer_info">
                                <li class="footer_title">
                                    <span>{{$t("footer.helpCenter")}}</span>
                                </li>
                                <li>
                                    <router-link to="/helplist?cate=0&cateTitle=使用教程">{{$t("footer.RecommendedCommission")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/helplist?cate=1&cateTitle=常见问题">{{$t("footer.question")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.serviceArgee")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.transactionCosts")}}</router-link>
                                </li>
                            </ul>
                            <!--投票上币-->
                            <ul class="footer_info">
                                <li class="footer_title">
                                    <span>{{$t("footer.voteBi")}}</span>
                                </li>
                                <li class="wechatclick">
                                    <router-link to="/">{{$t("footer.shallVote")}}</router-link>
                                    <!--                                <poptip width="200">-->
                                    <!--                                    <a href="javascript:;" class="wechat">客服邮箱</a>-->
                                    <!--                                    &lt;!&ndash; <div slot="content">-->
                                    <!--                                        <p style="color:#333;text-align:center;">service@bhuo.top</p>-->
                                    <!--                                    </div> &ndash;&gt;-->
                                    <!--                                </poptip>-->
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.coinApp")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.nodeCenter")}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t("footer.nodeListenning")}}</router-link>
                                </li>
                            </ul>
                            <!--其他-->
                            <ul class="footer_info">
                                <li class="footer_title">
                                    <span>{{$t('footer.other')}}</span>
                                </li>
                                <li>
                                    <router-link to="/">{{$t('footer.officeNotice')}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t('footer.marketPlan')}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t('footer.SubaccountManagement')}}</router-link>
                                </li>
                                <li>
                                    <router-link to="/">{{$t('footer.questionnaire')}}</router-link>
                                </li>

                            </ul>
                            <!--联系我们-->
                            <ul class="footer_info">
                                <li class="footer_title">
                                    <span>{{$t('footer.concatUs')}}</span>
                                </li>
                                <li>
                                    <a href="javascript:;">{{$t('footer.email')}}：service@coinmany.com</a>
                                </li>
                                <!-- <li>
                                    <span style="color: #8790a1;">企业邮箱：service@coinmany.com</span>
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <!-- <div class="footer-info">
                        风险提示：区块链资产（数字货币和数字权益）交易具有极高的风险（技术缺陷、暴涨暴跌、庄家操控、团队解散等）, XX网仅为区块链资产的爱好者提供一个自由的网上交换平台, 对资产的投资价值不承担任何审查、担保、赔偿的责任, 如果您不能接受, 请谨慎交易。
                    </div>-->
                </div>
                <div class="info">
                    <div class="footer-info">
                        <div class="info-title">{{$t('footer.friendLinks')}}:</div>
                        <div class="info-img">
                            <a href="javascript:;">
                                <img src="./assets/images/footer/1.png" alt="">
                            </a>
                            <a href="javascript:;">
                                <img src="./assets/images/footer/2.png" alt="">
                            </a>
                            <a href="http://www.jinse.com">
                                <img src="./assets/images/footer/3.png" alt="">
                            </a>
                            <a href="http://www.bishijie.com">
                                <img src="./assets/images/footer/4.png" alt="">
                            </a>
                            <a href="http://www.iterduo.com">
                                <img src="./assets/images/footer/5.png" alt="">
                            </a>
                            <a href="http://www.feixiaohao.com">
                                <img src="./assets/images/footer/6.png" alt="">
                            </a>
                            <a href="http://www.btc123.com">
                                <img src="./assets/images/footer/7.png" alt="">
                            </a>
                            <a href="http://www.jiedian.io">
                                <img src="./assets/images/footer/8.png" alt="">
                            </a>
                            <a href="http://ihuoqiu.com">
                                <img src="./assets/images/footer/9.png" alt="">
                            </a>
                            <a href="http://www.huoxing24.com">
                                <img src="./assets/images/footer/10.png" alt="">
                            </a>
                            <a href="http://www.zerohello.com">
                                <img src="./assets/images/footer/11.png" alt="">
                            </a>
                            <a href="http://www.xnqb.com">
                                <img src="./assets/images/footer/16.png" alt="">
                            </a>
                            <a href="http://www.block360.pro">
                                <img src="./assets/images/footer/12.png" alt="">
                            </a>
                            <a href="http://www.shenliancaijing.com">
                                <img src="./assets/images/footer/13.png" alt="">
                            </a>
                            <a href="http://huoxun.com">
                                <img src="./assets/images/footer/14.png" alt="">
                            </a>
                            <a href="http://www.chaingeworld.com">
                                <img src="./assets/images/footer/15.png" alt="">
                            </a>
                        </div>
                    </div>
                    © 2019 coinmany.com. All Rights Reserved
                </div>
            </div>
        </footer>
    </div>
</template>
<script>
import QRCode from 'qrcode2';
import Vue from "vue";
import { mapGetters, mapActions } from "vuex";
export default {
    name: "app",
    provide() {
        return {
            reload: this.reload
        }
    },
    data() {
        return {
            locale: '',
            isRouterAlive: true,
            // container_test:"container_test",
            pageView: "page-view",
            utc: null,
            time: null,
            content: " ",
            wechat: this.$t("footer.wechat"),
            topInfo: {
                name: "XX网",
                createTime: "2018-01-10 11:37:27"
            },
            styleTop: 30,
            topPadding: '0 5%',
            topBackgroundColor: 'rgba(28, 36, 53)'
        };
    },
    watch: {
        activeNav: function () {
            switch (this.activeNav) {
                case "nav-exchange":
                    break;
                default:
                    window.document.title = "XX网";
                    break;
            }
        },
        '$i18n.locale'(newVal) {
            this.locale = newVal;
        },
        $route(to, from) {
            if (to.path === "/") {
                this.pageView = "page-view";
                // this.container_test = "";
            } else {
                if (to.path.indexOf("exchange") > 0 && this.exchangeSkin == "night") {
                    this.pageView = "page-view";
                } else {
                    this.pageView = "page-view2";
                }
                // this.container_test = "container_test";
            }
        },
        exchangeSkin() {
            if (this.exchangeSkin === "day") {
                this.pageView = "page-view2";
            } else {
                this.pageView = "page-view";
            }
        }
    },
    computed: {
        activeNav: function () {
            return this.$store.state.activeNav;
        },
        isLogin: function () {
            return this.$store.getters.isLogin;
        },
        member: function () {
            return this.$store.getters.member;
        },
        languageValue: function () {
            var curlang = this.$store.getters.lang;
            if (curlang == "English") this.$i18n.locale = "en";
            return curlang;
        },
        lang() {
            return this.$store.state.lang;
        },
        exchangeSkin() {
            return this.$store.state.exchangeSkin;
        }
    },
    created: function () {
        this.initialize();
        if (this.$route.path === "/") {
            this.pageView = "page-view";
        } else {
            this.pageView = "page-view2";
        }
    },
    methods: {
        // header动画效果
        reload() {
            this.isRouterAlive = false
            this.$nextTick(function () {
                this.isRouterAlive = true
            })
        },
        goBi(name) {
            if (name == "recharge") {
                this.$router.push("/uc/recharge");
            }
            if (name == "pickup") {
                this.$router.push("/uc/withdraw");
            }
        },
        handleScroll() {
            let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
            if (scrollTop > 0) {
                this.styleTop = 0
                this.topPadding = '0 17%'
            } else {
                this.styleTop = 30
                this.topPadding = '0 5%'
                // this.topBackgroundColor = 'rgba(0,0,0,.5)'
            }
        },
        strpo(str) {
            if (str.length > 4) {
                str = str.slice(0, 4) + "···";
            } else {
                str = str;
            }
            return str;
        },
        initialize() {
            this.$store.commit("navigate", "nav-index");
            this.$store.commit("recoveryMember");
            this.$store.commit("initLang");
            // this.loadTopInfo();
            this.checkLogin();
        },
        loadTopInfo() {
            /*获取首页顶部公告*/
            let param = {};
            param["sysAdvertiseLocation"] = 2;
            this.$http
                .post(this.host + "/uc/ancillary/system/advertise", param)
                .then(response => {
                    var result = response.body;
                    if (result.code == 0 && result.data.length > 0) {
                        this.topInfo = result.data[0];
                    }
                });
        },
        logout() {
            this.$http.post(this.host + "/uc/loginout", {}).then(response => {
                var resp = response.body;
                if (resp.code == 0) {
                    this.$Message.success(resp.message);
                    this.$store.commit("setMember", null);
                    setTimeout(() => {
                        location.href = "/";
                    }, 1500);
                } else {
                    this.$Message.error(resp.message);
                }
            });
        },
        checkLogin() {
            this.$http.post(this.host + "/uc/check/login", {}).then(response => {
                var result = response.body;
                if (result.code == 0 && result.data == false) {
                    this.$store.commit("setMember", null);
                }
            });
        },
        changelanguage: function (name) {
            if (name == "en") {
                this.$store.commit("setlang", "English");
                this.$i18n.locale = "en";
            }
            if (name == "cn") {
                this.$store.commit("setlang", "简体中文");
                this.$i18n.locale = "zh";
            }
        }
    },
    mounted() {
        //二维码链接修改
        new QRCode(document.getElementById("qrcode-and"), {
            text: 'https://wangzhanzhaopian.oss-cn-shanghai.aliyuncs.com/app.apk',
            width: 100,
            height: 100,
            colorDark: "#000000",
            colorLight: "#ffffff",
        });
        window.addEventListener('scroll', this.handleScroll)
    },
    beforeDestroy() {
        window.removeEventListener('scroll', this.handleScroll)
    }
};
</script>
<style lang="scss" scoped>
%flex {
    align-items: center;
}
.page-view {
    header {
        width: 100%;
        height: 60px;
        line-height: 60px;
        position: fixed;
        z-index: 999;
        background-color: #1c2435;
        transition: all 0.5s;
        .page-content {
            transition: all 0.5s;
            .time_download {
                align-items: center;
                overflow: hidden;
                min-width: 1050px;
                .netLogo {
                    width: 145px;
                    float: left;
                    img {
                        vertical-align: middle;
                    }
                }
            }
            .nav.en a {
                margin-right: 20px;
            }
            .nav {
                float: left;
                margin-left: 30px;
                a {
                    font-size: 14px;
                    color: #fff;
                    display: inline-block;
                    margin-right: 40px;
                    text-align: center;
                    // &:nth-child(5) {
                    //     padding-right: 19px;
                    // }
                }
                // a.router-link-exact-active.router-link-active {
                //     color: #2d8cf0;
                // }
                // 5.15修改
                a.router-link-active {
                    color: #2d8cf0;
                }
            }
            .nav-header {
                float: right;
                .isLoginWrapper {
                    float: right;
                    .login_register {
                        display: flex;
                        a {
                            color: #fff;
                            margin: 0 20px 0 10px;
                            .header-icon {
                                margin-left: 15px;
                            }
                            .header-img {
                                margin-left: 10px;
                            }
                        }
                    }
                }
                .rightwrapper {
                    float: right;
                    .appdownload {
                        float: left;
                        padding-right: 30px;
                        .ivu-poptip-rel {
                            a {
                                color: #fff;
                            }
                            i.ivu-icon.ivu-icon-arrow-down-b {
                                margin-left: 5px;
                            }
                        }
                    }
                    .ios,
                    .andrio {
                        float: left;
                        text-align: center;
                        img {
                            width: 106px;
                            height: 106px;
                            margin: 0 auto;
                        }
                        .tips {
                            height: 30px;
                            img {
                                width: 14px;
                                height: 14px;
                                margin-top: 5px;
                            }
                            span {
                                font-size: 14px;
                            }
                        }
                    }
                    .andrio {
                        float: right;
                    }
                    .ivu-dropdown-rel a {
                        color: #fff;
                    }
                    .ivu-select-dropdown {
                        z-index: 901;
                        #change_language_theme {
                            li {
                                background: #fff;
                                color: #333;
                            }
                        }
                    }
                }
                .changelanguage {
                    float: right;
                    /*width: 7%;*/
                    justify-content: flex-end;
                    #change_language_theme .ivu-dropdown-item {
                        color: #000;
                    }
                }
            }
        }
    }
}
.wechatclick .api2 {
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
    div {
        img {
            width: 100px;
        }
        span {
            display: block;
            color: #333;
            text-align: center;
        }
    }
}
</style>
<style lang="scss">
.footer .footer_content .footer-main .footer_right .footer_info li {
    color: #8790a1 !important;
}
ul,
li {
    list-style-type: none;
}
.container_test {
    padding-top: 60px;
}
/* 多选框 */
.exchange .ivu-checkbox-checked .ivu-checkbox-inner {
    background-color: #3399ff;
    border-color: #3399ff;
}
/* modal */
.ivu-modal-confirm-head {
    text-align: center;
    margin-bottom: 15px;
}
.ivu-modal-body {
    // border-top: 4px solid #3399ff;
    line-height: 25px;
    border-radius: 5px;
    .ivu-modal-confirm {
        .ivu-modal-confirm-body.ivu-modal-confirm-body-render {
            .ivu-input-number {
                &:hover {
                    border-color: #3399ff;
                }
                &:focus {
                    border-color: #3399ff;
                    -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                    -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                    box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                }
            }
            .ivu-input-number.ivu-input-number-focused {
                border-color: #3399ff;
                -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
            }
        }
        .ivu-modal-confirm-body {
            font-size: 14px;
        }
    }
}

.ivu-table-tip {
    height: 180px;
    line-height: 180px;
}

.ivu-modal-confirm-footer .ivu-btn-primary {
    background-color: #3399ff;
    border-color: #3399ff;
}
.ivu-modal-confirm-footer .ivu-btn-text {
    &:hover {
        color: #3399ff;
    }
}
.ivu-modal-confirm-footer {
    .ivu-btn {
        &:focus {
            -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
            -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
            box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        }
    }
}
/*.ivu-table-wrapper {
    -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
}*/
.ivu-table-wrapper {
    .ivu-table {
        &:before {
            background: #fff;
        }
        &:after {
            background: #fff;
        }
        .ivu-table-header {
            th {
                background-color: #fff;
                border-color: #f5f5f5;
            }
        }
    }
}
#page2 {
    .ivu-table-wrapper {
        .ivu-table {
            .ivu-table-row {
                &:nth-of-type(odd) {
                    background: #fff;
                    td {
                        background: #fff;
                    }
                }

                &:nth-of-type(even) {
                    td {
                        /*background: ;*/
                    }
                    background: #fafafd;
                }
            }
            /*.ivu-table-row td {*/
            /*    border-color: #eee;*/
            /*}*/
        }
    }
}
.order-table {
    .ivu-table-wrapper {
        .ivu-table {
            &:before {
                background: #fff;
            }
            &:after {
                background: #fff;
            }
            .ivu-table-header {
                th {
                    background-color: #fff;
                    border-color: #f5f5f5;
                }
            }
            .ivu-table-row td {
                /*background-color: #fff;*/
                border-color: #f5f5f5;
            }
        }
    }
}
.ivu-menu-light.ivu-menu-vertical .ivu-menu-item-active:not(.ivu-menu-submenu) {
    background: none;
    &:after {
        background: none;
    }
}
.ivu-select-dropdown .ivu-select-item {
    padding: 6px 16px;
    &:hover {
        background: #fff;
        color: #3399ff;
    }
}
.ivu-select-dropdown
    li.ivu-select-item.ivu-select-item-selected.ivu-select-item-focus {
    background: #fff;
    color: #3399ff;
}
.page-view {
    .page-content {
        .layout {
            .layout-ceiling {
                .layout-ceiling-main {
                    .header_nav {
                        .ivu-menu-vertical.ivu-menu-light {
                            .ivu-menu-submenu-title {
                                i.ivu-icon.ivu-icon-ios-arrow-down.ivu-menu-submenu-title-icon {
                                    &:before {
                                        content: "";
                                    }
                                }
                            }
                        }
                    }
                    .rr {
                        .login_register .ivu-menu-submenu-title .ivu-icon {
                            &:before {
                                content: "";
                            }
                        }
                    }
                }
            }
        }
    }
}
.page-view2 {
    .page-content {
        .layout {
            .layout-ceiling {
                .layout-ceiling-main {
                    .header_nav {
                        .ivu-menu-vertical.ivu-menu-light {
                            .ivu-menu-submenu-title {
                                i.ivu-icon.ivu-icon-ios-arrow-down.ivu-menu-submenu-title-icon {
                                    &:before {
                                        content: "";
                                    }
                                }
                            }
                        }
                    }
                    .rr {
                        .login_register .ivu-menu-submenu-title .ivu-icon {
                            &:before {
                                content: "";
                            }
                        }
                    }
                }
            }
        }
    }
}
html,
body {
    height: 100%;
    margin: 0;
    padding: 0;
    font-size: 14px;
    background: transparent !important;
    font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB",
        "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
}

/*自定义滚动条样式*/

::-webkit-scrollbar {
    width: 10px;
    background: #f5f5f5;
}

::-webkit-scrollbar-thumb {
    background: #e6e6e6;
    border-radius: 25px;
}

.ivu-carousel-dots li button {
    width: 40px;
    height: 3px;
    border-radius: 14px;
    background: #3399ff;
}

.ivu-menu-dark,
.ivu-menu-dark.ivu-menu-vertical .ivu-menu-opened {
    background: #18202a;
}

#checkbox {
    width: 10px;
}

// .login_right {
//   position: absolute;
//   background: #fff;
//   width: 350px;
//   height: 510px;
//   top: 35px;
//   right: 50px;
// }

.login_title {
    color: #000;
    text-align: center;
    height: 80px;
    font-size: 25px;
}
.login_right .ivu-select-dropdown {
    background: #fff;
}

.ivu-form-inline .ivu-form-item {
    display: block;
    margin-right: 0;
}

.layout {
    position: absolute;
}

.layout-copy {
    text-align: center;
    padding: 10px 0 20px;
    color: #9ea7b4;
}

.layout-ceiling-main {
    height: 50px;
    line-height: 50px;
    margin-left: 128px;
}

.layout-ceiling-main .rr {
    float: right;
}

// .layout-ceiling-main .ivu-menu-vertical .ivu-menu-item,
// .ivu-menu-vertical .ivu-menu-submenu-title {
//      padding: 0;
// }

.layout-ceiling-main .ivu-menu-item {
    font-size: 14px;
}

.layout-ceiling-main a {
    color: #fff;
    display: inline-block;
    line-height: 40px;
    height: 40px;
    text-align: center;
    margin-left: 38px;
    /*padding: 0 15px;*/
}

.header_nav {
    float: left;
}

.ivu-dropdown-rel a {
    width: 100%;
}

.ivu-dropdown-menu {
    width: 100px;
}

.layout-ceiling-main .ivu-select-dropdown {
    background: #ffffff;
    margin-left: 25px;
    .ivu-dropdown-item {
        color: #333;
    }
}

.ivu-select-dropdown a {
    width: 100%;
    text-align: left;
    margin: 0;
}

.ivu-dropdown-item:hover {
    background: #ffffff;
}

.ivu-dropdown-item img {
    width: 14px;
    vertical-align: middle;
}

.ivu-radio-inner:after {
    background: #18202a;
}

/*安全中心*/

.user_center {
    height: 900px;
}

.ivu-menu-item {
    text-align: center;
}

.ivu-menu-vertical .ivu-menu-submenu .ivu-menu-item {
    padding-left: 0 !important;
    padding-right: 0;
    color: #fff;
    font-size: 14px;
    border-right: 0 !important;
}

.ivu-menu-dark.ivu-menu-vertical .ivu-menu-submenu .ivu-menu-item-active,
.ivu-menu-dark.ivu-menu-vertical .ivu-menu-submenu .ivu-menu-item-active:hover {
    background: #1855fd !important;
}

.rr .ivu-menu-vertical.ivu-menu-light:after {
    width: 0;
}

.layout_menu_right {
    margin-left: 3%;
    background: #18202a;
    color: #fff;
    padding-bottom: 130px;
}

.menu_right_title {
    font-size: 16px;
    line-height: 45px;
    margin: 0 10px;
    padding-left: 20px;
    border-bottom: 1px solid #263142;
}

.category .ivu-radio-group.ivu-radio-group-button {
    width: 100%;
}

.category .ivu-radio-group label {
    font-size: 14px;
}

.category .ivu-radio-group-button .ivu-radio-wrapper {
    background: #28313e;
    color: #979797;
    border: 0;
    padding: 0 25px;
}

.category .ivu-radio-group-button .ivu-radio-wrapper-checked {
    color: #fff;
    background: #2f3d52;
    box-shadow: none;
}

.category .ivu-radio-wrapper span {
    padding-left: 0;
}

.purse_address_left {
    float: left;
    width: 86%;
}

.purse_address p {
    font-size: 10px;
    line-height: 25px;
    color: #979797;
}

.purse_address_left_icon {
    line-height: 40px;
    height: 40px;
    width: 100%;
}

.purse_address_left_icon img {
    vertical-align: middle;
    margin-right: 10px;
}

.purse_address span {
    font-size: 14px;
    float: left;
    color: #fff;
    padding: 0 20px;
    background: #28313e;
    width: 21%;
}

.purse_address_left_icon label {
    float: left;
    width: 72%;
    height: 40px;
    border: 2px solid #28313e;
    padding-left: 20px;
}

#qrcode canvas {
    width: 120px;
}

#qrcode img {
    width: 100%;
}

.ivu-select-item:hover {
    background: #aaa;
}

.ivu-select-item-selected,
.ivu-select-item-selected:hover {
    background: #aaa;
}

.chart_container #chart_updated_time {
    float: left;
}

// 粘住底部布局
// .page-content {
//     min-height: 100%;
//     padding-bottom: 200px;
// }

.footer {
    min-width: 1260px;
    height: 400px;
    overflow: hidden;
    color: #53575c;
    background: #1c2435;
    .footer_content {
        width: 1200px;
        margin: 60px auto 30px;
        .footer-main {
            height: 150px;
            .footer_left {
                float: left;
                font-size: 14px;
                img {
                    margin: 15px 0;
                }
                p {
                    margin: 10px 0;
                    color: rgba(255, 255, 255, 0.6);
                }
            }
            .footer_right {
                float: right;
                text-align: left;
                ul {
                    float: left;
                    margin: 0 15px;
                }
                .footer_info {
                    .footer_title {
                        font-size: 15px;
                        height: 35px;
                    }
                    li {
                        color: #fff;
                        &:first-child {
                            span {
                                font-size: 16px;
                                display: block;
                            }
                        }

                        a {
                            line-height: 26px;
                            color: #8790a1;
                        }
                    }
                }
            }
        }
    }
    .info {
        text-align: center;
        width: 100%;
        border-top: 1px solid #8790a1;
        line-height: 60px;
        font-size: 15px;
        color: #8790a1;
        .footer-info {
            width: 1200px;
            margin: 20px auto 0;
            display: flex;
            .info-title {
                flex: 1;
                margin-right: 20px;
                text-align: left;
                line-height: 45px;
                color: #8790a1;
            }
            .info-img {
                text-align: left;
                flex: 15;
                a {
                    width: 125px;
                    height: 40px;
                    display: inline-block;
                    float: left;
                    margin-right: 15px;
                    &:nth-child(8),
                    &:last-child {
                        margin-right: 0;
                    }
                    img {
                        width: 85%;
                    }
                }
            }
        }
    }
}

.ivu-select-selected-value {
    color: #bbbec4;
}

/*法币交易*/

.ivu-col {
    text-align: center;
}

.page-view {
    .page-content {
        .layout {
            .layout-ceiling {
                .rr {
                    .login_register {
                        .ivu-menu-light.ivu-menu-vertical
                            .ivu-menu-item-active:not(.ivu-menu-submenu) {
                            color: #fff;
                        }
                    }
                    .isLogin {
                        .ivu-dropdown {
                            display: inline-block;
                            .ivu-select-dropdown {
                                padding: 0;
                                margin: 0;
                                .ivu-dropdown-menu {
                                    .ivu-dropdown-item {
                                        background: #fff;
                                        color: #000;
                                        border-radius: 5px;
                                        &:hover {
                                            background: #fff;
                                            color: #000;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
.changelanguage {
    .ivu-dropdown {
        .ivu-select-dropdown {
            z-index: 901;
        }
    }
}
// 重置分页器颜色
.ivu-page-item-active {
    background-color: #3399ff;
    border-color: #3399ff;
    color: #fff;
}
.ivu-page-next:hover,
.ivu-page-prev:hover {
    border-color: #3399ff;
}
.ivu-page-next:hover a,
.ivu-page-prev:hover a {
    color: #3399ff;
}

.ivu-page-item-jump-prev a,
.ivu-page-item-jump-next a {
    color: #666;
}
.ivu-page-item-jump-prev a:hover,
.ivu-page-item-jump-next a:hover {
    color: #3399ff;
}
.ivu-page-item:hover {
    border-color: #3399ff;
}
.ivu-page-item:hover a {
    color: #3399ff;
}
.ivu-page-item.ivu-page-item-active a {
    color: #fff;
}
.ivu-page-disabled {
    a {
        cursor: not-allowed;
        .ivu-icon {
            cursor: not-allowed;
        }
    }
}
/*input框样式重置*/
.ivu-input {
    &:hover {
        border-color: #3399ff;
    }
    &:focus {
        border-color: #3399ff;
        -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
    }
}
/*下拉框样式重置*/
.ivu-select-selection:hover {
    border-color: #3399ff;
}
.ivu-select-visible .ivu-select-selection {
    border-color: #3399ff;
    -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
    -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
    box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
}
.ivu-select-selected-value {
    color: #333;
}
.ivu-select-selection-focused {
    border-color: #3399ff;
}
/*table组件样式重置*/
.ivu-table-wrapper {
    border: none;
}
.ivu-table-wrapper > .ivu-spin-fix {
    border-color: #fff;
}
/*加载样式重置*/
.ivu-spin-dot {
    background: #3399ff;
}
.ivu-tabs-bar {
    border-color: #f5f5f5;
}
/*日期组件样式重置*/
.ivu-picker-panel-icon-btn {
    &:hover {
        color: #3399ff;
    }
}
.ivu-date-picker-cells-focused em {
    -moz-box-shadow: 0 0 0 1px #3399ff inset;
    -webkit-box-shadow: 0 0 0 1px #3399ff inset;
    box-shadow: 0 0 0 1px #3399ff inset;
    &:after {
        background: #3399ff;
    }
}
.ivu-date-picker-cells-cell-selected em,
.ivu-date-picker-cells-cell-selected:hover em {
    background: #3399ff;
}
.ivu-date-picker-cells-cell-today em:after {
    background: #3399ff;
}
.ivu-date-picker-cells-cell-range:before {
    background: rgba(240, 167, 10, 0.2);
}
.ivu-date-picker-cells-cell:hover em {
    background: #fff;
    color: #3399ff;
}
/*按钮样式重置*/
.ivu-btn-primary:hover {
    // background: #3399ff;
    // border-color: #3399ff;
    background: #3399ff;
    border-color: #3399ff;
}

/*radio样式重置*/
.ivu-radio-checked .ivu-radio-inner {
    border-color: #3399ff;
}
.ivu-radio-checked:hover {
    .ivu-radio-inner {
        border-color: #3399ff;
    }
}
.ivu-radio-inner:after {
    background: #3399ff;
}
.ivu-switch-checked {
    border-color: #3399ff;
    background-color: #3399ff;
}
.ivu-switch:focus {
    box-shadow: none;
}
.ivu-radio-focus {
    box-shadow: none;
}

/*下拉框*/
.ivu-select-item-selected {
    background: #fff;
    color: #3399ff;
}
// primary按钮
.ivu-btn-primary {
    background-color: #3399ff;
    border-color: #3399ff;
}
.ivu-btn-text:hover {
    color: #3399ff;
}
// .ivu-btn:hover{
//     color: #3399ff;
//     background-color: #fff;
//     border-color: #3399ff;
// }

/*排序小箭头样式重置*/
.ivu-table-sort i.on {
    color: #3399ff;
}
.ivu-table-sort i:hover {
    color: #3399ff;
}
//修改iview样式
.ivu-menu-vertical .ivu-menu-item:hover,
.ivu-menu-vertical .ivu-menu-submenu-title:hover {
    color: not specified;
}
.ivu-menu-opened > * > .ivu-menu-submenu-title-icon {
    color: #fff;
}
.ivu-notice,
.ivu-message {
    top: 20% !important;
}
</style>
