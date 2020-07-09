<template>
    <div>
        <Card>
            <p slot="title">
                积分记录
                <Button type="primary" size="small" @click="refreshPageManual">
                    <Icon type="refresh"></Icon>
                    刷新
                </Button>
            </p>

            <Row class="functionWrapper">
                <div class="searchWrapper">
                    <div class="poptip">
                        <span>发放时间：</span>
                        <DatePicker type="date" v-model="createStartTime" placeholder="开始时间" style="width: 200px"></DatePicker>
                        <DatePicker type="date" v-model="createEndTime" placeholder="结束时间" style="width: 200px"></DatePicker>
                    </div>
                    <div class="btns">
                        <Button type="info" @click="search">搜索</Button>
                    </div>
                </div>
            </Row>
            <Row class="tableWrapper">
                <Table :columns="columns" :data="list" border :loading="ifLoading">
                </Table>
            </Row>
            <Row class="pageWrapper">
                <Page :total="total" :current="currentPageIdx" @on-change="changePage" show-elevator></Page>
            </Row>

        </Card>
    </div>
</template>

<script>
import { allIntegralRecord } from '@/service/getData';
import dtime from 'time-formater'
const getParamsFun = (pageSize) => (pageNum) => (memberId) => (createStartTime)=>(createEndTime)=> ({
    pageNum, pageSize, memberId,createStartTime, createEndTime
});
const map = new Map([[0, "推广"], [1, '法币充值赠送'], [2, '币币充值赠送']]);
const getParams = getParamsFun(10);

export default {
    data() {
        return {
            list: [],
            total: 0,
            memberId:'',
            createStartTime:"",
            createEndTime:"",
            pageNum: 1,
            currentPageIdx: 1,
            ifLoading: true,
            columns: [
                {
                    title:"会员ID",
                    key:"memberId"
                },
                {
                    title: "类型",
                    render:(h,params)=>{
                        return h("div",{},map.get(params.row.type))
                    }
                },
                {
                    title: '数量',
                    render:(h,params)=>{
                        return h("div",{},"+"+params.row.amount)
                    }
                },
                {
                    title: '时间',
                    key: 'createTime'
                }
            ]
        }
    },
    methods: {
        init() {
            const params = getParams(this.pageNum)(this.memberId)(this.createStartTime)(this.createEndTime);
            allIntegralRecord(params).then(res => {
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
            this.pageNum = 1;
            this.createStartTime = "";
            this.createEndTime = "";
            this.init();
        },
        search() {
            if (this.createStartTime) {
                this.createStartTime = this.formatTime(this.createStartTime);
            }
            if (this.createEndTime) {
                this.createEndTime = this.formatTime(this.createEndTime);
            }
            this.pageNum = this.currentPageIdx = 1;
            this.init();
        },
        changePage(index) {
            this.pageNum = this.currentPageIdx = index;
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