<template>
    <div class="notice common" style="min-height:519px">
        <div class="banner">
            <span>{{$t('footer.bulletinboard')}}</span>
        </div>
        <div class="main" >
            <div class="list">
                <div class="item" v-for="item in FAQList" @click="noticedeail(item.id)">
                    <span class="text">{{item.title}}</span>
                    <img v-show="item.isTop==0" class="iconimg" src="../../assets/images/icon-top.png" alt="">
                    <span class="time">
                        {{item.createTime}}
                    </span>
                </div>
            </div>
            <div class="page">
                <Page v-show="showPage" :total="totalNum" :pageSize="pageSize" :current="pageNo" @on-change="loadDataPage"></Page>
            </div>
        </div>
        <!-- <div class="help_container">
          <div style="line-height: 40px;font-size:16px;"><router-link to="/help" style="color:#3399ff;">{{$t('cms.servicecenter')}}</router-link>->{{$t('cms.notice')}}</div>

            <Col span="24" style="padding:0 2%;color:#000;font-size:18px;background:#fff">
                <div class="faqlist">
                    <div v-for="item,index in FAQList" class="faqitem" @click="noticedeail(item.id)" v-if="titleLang(item.title)===lang">{{item.title}}
                        <span style="float:right">{{item.createTime}}</span>
                    </div>
                </div>
            </Col>

        </div>
        <Col span="24" style="padding:100px 0;">


         </Col> -->
    </div>
</template>
<style lang="scss" scoped>
.notice {
    padding-top: 60px;
    .banner {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 280px;
        background: url("../../assets/images/notice.jpg");
        color: #fff;
        font-size: 40px;
    }
    .main {
        width: 70%;
        margin: 0 auto;
        background-color: #fff;
        color: #333;
        box-shadow: 0 0 2px #ccc;
        margin-top: -50px;
        border-radius: 6px;
        padding: 50px 100px;
        margin-bottom: 50px;
        .list {
            font-size: 14px;
            .item {
                line-height: 40px;
                border-bottom: 1px solid #f0f0f0;
                cursor: pointer;
                .iconimg {
                    width: 14px;
                    vertical-align: sub;
                    margin-left: 20px;
                }
                .time {
                    float: right;
                    color: #999;
                    font-size: 14px;
                }
            }
        }
        .page {
            text-align: right;
            margin-top: 20px;
        }
    }
}
</style>
<script>
import { minHeightMinx } from "../../minxs/minxs"
export default {
    // mixins: [minHeightMinx],
    data() {
        return {
            pageNo: 1,
            pageSize: 10,
            totalNum: 0,
            FAQList: [],
            showPage: false

        };
    },
    created: function () {
        this.init();
    },
    computed: {
        lang() {
            return this.$store.state.lang;
        }
    },
    methods: {
        init() {
            this.$store.state.HeaderActiveName = "1-7";
            this.$store.commit("navigate", "nav-service");
            this.loadDataPage(this.pageNo);
        },
        loadDataPage(pageIndex) {
            var param = {};
            (param["pageNo"] = pageIndex),
                (param["pageSize"] = this.pageSize),
                this.$http
                    .post(this.host + this.api.uc.announcement, param)
                    .then(response => {
                        var resp = response.body;
                        if (resp.code == 0) {

                            if (resp.data.content.length == 0) return;
                            if (resp.data.totalElements <= 10) {
                                this.showPage = false;
                            } else {
                                this.showPage = true;
                            }
                            this.FAQList = resp.data.content;
                            this.totalNum = resp.data.totalElements;
                        } else {
                            this.$Notice.error({
                                title: this.$t("common.tip"),
                                desc: resp.message
                            });
                        }
                    });
        },
        noticedeail(id) {
            var path = { path: "/notice/index", query: { id: id } };
            this.$router.push(path);
        },
        titleLang(str) {
            const reg = new RegExp("[\\u4E00-\\u9FFF]+", "g");
            if (reg.test(str)) {
                return "简体中文";
            } else {
                return "English";
            }
        }
    }
};
</script>
<style lang="scss">
.ivu-page .ivu-page-item.ivu-page-item-active:hover {
    a {
        color: #fff;
    }
}
.ivu-page .ivu-page-item {
    &:hover {
        border: 1px solid #3399ff;
        a {
            color: #3399ff;
        }
    }
}
</style>
