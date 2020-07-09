<template>
    <div>
        <Card>
            <p slot="title">
                余额管理
                <Button type="primary" size="small" @click="refreshPageManual">
                    <Icon type="refresh"></Icon>
                    刷新
                </Button>
            </p>
            <Tabs value="coin" @on-click="tabChange">
                <TabPane label="币币账户" name="coin">

                    <Row class="functionWrapper">
                        <div class="searchWrapper clearfix">

                            <div class="poptip">
                                <Poptip trigger="hover" content="请输入用户名、邮箱、手机或姓名搜索" placement="bottom-start">
                                    <Input placeholder="请输入用户名、邮箱、手机或姓名搜索" v-model="filterSearch.account" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip">
                                <Poptip trigger="hover" content="请输入币种搜索" placement="bottom-start">
                                    <Input placeholder="请输入币种搜索" v-model="filterSearch.unit" />
                                    </Input>
                                </Poptip>
                            </div>
                            <br>
                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入可用币最低数搜索" placement="bottom-start">
                                    <Input placeholder="可用币最低数搜索" v-model="filterSearch.minBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入可用币最高数搜索" placement="bottom-start">
                                    <Input placeholder="可用币最高数搜索" v-model="filterSearch.maxBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入冻结币最低数搜索" placement="bottom-start">
                                    <Input placeholder="冻结币最低数搜索" v-model="filterSearch.minFrozenBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入冻结币最高数搜索" placement="bottom-start">
                                    <Input placeholder="冻结币最高数搜索" v-model="filterSearch.maxFrozenBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入总币最低数搜索" placement="bottom-start">
                                    <Input placeholder="总币最低数搜索" v-model="filterSearch.minAllBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入总币最高数搜索" placement="bottom-start">
                                    <Input placeholder="总币最高数搜索" v-model="filterSearch.maxAllBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="btns">
                                <Button type="info" size="small" @click="searchByFilter">搜索</Button>
                            </div>

                        </div>
                    </Row>

                    <Row class="margin-top-10 searchable-table-con1">
                        <Table ref="selection" :columns="columns_first" :data="userpage" border :loading="ifLoading">
                        </Table>
                    </Row>

                    <Row class="pageWrapper">
                        <Page :total="pageNum" :current="currentPageIdx" class="buttomPage" @on-change="changePage" show-elevator></Page>
                    </Row>
                </TabPane>
                <TabPane label="法币账户" name="paper">
                    <Row class="functionWrapper">
                        <div class="searchWrapper clearfix">

                            <div class="poptip">
                                <Poptip trigger="hover" content="请输入用户名、邮箱、手机或姓名搜索" placement="bottom-start">
                                    <Input placeholder="请输入用户名、邮箱、手机或姓名搜索" v-model="paperfilterSearch.account" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip">
                                <Poptip trigger="hover" content="请输入币种搜索" placement="bottom-start">
                                    <Input placeholder="请输入币种搜索" v-model="paperfilterSearch.unit" />
                                    </Input>
                                </Poptip>
                            </div>
                            <br>
                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入可用币最低数搜索" placement="bottom-start">
                                    <Input placeholder="可用币最低数搜索" v-model="paperfilterSearch.minBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入可用币最高数搜索" placement="bottom-start">
                                    <Input placeholder="可用币最高数搜索" v-model="paperfilterSearch.maxBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入冻结币最低数搜索" placement="bottom-start">
                                    <Input placeholder="冻结币最低数搜索" v-model="paperfilterSearch.minFrozenBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入冻结币最高数搜索" placement="bottom-start">
                                    <Input placeholder="冻结币最高数搜索" v-model="paperfilterSearch.maxFrozenBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="poptip range">
                                <Poptip trigger="hover" content="请输入总币最低数搜索" placement="bottom-start">
                                    <Input placeholder="总币最低数搜索" v-model="paperfilterSearch.minAllBalance" />
                                    </Input>
                                </Poptip>
                                ~
                                <Poptip trigger="hover" content="请输入总币最高数搜索" placement="bottom-start">
                                    <Input placeholder="总币最高数搜索" v-model="paperfilterSearch.maxAllBalance" />
                                    </Input>
                                </Poptip>
                            </div>

                            <div class="btns">
                                <Button type="info" size="small" @click="papersearchByFilter">搜索</Button>
                            </div>

                        </div>
                    </Row>

                    <Row class="margin-top-10 searchable-table-con1">
                        <Table ref="selection" :columns="columns_two" :data="paperpage" border :loading="ifLoading">
                        </Table>
                    </Row>

                    <Row class="pageWrapper">
                        <Page :total="paperpageNum" :current="papercurrentPageIdx" class="buttomPage" @on-change="changePaperPage" show-elevator></Page>
                    </Row>
                </TabPane>
            </Tabs>

        </Card>
    </div>
