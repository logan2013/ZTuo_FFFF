<template>
    <div class="content-wrap">
        <div class="ww">
            <div class="container">
                <Row>
                    <Col span="4">
                    <div class="leftmenu">
                        <ul class="nav nav-pills nav-stacked">
                            <li style="font-size:21px; margin: 0 8px;   border-bottom: 1px solid rgba(187, 179, 179, 0.17);">{{$t('cms.newshelp')}}</li>
                            <li class="pill-item" v-for="(item,index) in newlist" :class="{'active':ind === index}" @click="changeBgc(index)">
                                <div @click="onlistdetails(item)">{{$t("footer.xsrm")}}</div>
                            </li>
                        </ul>
                    </div>
                    </Col>
                    <Col span="18" style="background: #fff; margin-left: 17px;">
                    <!-- <keep-alive> -->
                    <router-view></router-view>
                    <!-- </keep-alive> -->
                    </Col>
                </Row>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  components: {},
  data() {
    return {
        // ind:'0',
        newlist: [
          {
            title: "",
            key: "1"
          }
        ]
    };
  },
  computed:{
    "ind":function () {
      let id = this.$route.query.id;
      if (typeof id != "undefined" && id != "") {
        return id - 1;
      }else {
        return 0;
      }
    }
  },
  methods: {
    init() {
      // this.$store.state.HeaderActiveName = '4';
    },
    onlistdetails(item){
        this.$router.push({ path: '/newhelp/index', query: {id: item.key}})
    },
    changeBgc: function (index) {
      // this.ind = index
    }
  },
  created: function() {
    this.init();
  }
};
</script>
<style scoped>
.leftmenu{

}
.leftmenu a.router-link-active {
    background: #3399ff;
    color: #ffffff !important;
    /*width: 216px;*/
}
.active{
    background: #3399ff;
    color: #ffffff !important;
    /*width: 216px;*/
    font-size: 16px;
    border-radius: 5px;
}
.icon4 {
  background: url("../../assets/img/moneyicon1.png") no-repeat 0 0;
  background-size: 100% 100%;
}

.icon5 {
  background: url("../../assets/img/moneyicon2.png") no-repeat 0 0;
  background-size: 100% 100%;
}

.order-table {
  margin-top: 20px;
}

.content-wrap {
  background: #f5f5f5;
  min-height: 750px;
}

.container {
  padding-top: 30px;
  margin: 0 auto;
  width:1200px;
}

/* left */
.leftmenu .nav-pills>li.active>a, .leftmenu .nav>li>a:hover, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover{
  color: red;
}
.leftmenu {
  margin-bottom: 60px;
  background: #fff;
  position: relative;
  min-height: 1px;
  padding: 20px 0px;
  padding-bottom: 0;
  border-radius: 5px;
}

.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}

.nav > li {
  line-height: 50px;
  cursor: pointer;
}

.leftmenu .nav-stacked {
  background: #fff;
}

.leftmenu .leftmenu-title {
  line-height: 55px;
  font-size: 16px;
  background: 0 0;
  color: #0b0d1b;
  /* padding-left: 20px; */
  /*border-top: #f1f1f1 solid 1px;
	border-bottom: #f1f1f1 solid 1px;*/
  display: block;
  /* cursor: pointer; */
}

.leftmenu .nav > li > a {
  display: block;
  color: #000;
  font-size: 14px;
}

.leftmenu .nav-pills > li.active > a,
.leftmenu .nav > li > a:hover,
.nav-pills > li.active > a:focus,
.nav-pills > li.active > a:hover {

  font-size: 16px;
}
.leftmenu .nav > li > div:hover,
.nav-pills > li.active > div:focus,
.nav-pills > li.active > div:hover {
     background: #3399ff;
    color: #ffffff !important;
    /*width: 216px;*/
    font-size: 16px;
}
.leftmenu .nav > li > div,
.nav-pills > li.active > div,
.nav-pills > li.active > div {

    font-size: 16px;
}
.leftmenu .leftmenu-title.top {
  border-top: 0;
}

.leftmenu .lefticon {
  width: 26px;
  height: 26px;
  margin-right: 5px;
  display: inline-block;
  vertical-align: middle;
}
</style>
<style>
.ivu-col.ivu-col-span-18{
  border-radius:5px;
}
  .content-wrap{
    padding:20px;
  }
  .uploaded-img{
    width:100%;
  }
</style>

