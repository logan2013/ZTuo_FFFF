<template>
    <div class="openGoogle common">
        <div class="header-title">
            <span>{{$t('openGoolePage._closeGoogle')}}</span>
            <span @click="returnSuperior">
                <Icon type="ios-undo" style="font-size: 18px;" />
                {{$t('openGoolePage._returnSetting')}}
            </span>
        </div>
        <div class="openGoogleModal">
            <!-- <Modal v-model="openGoogleModal" :title="title" :footer-hide="true"> -->
            <Form ref="formInline" :model="formInline" :rules="ruleInline" label-position="top">
                <FormItem :label="$t('openGoolePage._phone')">
                    <p style="background:rgb(247, 244, 253);padding:5px;font-size:16px;">
                        {{phone|addStart}}
                        <!--{{ phone.substring(0,2)}}
                        ****
                        {{ phone.substring(9,11)}}-->
                    </p>
                </FormItem>
                <FormItem :label="$t('openGoolePage._phoneCode')" prop="code">
                    <Input type="text" v-model="formInline.code" :placeholder="$t('openGoolePage._phoneCode')">
                        <Button slot="append" @click="getCode" :disabled="disabled">{{getCodeText}}</Button>
                    </Input>
                </FormItem>
                <FormItem :label="$t('openGoolePage._GoogleVerificationCode')" prop="googleCode">
                    <Input type="text" v-model="formInline.googleCode" :placeholder="$t('openGoolePage._GoogleVerificationCode')">
                    </Input>
                </FormItem>
            </Form>
            <div class="btns" style="display:flex;justify-content:space-around;align-items:center;">
                <Button @click="cancel">{{$t('openGoolePage._cancel')}}</Button>
                <Button type="primary" @click="sureBtn('formInline')">{{$t('openGoolePage._sure')}}</Button>
            </div>
            <!-- </Modal> -->
        </div>
    </div>

</template>
<script>
import { minHeightMinx } from "../../minxs/minxs"
export default {
    mixins: [minHeightMinx],
    name: "closegoogleVali",
    data() {
        return {
            getCodeText: this.$t('openGoolePage._sendCode'),
            phone: this.$route.params.phone,
            disabled: false,
            openGoogleModal: true,
            formInline: {
            },
            ruleInline: {
                code: [
                    { required: true, message: this.$t('openGoolePage._phoneCode'), trigger: 'blur' },
                    { type: 'string', min: 6, message: this.$t('openGoolePage._phoneCode'), trigger: 'blur' }
                ],
                googleCode: [
                    { required: true, message: this.$t('openGoolePage._GoogleVerificationCode'), trigger: 'blur' },
                    { type: 'string', min: 6, message: this.$t('openGoolePage._GoogleVerificationCode'), trigger: 'blur' }
                ]
            }
        }
    },
    created() {
        if (this.$route.params.phone) {
            this.phone = this.$route.params.phone;
        } else {
            this.$router.go(-1);
        }
        // this.getMember()
    },
    filters: {
        addStart(str) {
            if (str) {
                return str.slice(0, 3) + "****" + str.slice(8, 11)
            }
        }
    },
    methods: {
        // 点击返回上个页面
        returnSuperior () {
            this.$router.push({path: '/uc/safe'})
        },
        jcgoogle(params) {
            this.$http.post(this.host+"/uc/google/jcgoogle",params).then(res=>{
                const resp = res.body;
                if(resp.code == 0){
                    this.$Notice.success({
                        title: this.$t("common.tip"),
                        desc: resp.message
                    });
                    setTimeout(()=>{
                        this.$router.go(-1);
                    },1000)
                }else{
                    this.$Notice.error({
                        title: this.$t("common.tip"),
                        desc: resp.message
                    });
                }
            })
        },
        sureBtn(name) {
            this.$refs[name].validate((valid) => {
                if (valid) {
                    const formInline = this.formInline;
                    const params = {
                        smsCode:formInline.code,
                        codes:formInline.googleCode
                    }
                    this.jcgoogle(params);
                }
            })
        },
        cancel() {
            this.$router.go(-1);
        },
        getCode() {
            this.getPhoneCode().then(res => {
                let count = 60;
                this.disabled = true;
                const timer = setInterval(() => {
                    this.getCodeText = --count;
                    if (count <= 0) {
                        clearInterval(timer);
                        this.getCodeText =  this.$t('openGoolePage._sendCode');
                        this.disabled = false;
                    }
                }, 1000);
            })
        },
        getPhoneCode() {
            return this.$http.post(this.host + "/uc/mobile/google/code", {}).then(res => {
                const resp = res.body;
                if (resp.code == 0) {
                    return new Promise((resolve, reject) => {
                        resolve();
                    })
                } else {
                    this.$Notice.error({ title: this.$t("common.tip"), desc: res.body.message });
                }
            })
        }
    }
}
</script>
<style lang="scss" scoped>
.openGoogle {
    width: 1200px;
    margin: 0 auto;
    padding-top: 150px;
    .openGoogleModal .ivu-btn-warning{
        background:#3399ff !important;
        border-color:#3399ff !important;
    }
    .openGoogleModal {
        padding: 100px 25%;
        overflow: hidden;
        min-height: 609px !important;
    }
    .header-title {
        height: 50px;
        line-height: 50px;
        color: #333;
        font-size: 14px;
        padding: 0 25px;
        border-bottom: 1px solid #eee;
        background: #fafafd;
        box-sizing: border-box;
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
}

</style>


