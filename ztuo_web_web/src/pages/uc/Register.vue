<template>
    <div class="login_form">
        <div class="login_right">
            <Form v-if="allowRegister" ref="formInline" :model="formInline" :rules="ruleInline" inline>
                <FormItem style="text-align:center;">
                    <ButtonGroup>
                        <Button v-for="(list,index) in buttonLists" :key="list.text" :class="{ active:changeActive == index}" @click="actives(index)">{{list.text}}</Button>
                    </ButtonGroup>
                </FormItem>
                <FormItem prop="country">
                    <Select v-model="formInline.country" :placeholder="$t('uc.regist.country')" @on-change="onAreaChange">
                        <Option v-for="(area,index) in areas" :value="area.zhName" :key="index">{{area.zhName}}</Option>
                    </Select>
                </FormItem>
                <FormItem prop="username">
                    <Input type="text" v-model="formInline.username" :placeholder="$t('uc.regist.username')">
                    </Input>
                </FormItem>
                <FormItem prop="user">
                    <Input v-if="changeActive == 0" type="text" v-model="formInline.user" :placeholder="key">

                    </Input>
                    <Input v-else type="text" v-model="formInline.user" :placeholder="key">
                    </Input>
                </FormItem>

                <FormItem prop="code" v-show="showCode">
                    <Input type="text" v-model="formInline.code" :placeholder="$t('uc.regist.smscode')">
                    </Input>
                    <input id="sendCode" @click="sendCode();" type="Button" :value="sendcodeValue" :disabled='codedisabled'>
                    </input>
                </FormItem>
                <FormItem prop="password">
                    <Input type="password" v-model="formInline.password" :placeholder="$t('uc.regist.pwd')">
                    </Input>
                </FormItem>
                <FormItem prop="repassword">
                    <Input type="password" v-model="formInline.repassword" :placeholder="$t('uc.regist.confrimpwd')">
                    </Input>
                </FormItem>
                <FormItem prop="agentcode">
                    <Input type="text" v-model="formInline.agentcode" :placeholder="$t('uc.regist.agentcode')">
                    </Input>
                </FormItem>
                <div class="check-agree" style="">
                    <label>
                        <Checkbox v-model="agree">{{$t('uc.regist.agreement')}}</Checkbox>
                    </label>
                    <a href="#/helpdetail?cate=1&id=9&cateTitle=常见问题" target="_blank" style="">《{{$t('uc.regist.userprotocol')}}》</a>
                </div>
                <FormItem>
                    <Button class="register_btn" @click="handleSubmit('formInline')">{{$t('uc.regist.regist')}}</Button>
                </FormItem>
            </Form>
        </div>
    </div>
</template>
<style scoped lang="scss">
.login_form {
    background: #f9f9f9 url(../../assets/images/login_bg.png) no-repeat center
        center;
    height: 760px;
    position: relative;
    overflow: hidden;
    .login_right {
        padding: 20px 30px;
        position: absolute;
        background: #fff;
        width: 350px;
        // height: 485px;
        left: 50%;
        top: 50%;
        // transform: translate(50%, 50%, 0);
        margin-left: -175px;
        margin-top: -255px;
        box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        border-top: 4px solid #3399ff;
        form.ivu-form.ivu-form-label-right.ivu-form-inline {
            .ivu-form-item {
                .ivu-form-item-content {
                    .register_btn.ivu-btn {
                        width: 100%;
                        background-color: #3399ff;
                        outline: none;
                        border-color: #3399ff;
                        color: #fff;
                        border-radius: 30px;
                        font-size: 18px;
                        margin-top: 20px;
                        &:focus {
                            box-shadow: 2px 2px 5px transparent,
                                -2px -2px 4px transparent;
                        }
                    }
                    .ivu-input-wrapper.ivu-input-type {
                        .ivu-input {
                            border: 1px solid red;
                        }
                    }
                    #sendCode {
                        position: absolute;
                        border: 1px solid #3399ff;
                        background: #fdfaf3;
                        top: -10px;
                        outline: none;
                        right: 0;
                        width: 30%;
                        border-radius: 20px;
                        color: #3399ff;
                        cursor: pointer;
                    }
                }
            }
            .check-agree {
                color: #979797;
                display: inline-block;
                line-height: 30px;
                font-size: 12px;
                cursor: default;
                a {
                    color: #3399ff;
                    margin-left: -10px;
                }
                .ivu-checkbox-wrapper.ivu-checkbox-wrapper-checked {
                    .ivu-checkbox.ivu-checkbox-checked {
                        .ivu-checkbox-inner {
                            border: 1px solid #3399ff;
                            background-color: #3399ff;
                        }
                    }
                }
            }
        }
    }
}

