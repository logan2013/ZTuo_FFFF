<template>
    <div class="help common">
        <img class="bannerimg" src="../../assets/images/help_banner.png">
        <div class="help_container">
            <!-- <h1>{{cateTitle}}</h1> -->
            <h1>{{$t("footer.helpCenter")}}</h1>
            <div class="list">
                <!-- <router-link class="item" v-for="(item,index) in list" :key="index" :to="{path:'helpdetail',query:{cate:cate,id:item.id,cateTitle:cateTitle}}"> -->
                <router-link class="item" v-for="(item,index) in list" :key="index" :to="{path:'helpdetail',query:{id:item.id}}">
                    <span class="text">{{item.title}}</span>
                    <img v-show="item.isTop==0" class="iconimg" src="../../assets/images/icon-top.png" alt="">
                    <span class="time">
                        {{item.createTime}}
                    </span>
                </router-link>
                <!-- <router-link class="item" v-for="(item,index) in list" :key="index" :to="{path:'helpdetail',query:{id:item.id}}"></router-link> -->
            </div>
            <!-- <div class="page">
                <Page :total="total" :pageSize="pageSize" :current="pageNo" @on-change="pageChange"></Page>
            </div> -->
        </div>
    </div>
</template>
<style lang="scss" scoped>
.helplist {
    width: 60%;
    margin: 0 auto;
    padding: 80px 0;
    min-height:569px!important;
    .container {
        > h1 {
            text-align: center;
            margin: 30px 0 20px 0;
        }
    }
}
.help {
  background: white;
  padding-top: 60px;
  height: 100%;
  background-size: cover;
  position: relative;
  overflow: hidden;
  padding-bottom: 50px;
//   padding-top: 60px;
}
.help .bannerimg {
    display: block;
    width: 100%;
}
.help_container {
    padding: 0 12%;
    height: 100%;
    margin-top:-210px;
    min-height: 387px;
    > h1 {
        font-size: 32px;
        line-height: 1;
        padding: 110px 0;
        text-align: center;
    }
}
.list {
    font-size: 16px;
    .item {
        color: #333;
        display: block;
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
.route-wrap {
    font-size: 14px;
    a {
        color: #3399ff;
    }
}
.page {
    margin-top: 20px;
    text-align: right;
}
</style>
<script>
export default {
    data() {
        return {
            cate: 0,
            pageNo: 1,
            pageSize: 10,
            total: 0,
            list: []
        };
    },
    created() {
        // this.$store.commit("navigate", "nav-uc");
        // const { cate, cateTitle } = this.$route.query;
        // this.cate = cate;
        // this.cateTitle = cateTitle;
        this.getAllData();
    },
    watch: {
        $route(to, from) {
            this.getAllData();
        }
    },
    methods: {
        pageChange(data) {
            this.pageNo = data;
            this.getData();
        },
        getAllData(){//查询所有帮助
            this.$http
                .post(this.host + "/uc/ancillary/system/help", {})
                .then(res => {
                    if (res.status == 200 && res.body.code == 0) {
                        this.list = res.body.data;
                    } else {
                        this.$Message.error(res.body.message);
                    }
                });
        },
        getData() {//查询指定类型的帮助;
            let params = {
                pageNo: this.pageNo,
                pageSize: this.pageSize,
                cate: this.cate
            };
            this.$http
                .post(this.host + "/uc/ancillary/more/help/page", params)
                .then(res => {
                    if (res.status == 200 && res.body.code == 0) {
                        this.list = res.body.data.content;
                    } else {
                        this.$Message.error(res.body.message);
                    }
                });
        }
    },
    mounted() {
        // const doc = document.body
        // const sreenHeight = doc.offsetHeight;
        // const headerHeight = doc.getElementsByTagName("header")[0].offsetHeight;
        // const footerHeight = doc.getElementsByTagName("footer")[0].offsetHeight;
        // const contentHeight = doc.getElementsByClassName("helplist")[0];
        // const bodyHeight = sreenHeight - headerHeight - footerHeight;
        // contentHeight.style.minHeight = bodyHeight + "px";
    }
};
</script>


