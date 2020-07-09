<template>
    <div>
        <Card>
            <p slot="title">
                实名管理
                <Button type="primary" size="small" @click="refreshPageManual">
                    <Icon type="refresh"></Icon>
                    刷新
                </Button>
            </p>

            <Row class="functionWrapper">
                <div class="searchWrapper clearfix">

                    <div class="poptip">
                        <Poptip trigger="hover" content="请输入用户名或姓名搜索" placement="bottom-start">
                            <Input placeholder="请输入用户名或姓名搜索" v-model="filterSearch.account" />
                            </Input>
                        </Poptip>
                    </div>

                    <div class="poptip">
                        <Poptip trigger="hover" content="请输入身份证号搜索" placement="bottom-start">
                            <Input placeholder="请输入身份证号搜索" v-model="filterSearch.cardNo" />
                            </Input>
                        </Poptip>
                    </div>

                    <div class="orderStatus">
                        <span>审核状态：</span>
                        <Select v-model="filterSearch.kycStatus">
                            <Option v-for="item in applyStatusArr" :value="item.kycStatus" :key="item.kycStatus">{{ item.text }}</Option>
                        </Select>
                    </div>

                    <div class="btns">
                        <Button type="info" size="small" @click="searchByFilter">搜索</Button>
                    </div>

                </div>

                <!-- <div class="btnsWrapper clearfix">
          <Button type="success" @click="outexcel">导出</Button>
        </div> -->
            </Row>

            <Row class="margin-top-10 searchable-table-con1">
                <Table :columns="columns_first" :data="userpageCopy" border :loading="ifLoading" class='user_center' @on-sort-change="definedOrder" ref="outTabel"></Table>
            </Row>

            <div class="pageWrapper">
                <Page :total="totalNum" :current="currentPageIdx" @on-change="changePage" show-elevator></Page>
            </div>
        </Card>
    </div>
</template>

<script>

