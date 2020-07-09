<template>
    <div class="specail" style="min-height:519px;">
        <div class="header-title">
            <span>{{$t('openGoolePage._openGoogle')}}</span>
            <span @click="returnSuperior">
                <Icon type="ios-undo" style="font-size: 18px;" />
                {{$t('openGoolePage._returnSetting')}}
            </span>
        </div>
        <div class="wrapper">
            <div class="qrclass">
                <img src="../../assets/images/goole_Android.png" alt="">
                <div>{{$t('openGoolePage._downloadAndroid')}}</div>
            </div>
            <div class="qrclass">
                <img src="../../assets/images/goole_IOS.png" alt="">
                <div>{{$t('openGoolePage._downloadIos')}}</div>
            </div>
            <div class="qrflex">
                  <div id="qrcode"></div>
            <div class="abstract">
                <p>{{$t('openGoolePage._googleVerifyabs')}}</p>
                <p>
                    <span>{{data.secret}}</span>
                    <span v-clipboard:copy="data.secret" v-clipboard:success="onCopy" v-clipboard:error="onError" class="blue">{{$t('openGoolePage._copy')}}</span>
                </p>
            </div>
            </div>
        </div>
        <ul>
            <li>{{$t('openGoolePage._abs1')}}</li>
            <li>{{$t('openGoolePage._abs2')}}</li>
            <li>{{$t('openGoolePage._abs3')}}</li>
        </ul>
        <Form :model="formCode" label-position="top" :rules="ruleInline" ref="formCode" class="form">
            <FormItem :label="$t('openGoolePage._GoogleVerificationCode')" prop="code">
                <Input v-model="formCode.code"></Input>
            </FormItem>
            <FormItem>
                <Button type="primary" style="width:100%;" @click="sure('formCode')">{{$t('openGoolePage._sure')}}</Button>
            </FormItem>
        </Form>

    </div>
</template>
<script>
import QRCode from 'qrcode2';
import { minHeightMinx } from "../../minxs/minxs.js"
export default {
    mixins: [minHeightMinx],
    name: "resetgooglevali",
    data() {
        return {
            data: {
                link: "",
                secret: ""
            },
            formCode: {
                code: ""
            },
            ruleInline: {
                code: [{ required: true, message: this.$t('openGoolePage._mustFill'), trigger: 'blur' }]
            }
        }
    },
    created() {
        this.init().then(res => {

            // const { link, secret } = res;
            // this.data = { link: "otpauth://totp/6@bitrade.com?secret=SHYT6OFT5C4H24MG", secret: "SHYT6OFT5C4H24MG" };
            this.data = {
                link: res.link,
                secret: res.secret
            }
            this.$nextTick(() => {
                const link = this.data.link;
                new QRCode(document.getElementById("qrcode"), {
                    text: link,
                    width: 128,
                    height: 128,
                    colorDark: "#000000",
                    colorLight: "#ffffff",
                });
            })

        })
    },
    methods: {
        // 点击返回上个页面
        returnSuperior () {
            this.$router.push({path: '/uc/safe'})
        },
        init() {
            return this.$http.get(this.host + `/uc/google/sendgoogle`).then(res => {
                const resp = res.body;
                if (resp.code == 0) {
                    return new Promise((resolve, reject) => {
                        resolve(resp.data)
                    })
                } else {
                    this.$Notice.error(resp.message);
                }
            })
        },
        onCopy(e) {
            this.$Notice.success({
                title: this.$t("common.tip"),
                desc: "copy success"
            })
        },
        onError() {
            this.$Notice.error({
                title: this.$t("common.tip"),
                desc: "copy fail"
            })
        },
        sure(name) {
            this.$refs[name].validate(valid => {
                if (valid) {
                    const codes = this.formCode.code;
                    //验证用户输入的code码是否正确;
                    this.reset({ codes, secret: this.data.secret });
                } else {
                    this.$Notice.erroe({
                        title: this.$t("common.tip"),
                        desc: this.$t("openGoolePage._googleCodeRequire"),
                    })
                }
            })
        },
        // validCode(params) {//验证用户输入的code码是否正确;
        //     this.$http.post(this.host + "/uc/google/yzgoogle", params).then(res => {
        //         const resp = res.body;
        //         if (resp.code == 0) {
        //             params.secret = this.data.secret;
        //             this.reset(params);
        //         }
        //     })
        // },
        reset(params) {//验证用户是否可以绑定或者修改成功;
            this.$http.post(this.host + "/uc/google/googleAuth", params).then(res => {
                const resp = res.body;
                if (resp.code == 0) {
                    this.$Notice.success({
                        title: this.$t("common.tip"),
                        desc: resp.message
                    });
                    setTimeout(() => {
                        this.$router.push('/uc/safe')
                    })
                }else{
                    this.$Notice.error({
                        title: this.$t("common.tip"),
                        desc:resp.message
                    });
                }
            })
        }
    },
    mounted() {
        const link = this.data.link;
    }
}
</script>
<style lang="scss" scoped>
%flex {
    display: flex;
    justify-content: flex-start;
    align-items: flex-end;
}
$color: #2d8cf0;
.specail {
    padding: 100px 25%;
    overflow: hidden;
    .header-title {
        height: 50px;
        line-height: 50px;
        color: #333;
        font-size: 14px;
        padding: 0 25px;
        border-bottom: 1px solid #eee;
        background: #fafafd;
        box-sizing: border-box;
        margin-bottom: 50px;
        span {
            &:first-child {
                float: left;
                font-weight: 600;
            }
            &:last-child {
                float: right;
                cursor: pointer;
            }
        }
    }
    .wrapper {
        @extend %flex;
         margin-bottom: 30px;
        .blue {
            cursor: pointer;
            color: #fff;
            background: #3399ff;
            display: inline-block;
            padding: 4px 12px;
            font-size: 12px;
            border-radius: 3px;
        }
    }
    #qrcode {
        width: 80px;
        line-height: 2;
    }
    .abstract {
        padding-top:8px;
    }
    ul li {
        list-style-type: none;
        line-height: 2;
    }
    .form {
        margin-top: 40px;
        background-color: #fff;
    }
}
    .qrflex{
        display:flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
            text-align: center;
    }
.qrclass{
    display: inline-block;
    text-align: center;
    margin-bottom: 25px;
    margin-right: 60px;
}
</style>
<style lang="scss">
.common.specail .ivu-input {
    background-color: #fff;
    border: 1px solid #eee;
    color: #000;
    &:hover {
        border-color: #3399ff;
    }
}
</style>