.login_title {
    color: #000;
    text-align: center;
    height: 80px;
    font-size: 25px;
}

#captcha {
    width: 100%;
    display: inline-block;
}
.show {
    display: block;
}
.hide {
    display: none;
}
#notice {
    color: red;
}
#wait {
    text-align: left;
    color: #666;
    margin: 0;
}
.tel-title {
    color: #000;
    font-size: 25px;
}
</style>
<script>
export default {
    data() {
        const validateUser = (rule, value, callback) => {
            if (this.changeActive == 0) {
                let reg = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
                if (value == "") {
                    callback(new Error(this.$t("uc.regist.teltip")));
                } else if (!reg.test(this.formInline.user)) {
                    callback(new Error(this.$t("uc.regist.telerr")));
                } else {
                    callback();
                }
            } else {
                let reg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
                reg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/;
                if (value == "") {
                    callback(new Error(this.$t("uc.regist.emailtip")));
                } else if (!reg.test(this.formInline.user)) {
                    callback(new Error(this.$t("uc.regist.emailerr")));
                } else {
                    callback();
                }
            }
        };
        const validateRepassword = (rule, value, callback) => {
            if (value === "") {
                callback(new Error(this.$t("uc.regist.confirmpwdtip")));
            } else if (value !== this.formInline.password) {
                callback(new Error(this.$t("uc.regist.confirmpwderr")));
            } else {
                callback();
            }
        };
        return {
            codedisabled: false,
            sendcodeValue: this.$t("uc.regist.sendcode"),
            ticket: "",
            randStr: "",
            captchaObj: null,
            modal1: false,
            _captchaResult: null,
            agree: true,
            allowRegister: true,
            buttonLists: [
                {
                    text: this.$t("uc.regist.telregist")
                },
                {
                    text: this.$t("uc.regist.emailregist")
                }
            ],
            areas: [],
            changeActive: 0,
            showCode: true,
            countdown: 60,
            formInline: {
                username: "",
                country: "",
                user: "",
                code: "",
                areaCode: "",
                password: "",
                repassword: "",
                agentcode:
                    typeof this.$route.query.agent == "undefined"
                        ? ""
                        : this.$route.query.agent,
                superType:
                    typeof this.$route.query.type == "undefined"
                        ? ""
                        : this.$route.query.type
            },
            ruleInline: {
                username: [
                    {
                        required: true,
                        message: this.$t("uc.regist.usernametip"),
                        trigger: "blur"
                    },
                    {
                        type: "string",
                        min: 3,
                        max: 15,
                        message: this.$t("uc.regist.usernamemsg"),
                        trigger: "blur"
                    }
                ],
                country: [
                    {
                        required: true,
                        message: this.$t("uc.regist.countrytip"),
                        trigger: "blur"
                    }
                ],
                user: [{ validator: validateUser, trigger: "blur" }],
                code: [
                    {
                        required: true,
                        message: this.$t("uc.regist.smscodetip"),
                        trigger: "blur"
                    }
                ],
                password: [
                    {
                        required: true,
                        message: this.$t("uc.regist.pwdtip"),
                        trigger: "blur"
                    },
                    {
                        type: "string",
                        min: 6,
                        message: this.$t("uc.regist.pwdmsg"),
                        trigger: "blur"
                    }
                ],
                // confirmPwd: [
                //     {
                //         required: true,
                //         message: this.$t("uc.regist.pwdtip"),
                //         trigger: "blur"
                //     },
                //     {
                //         type: "string",
                //         min: 6,
                //         // message: this.$t("uc.regist.pwdmsg"),
                //         message: '两次密码不一致请重新输入',
                //         trigger: "blur"
                //     }
                // ],
                repassword: [{ validator: validateRepassword, trigger: "blur" }],
            },
            key: "",
            code: ""
        };
    },
    watch: {
        changeActive: function (val) {
            this.$refs["formInline"].resetFields();
        },
        lang: function () {
            this.updateLangData();
        }
    },
    computed: {
        lang: function () {
            return this.$store.state.lang;
        },
        isLogin: function () {
            return this.$store.getters.isLogin;
        }
    },
    created: function () {
        window.scrollTo(0, 0);
        this.init();
        this.actives(this.changeActive);
    },
    methods: {
        updateLangData() {
            this.buttonLists = [
                {
                    text: this.$t("uc.regist.telregist")
                },
                {
                    text: this.$t("uc.regist.emailregist")
                }
            ];
            if (this.changeActive == 0) {
                this.key = this.$t("uc.regist.telno");
            } else {
                this.key = this.$t("uc.regist.email");
            }
        },
        init() {
            if (this.isLogin) {
                this.$router.push("/");
            }
            this.getAreas();
        },
        initGtCaptcha() {
            // 直接生成一个验证码对象
            let captcha1 = new TencentCaptcha("2038419167", (res) => {
                res.ret == 0 && (this.ticket = res.ticket) && (this.randStr = res.randstr);
                (this.changeActive == 0) && this.success();
                this.changeActive == 1 && this.emailSuccess();
            });
            captcha1.show(); // 显示验证码
        },
        onAreaChange(value) {
            for (let i = 0; i < this.areas.length; i++) {
                if (this.areas[i].zhName == value) {
                    this.formInline.areaCode = this.areas[i].areaCode;
                }
            }
        },
        getAreas() {
            this.$http.post(this.host + this.api.common.area).then(response => {
                let resp = response.body;
                this.areas = resp.data;
                if(this.areas!=null){
                    this.formInline.country = this.areas[0].zhName;
                    this.formInline.areaCode = this.areas[0].areaCode;
                }
            });
        },
        actives: function (index) {
            this.changeActive = index;
            if (this.changeActive == 0) {
                this.showCode = true;
                this.key = this.$t("uc.regist.telno");
                this.ruleInline.code = [
                    {
                        required: true,
                        message: this.$t("uc.regist.smscodetip"),
                        trigger: "blur"
                    }
                ];
            } else {
                this.showCode = false;
                this.key = this.$t("uc.regist.email");
                this.ruleInline.code = [];
            }
        },
        emailSuccess() {//邮箱注册腾讯防水验证成功
            const forminline = this.formInline;
            let params = {
                ticket: this.ticket,
                randStr: this.randStr,
                email: forminline.user,
                password: forminline.password,
                username: forminline.username,
                country: forminline.country,
                promotion: forminline.agentcode,
                superPartner: ""
            };
            this.$http.post(this.host + 'uc/register/email', params).then(response => {
                let resp = response.body;
                if (resp.code == 0) {
                    this.$Notice.success({
                        title: this.$t('common.tip'),
                        desc: resp.message
                    });
                    setTimeout(() => {
                        this.$router.push('login');
                    }, 3000)
                } else {
                    this.$Notice.error({
                        title: this.$t('common.tip'),
                        desc: resp.message
                    });
                }
            });
        },
        handleSubmit(name) {
            this.$refs[name].validate(valid => {
                if (valid) {
                    if (this.agree == true) {
                        if (this.changeActive == 1) {
                            this.afterValidate();
                        } else {
                            this.phoneRegister();
                        }
                    } else {
                        this.$Notice.error({
                            title: this.$t("common.tip"),
                            desc: this.$t("uc.regist.agreementtip")
                        });
                    }
                }
            });
        },
        settime() {
            this.sendcodeValue = this.countdown;
            this.codedisabled = true;
            let timercode = setInterval(() => {
                this.countdown--;
                this.sendcodeValue = this.countdown;
                if (this.countdown <= 0) {
                    clearInterval(timercode);
                    this.codedisabled = false;
                    this.sendcodeValue = this.$t("uc.regist.sendcode");
                    this.countdown = 60;
                }
            }, 1000);
        },
        sendCode() {
            let mobilePhone = this.formInline.user;
            let reg = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
            if (mobilePhone == "" || !reg.test(mobilePhone)) {
                this.$Notice.error({
                    title: this.$t("common.tip"),
                    desc: this.$t("uc.regist.teltip")
                });
                return;
            } else {
                this.initGtCaptcha();
            }
        },
        success() {
            let params = {};
            params["phone"] = this.formInline.user;
            params["country"] = this.formInline.country;
            let reg = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
            reg.test(params["phone"]) && this.$http.post(this.host + "/uc/mobile/code", params).then(response => {
                let resp = response.body;
                resp.code == 0 && this.$Notice.success({ title: this.$t("common.tip"), desc: resp.message });
                resp.code == 0 && this.settime();
                resp.code != 0 && this.$Notice.error({ title: this.$t("common.tip"), desc: resp.message });
            });
            !reg.test(params["phone"]) && this.$Notice.error({ title: this.$t("common.tip"), desc: this.$t("uc.finance.withdraw.telerr") });
        },
        phoneRegister() {//手机注册
            let params = {};
            params["phone"] = this.formInline.user;
            params["username"] = this.formInline.username;
            params["password"] = this.formInline.password;
            params["code"] = this.formInline.code;
            params["country"] = this.formInline.country;
            params["promotion"] = this.formInline.agentcode;
            params["superPartner"] = this.formInline.superType;
            params["ticket"] = this.ticket;
            params["randStr"] = this.randStr;
            this.$http.post(this.host + "/uc/register/phone", params).then(response => {
                let resp = response.body;
                if (resp.code == 0) {
                    this.$Notice.success({
                        title: this.$t("common.tip"),
                        desc: resp.message
                    });
                    setTimeout(() => {
                        this.$router.push("login");
                    }, 3000);
                } else {
                    this.$Notice.error({
                        title: this.$t("common.tip"),
                        desc: resp.message
                    });
                }
            });
        },
        afterValidate() {
            this.initGtCaptcha();
        }
    }
};
</script>
<style lang="scss">
.login_form {
    $main_theme: #3399ff;
    .login_right {
        form.ivu-form.ivu-form-label-right.ivu-form-inline {
            .ivu-form-item {
                .ivu-form-item-content {
                    .ivu-input-wrapper.ivu-input-type {
                        .ivu-input {
                            border: none;
                            border-bottom: 1px solid #f5f5f5;
                            font-size: 14px;
                            &:focus {
                                border: none;
                                border-bottom: 1px solid #f5f5f5;
                                box-shadow: 2px 2px 5px transparent,
                                    -2px -2px 4px transparent;
                            }
                        }
                    }
                    .ivu-btn.active,
                    .ivu-btn:active {
                        color: $main_theme;
                        border-color: $main_theme;
                    }
                    .ivu-btn {
                        &:hover {
                            color: $main_theme;
                            border-color: $main_theme;
                        }
                        &:focus {
                            box-shadow: 2px 2px 5px transparent,
                                -2px -2px 4px transparent;
                        }
                    }
                }
            }
            .check-agree {
                .ivu-checkbox-wrapper {
                    .ivu-checkbox-input {
                        &:focus {
                            border: none;
                            outline: none;
                            box-shadow: 2px 2px 5px transparent,
                                -2px -2px 4px transparent;
                        }
                    }
                }
                .ivu-checkbox-wrapper.ivu-checkbox-wrapper-checked {
                    .ivu-checkbox.ivu-checkbox-checked {
                        .ivu-checkbox-inner {
                            border: 1px solid $main_theme;
                            background-color: $main_theme;
                        }
                    }
                }
            }
        }
    }
}
</style>