import { MemberRealNameList, MemberRealNameDetail, memberCheckPass, memberCheckNotPass } from '@/service/getData';
import { setStore, getStore, removeStore } from '@/config/storage';
import loginVue from '../login.vue';
const map = new Map([['1', '视频审核'], ['2', '实名审核失败'], ['3', '视频审核失败'], ['4', '实名成功'], ['5', '待实名审核'], ['6', '待视频审核']]);
const applyStatusArr = [];
for (let [key, value] of map.entries()) {
    applyStatusArr.push({ kycStatus: key, text: value });
}
applyStatusArr.unshift({
    kycStatus: "",
    text: "全部"
});
const checkMsg = () => {
    removeStore('AuthenticateID');
    setStore('AuthenticateID', obj.row.id);
    this.$router.push('memberaudit/auditdetail');
    // if (statusTxt === '查看') {
    //     this.$router.push('memberaudit/auditdetail');
    // } else if (statusTxt === '待审核') {
    //     this.$store.commit('switchMemberMask', true);
    //     MemberRealNameDetail({ id: obj.row.id })
    //         .then(res => {
    //             this.userInfo = res.data;
    //             let imgArr = [
    //                 { front: res.data.identityCardImgFront },
    //                 { inHand: res.data.identityCardImgInHand },
    //                 { reverse: res.data.identityCardImgReverse }
    //             ]
    //             this.$store.commit('memeberCheckImg', { imgArr: imgArr, id: obj.row.id })
    //         })
    // }
}
export default {
    data() {
        return {
            userInfo: {},
            imgArr: [],
            sortSearch: {
                direction: [],
                property: []
            },
            filterSearch: {
                account: '',
                cardNo: '',
                kycStatus: ''
            },
            applyStatusArr,
            currentPageIdx: 1,
            ifLoading: true,
            totalNum: null,

            columns_first: [
                {
                    type: 'selection',
                    width: 60,
                    align: 'center',
                },
                {
                    title: "编号",
                    key: "id",
                    width: 80
                },
                {
                    title: "会员ID",
                    width: 80,
                    key: "memberID",
                    render: (h, obj) => {
                        const row = obj.row;
                        const memberID = row.member.id;
                        return h("span", {}, memberID);
                    }
                },
                {
                    title: "用户名",
                    render: (h, params) => {
                        const row = params.row;
                        const member = row.member.username;
                        return h("span", {}, member);
                    }
                },
                {
                    title: "真实姓名",
                    key: "realName"
                },
                {
                    title: "身份证号码",
                    key: "idCard",
                },
                {
                    title: "注册时间",
                    key: "member.registrationTime",
                    sortable: 'custom',
                    render: (h, params) => {
                        const row = params.row;
                        const member = row.member.registrationTime;
                        return h("span", {}, member);
                    }
                },
                {
                    title: "状态",
                    render: (h, obj) => {
                        const row = obj.row;
                        let kycStatus = row.kycStatus;
                        let str = "";
                        switch (kycStatus) {
                            case 5:
                                str = '待一级审核';
                                break;
                            case 2:
                                str = '一级审核失败';
                                break;
                            case 6:
                                str = "待二级审核"
                            case 1:
                                str = "一级审核成功";
                                break;
                            case 3:
                                str = '二级审核失败';
                                break;
                            case 4:
                                str = '实名成功';
                                break;
                        }

                        return h("div", {}, str);
                    }
                },
                {
                    title: "操作",
                    render: (h, obj) => {
                        let kycStatus = obj.row.kycStatus;
                        let statusTxt = map.get(String(kycStatus));
                        let str = null;
                        const cardFun = () => {
                            this.$store.commit('switchMemberMask', true);
                            MemberRealNameDetail({ id: obj.row.id })
                                .then(res => {
                                    this.userInfo = res.data;
                                    let imgArr = [
                                        { front: res.data.identityCardImgFront },
                                        { inHand: res.data.identityCardImgInHand },
                                        { reverse: res.data.identityCardImgReverse }
                                    ]
                                    this.$store.commit('memeberCheckImg',{ imgArr: imgArr, id: obj.row.id } )
                                })
                        };
                        const videoFun = () => {
                            this.$store.commit('switchVideoMask', true);
                            MemberRealNameDetail({ id: obj.row.id })
                                .then(res => {
                                    this.userInfo = res.data;

                                    let videoUrl = res.data.videoUrl;
                                    this.$store.commit('memberCheckVideo', { videoUrl, id: obj.row.id })
                                })
                        }
                        switch (kycStatus) {
                            case 5:
                                str = h("Button", { props: { type: "info" }, on: { click: cardFun } }, '身份证审核');//已上传身份证信息;去审核
                                break;
                            case 2:
                                str = h("Button", { props: { type: "info" }, on: { click: cardFun } }, '身份证审核失败');//已上传身份证信息;审核失败
                                break;
                            case 6:
                                str = h("Button", { props: { type: "info" }, on: { click: videoFun } }, '视频审核');//已上传身份证信息;审核成功; 未上传视频
                                break;
                            case 1:
                                str = h("Button", { props: { type: "info" }, on: { click: cardFun } }, '身份证审核');//一级审核已通过,未上传视频
                                break;
                            case 3:
                                str = h("Button", { props: { type: "error" }, on: { click: videoFun } }, '二级审核失败');//已上传视频，二级审核失败
                                break;
                            case 4:
                                str = h("Button", {
                                    props: { type: "success" },
                                    on: {
                                        click: () => {
                                            removeStore('AuthenticateID');
                                            setStore('AuthenticateID', obj.row.id);
                                            this.$router.push('memberaudit/auditdetail');
                                        }
                                    }
                                }, '实名成功');//已上传视频，二级审核失败
                                break;
                        }

                        return str;
                        if (!status) {
                            statusTxt = '待审核';
                            btnType = 'info';
                        } else {
                            statusTxt = '查看';
                            btnType = 'success';
                        }

                        return h("Button", {
                            // 0-未实名、1-视频审核,2-实名审核失败、3-视频审核失败,4-实名成功,5-待实名审核 ,6-待视频审核
                            props: {
                                type: btnType,
                                size: 'small'
                            },
                            on: {
                                click: () => {
                                    removeStore('AuthenticateID');
                                    setStore('AuthenticateID', obj.row.id);
                                    if (statusTxt === '查看') {
                                        this.$router.push('memberaudit/auditdetail');
                                    } else if (statusTxt === '待审核') {

                                    }
                                }
                            }
                        }, statusTxt);
                    }
                },
            ],
            userpage: [],
            userpageCopy: []
        };
    },
    methods: {
        // outexcel(){
        //   this.$refs.outTabel.exportCsv({
        //     filename:"实名",
        //   })
        // },
        definedOrder(obj) {
            let direction = obj.order === 'desc' ? 1 : 0;
            let propertyIndex = this.sortSearch.property.indexOf(obj.key);

            if (propertyIndex !== -1) {
                this.sortSearch.direction[propertyIndex] = direction;
            } else {
                this.sortSearch.property.push(obj.key);
                this.sortSearch.direction.push(direction);
            }

            let subObj = { pageNo: 1, pageSize: 10 };
            Object.assign(subObj, this.filterSearch, this.sortSearch);

            this.refreshPage(subObj)
        },
        searchByFilter() {
            this.$store.commit('switchLoading', true);
            this.currentPageIdx = 1;

            let subObj = { pageNo: 1, pageSize: 10, kycStatus: this.status };

            Object.assign(subObj, this.filterSearch);

            this.refreshPage(subObj)
        },
        refreshPageManual() {
            for (let val in this.filterSearch) {
                this.filterSearch[val] = '';
            }

            this.refreshPage({ pageNo: 1, pageSize: 10, kycStatus: this.status });

        },
        filterUser(val) {
            this.userpageCopy = [];
            this.userpage.forEach(item => {
                if (item.kycStatus === val) {
                    this.userpageCopy.push(item);
                }
            })
            if (val === 'all') this.userpageCopy = this.userpage;
        },
        refreshPage(obj) {
            this.ifLoading = true;
            MemberRealNameList(obj)
                .then(res => {
                    if (!res.code) {
                        this.ifLoading = false;
                        this.userpage = res.data.content;
                        this.totalNum = res.data.totalElements;
                        this.userpageCopy = [...this.userpage];
                    } else this.$Message, error(res.message);

                    this.$store.commit('switchLoading', false);
                });
        },
        changePage(pageIndex) {
            this.currentPageIdx = pageIndex;
            // this.ifLoading = true;

            let subObj = { pageNo: pageIndex, pageSize: 10, kycStatus: this.status };

            Object.assign(subObj, this.filterSearch);

            this.refreshPage(subObj);
        },
        refreshPageStatus(obj) {
            MemberRealNameList(obj)
                .then(res => {
                    if (!res.code) {
                        this.ifLoading = false;
                        this.userpage = res.data.content;
                        this.userpageCopy = [...this.userpage];
                        this.totalNum = res.data.totalElements;
                        this.userpageCopy.forEach(item => {
                            if (!!item.kycStatus) item._disabled = true;
                            else item._disabled = false;
                        })
                    } else this.$Message.error(res.message);
                });
        },
        judgeStatus(obj) {
            console.log(obj)
            if (obj.status === undefined) this.status = null
            else this.status = this.$route.query.status;
            this.refreshPageStatus({ pageNo: 1, pageSize: 10, kycStatus: this.status });
        }
    },
    created() {
        this.judgeStatus(this.$route.query);
    },
    computed: {
        date() {
            return this.$store.state.user.date
        }
    },
    watch: {
        '$route'(to) {
            this.judgeStatus(to);
        },
        date(newVal, oldVal) {
            let subObj = { pageNo: this.currentPageIdx, pageSize: 10, kycStatus: this.status };
            Object.assign(subObj, this.filterSearch);
            this.refreshPage(subObj);
        }
    }
};
</script>

<style scoped lang='less'>
</style>
