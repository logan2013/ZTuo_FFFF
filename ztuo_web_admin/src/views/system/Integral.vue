<template>
    <div>
        <Table :columns="columns" :data="levelList" :loading="Loading" border>
        </Table>
        <Modal v-model="modal" title='编辑' :footer-hide="true">
            <Form ref="formInline" :model="formInline" :rules="ruleInline" label-position="left" :label-width="100">
                <FormItem label="等级">
                    <div>{{params.gradeName}}</div>
                </FormItem>
                <FormItem label="手续费" prop="exchangeFeeRate">
                    <Input v-model="formInline.exchangeFeeRate" placeholder="手续费">
                    </Input>
                </FormItem>
                <FormItem label="每日提现额度" prop="withdrawCoinAmount">
                    <Input v-model="formInline.withdrawCoinAmount" placeholder="每日提现额度">
                    </Input>
                </FormItem>
                <FormItem label="积分等级界限" prop="gradeBound">
                    <Input v-model="formInline.gradeBound" placeholder="积分等级界限">
                    </Input>
                </FormItem>
                <FormItem label="每日提币单数" prop="dayWithdrawCount">
                    <Input v-model="formInline.dayWithdrawCount" placeholder="每日提币单数">
                    </Input>
                </FormItem>
                <FormItem>
                    <Button type="default" @click="cancel" style="margin-right:100px;">取消</Button>
                    <Button type="primary" @click="handleSubmit('formInline')">确认</Button>
                </FormItem>
            </Form>
        </Modal>
    </div>
</template>
<script>
import { getAllLevel, editLevelMsg } from "../../service/getData.js"
export default {
    data() {
        return {
            columns: [
                {
                    title: "等级",
                    key: "gradeName"
                },
                {
                    title: "手续费",
                    key: "exchangeFeeRate"
                },
                {
                    title: "每日提现额度（USDT）",
                    key: "withdrawCoinAmount"
                },
                {
                     title: "积分等级界限",
                    key: "gradeBound"
                },
                {
                    title: "每日提币笔数",
                    key: "dayWithdrawCount"
                },
                {
                    title: "操作",
                    render: (h, params) => {
                        console.log(params);
                        return h("Button", {
                            props: {
                                type: "primary"
                            },
                            on: {
                                click: () => {
                                    this.modal = true;
                                    this.params = params.row;
                                    const { exchangeFeeRate, withdrawCoinAmount, dayWithdrawCount,gradeBound } = this.params;
                                    this.formInline = { exchangeFeeRate: String(exchangeFeeRate), withdrawCoinAmount: String(withdrawCoinAmount), dayWithdrawCount: String(dayWithdrawCount),gradeBound:String(gradeBound) };
                                }
                            }
                        }, "编辑")
                    }
                }
            ],
            modal: false,
            levelList: [],
            Loading: true,
            formInline: {},
            ruleInline: {
                exchangeFeeRate: [{ required: true, message: '必填项必须为数字', trigger: 'blur' }],
                withdrawCoinAmount: [{ required: true, message: '必填项必须为数字', trigger: 'blur' }],
                dayWithdrawCount: [{ required: true, message: '必填项必须为数字', trigger: 'blur' }],
                gradeBound:[{ required: true, message: '必填项必须为数字', trigger: 'blur' }],
            },
            params: {}
        }
    },
    created() {
        this.init();
    },
    methods: {
        init() {
            getAllLevel().then(res => {
                if (res.code == 0) {
                    this.Loading = false;
                    this.levelList = res.data;
                }
            })
        },
        handleSubmit(name) {
            this.$refs[name].validate(valid => {
                if (valid) {
                    this.getEditMsg().then(res => {
                        this.modal = false;
                        this.init();
                    });
                }
            })
        },
        getEditMsg() {
            const params = Object.assign({}, this.params, this.formInline);
            return editLevelMsg(params).then(res => {
                if (res.code == 0) {
                    this.$Message.success(res.message);
                    return new Promise((resolve, reject) => {
                        resolve("")
                    })
                } else {
                    this.$Message.error(res.message);
                }
            })
        },
        cancel() {
            this.modal = false;
        }
    }
}
</script>
<style lang="less" scoped>
</style>