</template>

<script>
import { memberAsset, paperAsset } from "@/service/getData";

export default {
    data() {
        return {
            /**
             * unit
             * walletAddress
             * account //用户名、邮箱、手机、姓名
             *
             * property 排序字段
             * direction 0 1
             */
            total: 0,
            currentPageIdx: 1,
            papercurrentPageIdx: 1,
            levelcurrentPageIdx: 1,
            filterSearch: {
                unit: "",
                account: "",
                minBalance: "",
                maxBalance: "",
                minFrozenBalance: "",
                maxFrozenBalance: "",
                minAllBalance: "",
                maxAllBalance: ""
            },
            paperfilterSearch: {
                unit: "",
                account: "",
                minBalance: "",
                maxBalance: "",
                minFrozenBalance: "",
                maxFrozenBalance: "",
                minAllBalance: "",
                maxAllBalance: ""
            },
            levelfilterSearch: {
                unit: "",
                account: "",
                minBalance: "",
                maxBalance: "",
                minFrozenBalance: "",
                maxFrozenBalance: "",
                minAllBalance: "",
                maxAllBalance: ""
            },
            pageSize: null,
            pageNum: null,
            paperpageNum: null,
            userpage: [],
            paperpage: [],
            levelpage: [],
            ifLoading: true,
            columns_first: [
                {
                    title: "会员ID",
                    key: "memberId"
                },
                {
                    title: "用户名",
                    key: "username"
                },
                {
                    title: "邮箱",
                    key: "email"
                },
                {
                    title: "手机号",
                    key: "mobilePhone"
                },
                {
                    title: "真实姓名",
                    key: "realName"
                },
                {
                    title: "币种名称",
                    key: "unit"
                },
                // {
                //   title: "钱包地址",
                //   key: "address"
                // },
                {
                    title: "可用币数",
                    key: "balance"
                },
                {
                    title: "冻结币数",
                    key: "frozenBalance"
                },
                {
                    title: "总币个数",
                    key: "allBalance"
                }
            ],
            columns_two: [
                {
                    title: "会员ID",
                    key: "memberId"
                },
                {
                    title: "用户名",
                    key: "username"
                },
                {
                    title: "邮箱",
                    key: "email"
                },
                {
                    title: "手机号",
                    key: "mobilePhone"
                },
                {
                    title: "真实姓名",
                    key: "realName"
                },
                {
                    title: "币种名称",
                    key: "unit"
                },
                // {
                //   title: "钱包地址",
                //   key: "address"
                // },
                {
                    title: "可用币数",
                    key: "balance"
                },
                {
                    title: "冻结币数",
                    key: "frozenBalance"
                },
                {
                    title: "总币个数",
                    key: "allBalance"
                }
            ],
            columns_three: [
                {
                    title: "会员ID",
                    key: "memberId"
                },
                {
                    title: "用户名",
                    render: (h, params) => {
                        const username = params.row.leverWalletList[0].memberName;
                        return h("span", {}, username);
                    }
                },
                {
                    title: "邮箱",
                    render: (h, params) => {
                        const username = params.row.leverWalletList[0].email;
                        return h("span", {}, username);
                    }
                },
                {
                    title: "手机号",
                    render: (h, params) => {
                        const username = params.row.leverWalletList[0].mobilePhone;
                        return h("span", {}, username);
                    }
                },
                {
                    title: "可用币数",
                    render: (h, params) => {
                        const txt = params.row.leverWalletList[0].balance + ' ' + params.row.leverWalletList[0].coin.name;
                        const txts = params.row.leverWalletList[1].balance + ' ' + params.row.leverWalletList[1].coin.name;
                        return [h("p", {}, txts), h("p", {}, txt)];
                    }
                },
                {
                    title: "冻结币数",
                    render: (h, params) => {
                        const txt = params.row.leverWalletList[0].frozenBalance + ' ' + params.row.leverWalletList[0].coin.name;
                        const txts = params.row.leverWalletList[1].frozenBalance + ' ' + params.row.leverWalletList[1].coin.name;
                        return [h("p", {}, txts), h("p", {}, txt)];
                    }
                },
                {
                    title: "已借",
                    render: (h, params) => {
                        const txt = params.row.baseLoanCount + ' ' + params.row.leverWalletList[0].coin.name;
                        const txts = params.row.coinLoanCount + ' ' + params.row.leverWalletList[1].coin.name;
                        return [h("p", {}, txts), h("p", {}, txt)]
                    }
                }
            ]
        };
    },
    methods: {
        tabChange(name) {
            if (name == "coin") {
                this.refreshPage({ pageNo: 1, pageSize: 10 });
            } else if (name == "paper") {
                this.getPaper({ pageNo: 1, pageSize: 10 })
            }
        },
        searchByFilter() {
            let bol =
                Number(this.filterSearch.minBalance) >
                Number(this.filterSearch.maxBalance) ||
                Number(this.filterSearch.minFrozenBalance) >
                Number(this.filterSearch.maxFrozenBalance) ||
                Number(this.filterSearch.minAllBalance) >
                Number(this.filterSearch.maxAllBalance);

            if (bol) {
                this.$Message.warning("最低币数不能大于最高币数");
            } else {
                this.$store.commit("switchLoading", true);
                this.currentPageIdx = 1;

                let obj = Object.assign(this.filterSearch, { pageNo: 1, pageSize: 10 });
                this.refreshPage(obj);
            }
        },
        papersearchByFilter() {
            let bol =
                Number(this.paperfilterSearch.minBalance) >
                Number(this.paperfilterSearch.maxBalance) ||
                Number(this.paperfilterSearch.minFrozenBalance) >
                Number(this.paperfilterSearch.maxFrozenBalance) ||
                Number(this.paperfilterSearch.minAllBalance) >
                Number(this.paperfilterSearch.maxAllBalance);

            if (bol) {
                this.$Message.warning("最低币数不能大于最高币数");
            } else {
                this.$store.commit("switchLoading", true);
                this.papercurrentPageIdx = 1;

                let obj = Object.assign(this.paperfilterSearch, { pageNo: 1, pageSize: 10 });
                this.getPaper(obj);

            }
        },
        levelsearchByFilter() {
            let bol =
                Number(this.levelfilterSearch.minBalance) >
                Number(this.levelfilterSearch.maxBalance) ||
                Number(this.levelfilterSearch.minFrozenBalance) >
                Number(this.levelfilterSearch.maxFrozenBalance) ||
                Number(this.levelfilterSearch.minAllBalance) >
                Number(this.levelfilterSearch.maxAllBalance);

            if (bol) {
                this.$Message.warning("最低币数不能大于最高币数");
            } else {
                this.$store.commit("switchLoading", true);
                this.papercurrentPageIdx = 1;

                let obj = Object.assign(this.levelfilterSearch, { pageNum: 1, pageSize: 10 });
                this.getLevel(obj);

            }
        },
        /**
         * unit
         * walletAddress
         * account //用户名、邮箱、手机、姓名
         *
         * property 排序字段
         * direction 0 1
         */

        changePage(pageIndex) {
            this.ifLoading = true;
            this.currentPageIdx = pageIndex;

            let obj = Object.assign(this.filterSearch, {
                pageNo: pageIndex,
                pageSize: 10
            });
            this.refreshPage(obj);
        },
        changePaperPage(pageIndex) {
            this.ifLoading = true;
            this.papercurrentPageIdx = pageIndex;

            let obj = Object.assign(this.paperfilterSearch, {
                pageNo: pageIndex,
                pageSize: 10
            });
            this.getPaper(obj);
        },
        levelchangePage(pageIndex) {
            this.ifLoading = true;
            this.levelrcurrentPageIdx = pageIndex;

            let obj = Object.assign(this.levelfilterSearch, {
                pageNum: pageIndex,
                pageSize: 10
            });
            this.getPaper(obj);
        },
        refreshPageManual() {
            for (let val in this.filterSearch) {
                this.filterSearch[val] = "";
            }
            for (let val in this.paperfilterSearch) {
                this.paperfilterSearch[val] = "";
            }
            this.ifLoading = true;
            this.refreshPage({ pageNo: 1, pageSize: 10 });
            this.getPaper({ pageNo: 1, pageSize: 10 });
            this.getLevel({ pageNum: 1, pageSize: 10 });
        },
        refreshPage(obj = {}) {
            memberAsset(obj).then(res => {
                if (!res.code) {
                    this.pageNum = res.data.totalElements;
                    this.userpage = res.data.content;
                    this.ifLoading = false;
                    this.$store.commit("switchLoading", false);
                } else this.$Message.error("获取数据出错！");
            });
        },
        getPaper(obj = {}) {
            paperAsset(obj).then(res => {
                if (!res.code) {
                    this.paperpageNum = res.data.totalElements;
                    this.paperpage = res.data.content;
                    this.ifLoading = false;
                    this.$store.commit("switchLoading", false);
                } else this.$Message.error("获取数据出错！");
            })
        }
    },
    created() {
        this.refreshPage();
    }
};
</script>

<style lang="less" >
.ivu-card-body {
    padding: 17px;
}
</style>