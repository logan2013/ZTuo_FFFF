<template>
    <div class="login_form">
        <div class="login_right">
            <Form ref="formInline" :model="formInline" :rules="ruleInline" inline>
                <div class="login_title">{{$t('uc.login.login')}}</div>
                <FormItem prop="user">
                    <Input @on-enter="handleSubmit('formInline')" name="user" type="text" v-model="formInline.user" :placeholder="$t('uc.login.usertip')" class="user" @on-blur="userBlur" />
                </FormItem>
                <FormItem prop="password">
                    <Input @on-enter="handleSubmit('formInline')" type="password" v-model="formInline.password" :placeholder="$t('uc.login.pwdtip')">
                    </Input>
                </FormItem>
                <FormItem prop="googleCode" v-if="openGooleCode">
                    <Input type="text" @on-enter="handleSubmit('formInline')" v-model="formInline.googleCode" :placeholder="$t('uc.login.google')">
                    </Input>
                </FormItem>
                <p style="height:25px;">
                    <router-link to="/findPwd" style="color:#979797;float:right;padding-right:10px;font-size:12px;">
                        {{$t('uc.login.forget')}}
                    </router-link>
                </p>
                <FormItem style="margin-bottom:10px;">
                    <Button class="login_btn"  @click="handleSubmit('formInline')">{{$t('uc.login.login')}}</Button>
                </FormItem>
                <div class='to_register'>
                    <span>{{$t("uc.login.noaccount")}}</span>
                    <router-link to="/register">{{$t("uc.login.register")}}</router-link>
                </div>
            </Form>

        </div>
    </div>
</template>
<style scoped lang="scss">
/* 验证码 */
$primary-color: #3399ff;
.login_form {
    background: #fff url('../../assets/images/login_bg.png') no-repeat center;
    height: 760px;
    position: relative;
    overflow: hidden;
    padding-top: 60px;
    .login_right {
        padding: 20px 30px 10px 30px;
        position: absolute;
        background: #fff;
        width: 350px;
        left: 50%;
        top: 50%;
        margin-left: -175px;
        margin-top: -165px;
        box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        border-top: 4px solid $primary-color;
        form.ivu-form.ivu-form-label-right.ivu-form-inline {
            .ivu-form-item {
                .ivu-form-item-content {
                    .login_btn.ivu-btn {
                        width: 100%;
                        background-color: $primary-color;
                        outline: none;
                        border-color: $primary-color;
                        color: #fff;
                        font-size: 18px;
                        border-radius: 30px;
                        &:focus {
                            box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
                        }
                    }
                }
            }
        }
    }
    .to_register {
        overflow: hidden;
        font-size: 12px;
        span {
            float: left;
        }
        a {
            float: right;
            color: $primary-color;
        }
    }
}

</style>
<script>
export default {
    data() {
        const pattern = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
        return {
            openGooleCode: false,//是否开启google验证;
            openGoole: "", //  获取谷歌验证状态
            captchaObj: null,
            _captchaResult: null,
            formInline: {
                user: "",
                password: "",
                googleCode: ""
            },
            ruleInline: {
                password: [
                    {
                        required: true,
                        message: this.$t("uc.login.pwdvalidate1"),
                        trigger: "blur"
                    },
                    {
                        type: "string",
                        min: 6,
                        message: this.$t("uc.login.pwdvalidate2"),
                        trigger: "blur"
                    }
                ]
            }
        };
    },
    created: function () {
        this.init();
    },
    computed: {
        isLogin: function () {
            return this.$store.getters.isLogin;
        }
    },
    methods: {

        //用户名输入以后判断用户是否开启谷歌验证
        userBlur() {
            const pattern = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
            var reg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
            let tel = this.formInline.user;
            if (pattern.test(tel) || reg.test(tel)) {
                this.isNeedGoogle(tel).then(res => {
                    if (res == 1) {//1为开启谷歌验证
                        this.openGooleCode = true;
                    } else {
                        this.openGooleCode = false;
                    }
                })
            }
        },
        init() {
            if (this.isLogin) {
                this.$router.push("/");
            }
        },
        onKeyup(ev) {
            if (ev.keyCode == 13) {
                $(".login_btn").click();
            }
        },
        initGtCaptcha() {
            var self = this;
            var captcha1 = new TencentCaptcha("2040846200", (res) => {
                res.ret == 0 && (self.ticket = res.ticket) && (self.randStr = res.randstr) && self.success(res.ticket, res.randstr);//腾讯防水验证成功的回调
            });
            captcha1.show(); // 显示验证码
        },
        /**验证用户是否开启了谷歌验证  返回值1为开启*/
        isNeedGoogle(tel) {
            return this.$http.post(this.host + '/uc/get/user', { mobile: tel }).then(res => {
                const resp = res.body;
                this.openGoole = res.body.data
                if (resp.code == 0) {
                    return new Promise((resolve, reject) => {
                        resolve(resp.data)
                    })
                }
            })
        },
        success(ticket, randstr) {
            const params = {
                ticket,
                randStr:randstr
            };
            const formParams = this.formInline;
            params.username = formParams.user;
            params.password = formParams.password;
            if (this.openGooleCode) {
                params.code = formParams.googleCode
            }
            return this.login(params);
        },
        loginCheck () {
            // 新加代码
            // 判断手机号邮箱不能为空
            if(!this.formInline.user) {
                this.$Message.error(this.$t("uc.login.loginvalidate"));
                return false
            }
            // 判断是否绑定谷歌
            if(this.openGoole == 1) {
                // 判断谷歌验证码不能为空
                if (!this.formInline.googleCode) {
                    this.$Message.error(this.$t("uc.login.google"));
                    return false
                } else  {
                    this.initGtCaptcha();
                }
            } else {
                // 谷歌验证调用
                this.initGtCaptcha();
            }
        },
        handleSubmit(name) {
             this.$refs[name].validate(valid => {
                 //首先验证输入的内容是否通过验证;通过验证的话调取腾讯防水
                if (valid) {
                    const params = {};
                    const formParams = this.formInline;
                    params.username = formParams.user;
                    params.password = formParams.password;
                    params.code = formParams.googleCode;
                    // 5.20修改
                    this.loginCheck()
                }
            })
        },
        login(params) {
            this.$http.post(this.host + this.api.uc.login, params).then(response => {
                    var resp = response.body;
                    if (resp.code == 0) {
                        this.$Message.success(this.$t("uc.login.success"));
                        this.$store.commit("setMember", response.body.data);
                        if (
                            this.$route.query.key != null &&
                            this.$route.query.key != ""
                        ) {
                            localStorage.setItem("USERKEY", this.$route.query.key);
                        }
                        this.$router.push("/");
                    } else {
                        this.$Message.error(resp.message);
                    }
                });
        }
    },
};
</script>
<style lang="scss">
$changeColor:#f5f5f5;
$white:#fff;
.login_form {
    .login_right {
        form.ivu-form.ivu-form-label-right.ivu-form-inline {
            .ivu-form-item {
                .ivu-form-item-content {
                    .ivu-input-wrapper.ivu-input-type {
                        .ivu-input {
                            font-size: 14px;
                            border: none;
                            border-bottom: 1px solid $changeColor;
                            &:focus {
                                border: none;
                                border-bottom: 1px solid $changeColor;
                                box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
                            }
                        }
                    }
                }
            }
        }
    }
}
</style>
