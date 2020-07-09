<template>
    <div>
        <Card>
            <p slot="title">
                注册送币审核
                <Button type="primary" size="small" @click="refreshPageManual">
                    <Icon type="refresh"></Icon>
                    刷新
                </Button>
            </p>

            <Row class="functionWrapper">
                <div class="searchWrapper">
                    <Form :model="formline" label-position="left" :label-width="70" inline>
                        <FormItem label="会员名称:">
                            <Input v-model="formline.memberName"></Input>
                        </FormItem>
                        <FormItem label="手机号:">
                            <Input v-model="formline.phone"></Input>
                        </FormItem>
                        <FormItem label="注册时间">
                            <DatePicker type="date" v-model="formline.startTime" placeholder="开始时间" style="width: 150px"></DatePicker>
                            <DatePicker type="date" v-model="formline.endTime" placeholder="结束时间" style="width: 150px"></DatePicker>
                        </FormItem>
                        <FormItem label="审核状态">
                            <Select v-model="formline.releaseState" style="width:200px">
                                <Option v-for="(item,index) in allStyle" :value="item.value" :key="index">{{ item.text}}</Option>
                            </Select>
                        </FormItem>
                    </Form>
                </div>
            </Row>
            <Row class="functionWrapper">
                <div class="searchWrapper">
                    <Button @click="search" type="primary">搜索</Button>
                    <Button @click="clear" type="default">重置</Button>
                    <Button @click="examine" type="primary">一键审核</Button>
                </div>
            </Row>
            <Row class="tableWrapper">
                <Table :columns="columns" :data="list" border :loading="ifLoading" @on-selection-change="select">
                </Table>
            </Row>
            <Row class="pageWrapper">
                <Page :total="total" :current="currentPageIdx" @on-change="changePage" show-elevator></Page>
            </Row>

        </Card>
    </div>
</template>

<script>
import { registerGiftExamineRecord, GiftExamine } from '@/service/getData';
import dtime from 'time-formater';
const map = new Map([['', '全部'], ['0', '未审核'], ['1', '已审核']]);
const getParamsFun = (pageSize) => (pageNo) => (formline) => Object.assign({}, { pageSize, pageNo }, formline);
const getParams = getParamsFun(10);
export default {
    data() {
        return {
            list: [],
            total: 0,
            pageNo: 1,
            formline: {
                memberName: "",
                phone: "",
                startTime: "",
                endTime: "",
                releaseState: "0"
            },
            allStyle: [
                {
                    value:"",
                    text:"全部"
                },
                {
                    value:"0",
                    text:"未审核"
                },
                {
                    value:"1",
                    text:"已审核"
                }
            ],
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
                    title: "会员名称",
                    key: "userName"
                },
                {
                    title: '手机号',
                    key: 'phone'
                },
                {
                    title: '邮箱',
                    key: 'email'
                },
                {
                    title: '注册时间',
                    key: 'registerTime'
                },
                {
                    title: '送币数量',
                    key: 'releaseBalance',
                    render:(h,params)=>{
                        return h("div",{},params.row.releaseBalance+" "+params.row.coinUnit)
                    }
                },
                {
                    title: '审核状态',
                    render: (h, params) => {
                        return h("div", {}, map.get(params.row.releaseState))
                    }
                },
            ]
        }
    },
    methods: {
        select(selection) {
            this.selection = selection;
        },
        examine() {
            if (this.selection.length == 0) {
                return;
            }
            const list = this.selection.map(ele => ele.id);
            GiftExamine({ id: list }).then(res => {
                if (res.code == 0) {
                    this.$Message.success(res.message);
                    this.init();
                }
            });
        },
        init() {
            const params = getParams(this.pageNo)(this.formline);
            registerGiftExamineRecord(params).then(res => {
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
            this.pageNo = this.currentPageIdx = 1;
            for (let key in this.formline) {
                this.formline[key] = '';
            }
            this.init();
        },
        search() {
            if (this.formline.startTime) {
                this.formline.startTime = this.formatTime(this.startTime);
            }
            if (this.formline.endTime) {
                this.formline.endTime = this.formatTime(this.endTime);
            }
            console.log(this.formline);
            this.pageNum = this.currentPageIdx = 1;
            this.init();
        },
        clear() {
            for (let key in this.formline) {
                this.formline[key] = '';
            }
        },
        changePage(index) {
            this.pageNo = this.currentPageIdx = index;
            this.init();
        },
        formatTime(date) {
            return dtime(date).format('YYYY-MM-DD HH:mm:ss');
        }
    },
    created() {
        this.init();
    }
}
</script>

<style lang="less" scoped>
</style>