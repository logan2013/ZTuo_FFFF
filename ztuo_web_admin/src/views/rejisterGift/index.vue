<template>
    <div>
        <Card>
            <p slot="title">
                注册送币设置
                <Button type="primary" size="small" @click="refreshPageManual">
                    <Icon type="refresh"></Icon>
                    刷新
                </Button>
            </p>

            <Row class="functionWrapper">
                <div class="searchWrapper">
                    <div class="poptip">
                        选择类型：<Select v-model="type" style="width:200px">
                            <Option v-for="item in allStyle" :value="item[0]" :key="item[0]">{{ item[1] }}</Option>
                        </Select>
                    </div>
                    <div class="btns">
                        <Button type="info" @click="search">搜索</Button>
                        <Button type="info" @click="addSetting">添加配置</Button>
                        <Button type="info" @click="deleteSetting">删除配置</Button>
                    </div>
                </div>
            </Row>
            <Row class="tableWrapper">
                <Table :columns="columns" :data="list" border :loading="ifLoading" @on-selection-change="select">
                </Table>
            </Row>
            <Row class="pageWrapper">
                <Page :total="total" :current="currentPageIdx" @on-change="changePage" show-elevator></Page>
            </Row>

            <Modal v-model="modal" title="添加配置" :footer-hide="true">
                <Form :model="formTop" label-position="left">
                    <FormItem label="赠送类型">
                        <Select v-model="formTop.type" style="width:200px">
                            <Option v-for="item in allStyle" :value="item[0]" :key="item[0]">{{ item[1] }}</Option>
                        </Select>
                    </FormItem>
                    <FormItem label="赠送数量">
                        <Input v-model="formTop.info" style="width:200px"></Input>
                    </FormItem>
                    <FormItem label="赠送币种">
                        <Select v-model="formTop.coin" style="width:200px">
                            <Option v-for="(item, index) in allUnitList" :value="item.name" :key="index">{{item.name}}</Option>
                        </Select>
                    </FormItem>
                </Form>
                <Button type="default" @click="cancel" style="margin-right:100px;">取消</Button>
                <Button type="info" @click="sure">确认</Button>
            </Modal>
        </Card>
    </div>
</template>

<script>
import { registerGiftRecord, registerGiftExamineAdd, allUnit, registerGiftExamineDelete } from '@/service/getData';
import dtime from 'time-formater';
import Cookies from "js-cookie";
// type: (REGISTER, TRANSACTION, RECHARGE)//类型(注册,交易,充值) 也可以传 0,1,2 非必传
const map = new Map([["0", '注册'], ['1', '交易'], ['2', '充值']]);
const getParamsFun = (pageSize) => (pageNo) => (type) => ({
    pageNo, pageSize, type
});

const getParams = getParamsFun(10);

export default {
    data() {
        return {
            list: [],
            total: 0,
            pageNo: 1,
            modal: false,
            type: "",
            allStyle: [...map],
            formTop: {
                type: "",
                coin: "",
                info: ""
            },
            currentPageIdx: 1,
            ifLoading: true,
            selection: [],
            columns: [
                {
                    type: 'selection',
                    width: 60,
                    align: 'center'
                },
                {
                    title: '操作人ID',
                    key: 'id'
                },
                {
                    title: "赠送数量",
                    render: (h, params) => {
                        const str = params.row.info;
                        return h("div", {}, JSON.parse(str).amount+" "+params.row.coin.name)
                    }
                },
                {
                    title: '送币类型',
                    render: (h, params) => {
                        const type = String(params.row.type);
                        return h("div", {}, map.get(type))
                    }
                },
                {
                    title: '是否可用',
                    render: (h, params) => {
                        const str = params.row.status == 1 ? "可用" : "不可用";
                        return h("div", {}, str);
                    }
                }
            ],
            allUnitList: []
        }
    },
    methods: {
        getAllunit() {
            allUnit().then(res => {
                if (res.code == 0) {
                    this.allUnitList = res.data;
                }
            })
        },
        init() {
            const params = getParams(this.pageNo)(this.type);
            registerGiftRecord(params).then(res => {
                if (!res.code) {
                    this.ifLoading = false;
                    this.list = res.data.content;
                    this.total = res.data.totalElements;
                } else {
                    this.$Message.error(res.message);
                }
            })
        },
        refreshPageManual() {
            this.currentPageIdx = 1;
            this.pageNo = 1;
            this.init();
        },
        search() {
            this.pageNum = this.currentPageIdx = 1;
            this.init();
        },
        changePage(index) {
            this.pageNum = this.currentPageIdx = index;
            this.init();
        },
        addSetting() {//添加配置
            this.modal = true;
        },
        cancel() {
            for (let key in this.formTop) {
                this.formTop[key] = "";
            }
        },
        sure() {
            const userInfo = JSON.parse(Cookies.get('userInfo'));
            for (let key in this.formTop) {
                if (this.formTop[key] == "") {
                    console.log(key);
                    this.$Message.error("所有内容为必填项");
                    return;
                }
            }
            const params = Object.assign({ admin: userInfo.id }, this.formTop);
            registerGiftExamineAdd(params).then(res => {
                if (res.code == 0) {
                    this.$Message.success(res.message);
                    this.modal = false;
                } else {
                    this.$Message.error(res.message);
                }
            })
        },
        select(selection) {
            this.selection = selection;

        },
        deleteSetting() {
            if (this.selection.length == 0) {
                return;
            }
            const list = this.selection.map(ele => ele.id);
            registerGiftExamineDelete({ ids: list.join(",") }).then(res => {
                if (res.code == 0) {
                    this.$Message.success(res.message);
                    this.init();
                }
            });
        }
    },
    created() {
        this.init();
        this.getAllunit();
    }
}
</script>

<style lang="less" scoped>
</style>