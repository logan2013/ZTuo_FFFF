<template>
  <div class="bic_wrapper">
    <div class="bic_banner"></div>
    <div class="content-wrap">
      <div class="bjc">
        <ul class="bjclist">
          <li v-for="(item, index) in bjclist" :key="index">
            <div class="title">
              <span>第{{item.periodNo}}期</span>
              <a @click="ruleshow(item.itemAddress)">中奖细则</a>
            </div>
            <div class="content">
              <div class="symbol">1{{item.quizType.quizCurrency}} / {{item.quizType.betAmount}}{{item.quizType.betCurrency}}</div>
              <child :content="item.quizType.deadline" @tozero="toZero(index)"></child>
              <!-- <child content="10:47:00" @tozero="tozero"></child> -->
            </div>
            <div class="circle">
              <i-circle :percent="item.betNum/item.maxSum*100" dashboard :size="200" stroke-color="#ffa020" trail-color="#e6e6e6" :stroke-width="4">
                <p class="remain">剩余</p>
                <p class="num">{{item.maxSum-item.betNum}}注</p>
              </i-circle>
              <div class="total">{{item.maxSum}}注</div>
            </div>
            <div v-if="item.maxSum-item.betNum == 0" class="button">
                <Button type="warning" @click="order(item.periodNo,item.quizType.id)" :disabled="true">立即下注</Button>
            </div>
            <div v-else class="button">
              <Button type="warning" @click="order(item.periodNo,item.quizType.id)" :disabled="bjclist[index].disabled">立即下注</Button>
            </div>
          </li>
        </ul>
      </div>
      <div class="bjc_table">
        <p class="title">开奖记录</p>

        <Table :columns="columns1" :data="data1"></Table>
        <div style="margin-top:20px;text-align:right;margin-right:20px;">
          <Page :total="total" @on-change="changepage" />
        </div>
      </div>
    </div>

    <Modal v-model="modal1" :footer-hide="true" width="900px">
      <p slot="header">中奖细则</p>
      <iframe :src="src" frameborder="0" style="width:100%;height:500px"></iframe>
    </Modal>
    <Modal v-model="modal2" :footer-hide="true" width="900px">
      <p slot="header">开奖详情</p>
      <Table :columns="columns2" :data="data2"></Table>
    </Modal>
  </div>
</template>
<style lang="scss">
.bic_wrapper {
  padding-top: 60px;
  .bic_banner {
    padding-top: 29%;
    background: url("https://wangzhanzhaopian.oss-cn-shanghai.aliyuncs.com/20190509154225.png")
      no-repeat center center;
    background-size: 100% 100%;
  }
  .content-wrap {
    background-color: #ffa020;
    padding: 30px 0;
    .bjc {
      width: 70%;
      margin: 0 auto;
      .bjclist {
        list-style-type: none;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        li {
          width: 48%;
          padding: 20px;
          height: 400px;
          background: url("../../assets/images/bjc_content.png") no-repeat
            center center;
          background-size: 100% 100%;
          background-color: #fff;
          border-radius: 10px;
          margin-bottom: 20px;
          .title {
            font-size: 16px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            line-height: 30px;
            span {
              color: #999;
            }
            a {
              color: #f00;
            }
          }
          .content {
            display: flex;
            justify-content: space-between;
            align-content: center;
            line-height: 20px;
            margin-top: 20px;
            .symbol {
              font-weight: 900;
              font-size: 20px;
            }
            .time {
              span {
                font-size: 16px;
              }
              .hour,
              .minute,
              .second {
                background-color: #f00;
                color: #fff;
                line-height: 20px;
                border-radius: 5px;
                padding: 3px;
              }
              .maohao {
                color: #f00;
              }
            }
          }
          .circle {
            text-align: center;
            margin: 10px auto;
            margin-top: 20px;
            .remain {
              font-size: 16px;
              color: #666;
            }
            .num {
              font-size: 30px;
              line-height: 60px;
              color: #ffa020;
            }
          }

          .button {
            width: 60%;
            margin: 0 auto;
            height: 40px;
            border-radius: 20px;
            text-align: center;
            .ivu-btn-warning {
              width: 80%;
              height: 40px;
              font-size: 20px;
              border-radius: 20px;
              span {
                display: inline-block;
                height: 40px;
              }
            }
          }
        }
      }
    }
    .bjc_table {
      width: 70%;
      margin: 0px auto;
      // padding-bottom: 20px;
      padding: 0 20px 20px 20px;
      margin-top: 20px;
      background-color: #fff;
      border-radius: 5px;
      .title {
        text-align: center;
        background-color: #fff;
        line-height: 60px;
        font-size: 20px;
        border-radius: 10px;
      }
    }
  }
}
</style>

<script>
import child from "./bijingcaiChild";
export default {
  data() {
    return {
      disabledarr:[],
      obj: {
        h: "00",
        m: "00",
        s: "00"
      },
      str: "",
      disabled: false,
      src: null,
      modal1: false,
      modal2: false,
      pageNo: 1,
      pageSize: 10,
      total: 0,
      lotteryNo: 0,
      columns1: [
        {
          title: "类型",
          align: "center",
          key: "quizType",
          width:160
        },
        {
          title: "期次",
          align: "center",
          key: "periodNo"
        },
        {
          title: "每注个数",
          key: "betAmount",
          align: "center",
        },
        {
          title: "开始时间",
          align: "center",
          width: 180,
          key: "createTime"
        },
        {
          title: "已投注总数",
          align: "center",
          key: "betSum"
        },
        {
          title: "开奖时间",
          align: "center",
          width: 180,
          key: "lotteryTime"
        },
        {
          title: "开奖详情",
          align: "center",
          render: (h, param) => {
            let params = {
              periodNo:param.row.periodNo,
              quizTypeId:param.row.quizTypeId
            };
            return h(
              "span",
              {
                on: {
                  click: () => {
                    this.check(params);
                  }
                },
                style: {
                  color: "#3399ff",
                  cursor:"pointer"
                },
              },
              "查看"
            );
          }
        }
      ],
      data1: [],
      columns2: [
        {
          title: "排行",
          key: "winningLevel",
          align: "center"
        },
        {
          title: "会员姓名",
          key: "memberName",
          align: "center"
        },
        {
          title: "福彩排列5",
          align: "center",
          render: (h, param) => {
            return h("span", {}, this.lotteryNo);
          }
        },
        {
          title: "下注时间",
          key: "betTime",
          width: 200,
          align: "center"
        },
        {
          title: "奖项",
          align: "center",
          render: (h, param) => {
            let str = "";
            if (param.row.winningLevel == 1) {
              str = "一等奖";
            } else if (param.row.winningLevel == 2) {
              str = "二等奖";
            } else if (param.row.winningLevel == 3) {
              str = "三等奖";
            } else {
              str = "错误";
            }
            return h("span", {}, str);
          }
        },
        {
          title: "中奖金额",
          align: "center",
          render: (h, param) => {
            let str1 = param.row.winningNum + param.row.winningCoin;
            return h("span", {}, str1);
          }
        }
      ],
      data2: [],
      bjclist: []
    };
  },
  components: {
    child
  },
  created() {
    this.$store.commit("navigate", "nav-bjc");
    this.init();
    this.getList();
  },
  methods: {
    toZero(index){
      let temArr=this.bjclist[index];
      temArr.disabled = true;
      this.$set(this.bjclist,index,temArr);
    },
    changepage(index) {
      this.pageNo = index;
      this.getList();
    },
    ruleshow(str) {
      this.src = str;
      this.modal1 = true;
    },
    check(params) {
      this.$http.post(this.host + "/uc/coin/guess/detail", params).then(res => {
        let resp = res.body;
        if (resp.code == 0) {
          this.modal2 = true;
          this.data2 = resp.data.quizOrders;
          this.lotteryNo = resp.data.lotteryNo;
        } else {
          this.$Message.error(resp.message);
        }
      });
    },
    getList() {
      let param = {
        pageNo: this.pageNo,
        pageSize: this.pageSize
      };
      this.$http.post(this.host + "/uc/coin/guess/record", param).then(res => {
        let resp = res.body;
        if (resp.code == 0) {
          this.total = resp.data.totalElements;
          this.data1 = resp.data.content;
        } else {
          this.$Message.error(resp.message);
        }
      });
    },
    add(str) {
      return str < 10 ? "0" + str : str + "";
    },
    formattime(hms){
      let date = new Date();
      let year = date.getFullYear() + "";
      let month = this.add(date.getMonth() + 1);
      let day = this.add(date.getDate());
      let str = `${year}-${month}-${day} ${hms}`;
      str = new Date(str).getTime();
      return str;
    },
    init() {
      this.$http.post(this.host + "/uc/coin/guess/index", {}).then(res => {
        let resp = res.body;
        if (resp.code == 0) {
          this.bjclist = resp.data;
          let now = new Date().getTime();
          this.bjclist.forEach((v,i)=>{
              if(this.formattime(v.quizType.deadline) <=now){
                 v.disabled=true;
              }else{
                 v.disabled=false;
              }
          })
        } else {
          this.disabled = true;
          this.$Message.error(resp.message);
        }
      });
    },
    order(periodNo, quizTypeId) {
      let login = this.$store.getters.isLogin;
      let membername = this.$store.getters.member;
       !login && this.$router.push("/login");
       if(login){
         if(membername && membername.realName){
           let body = {
             periodNo:periodNo,
             quizTypeId:quizTypeId
           }
           this.$http.post(this.host + "/uc/coin/guess/order",body).then(res=>{
             let resp = res.body;
             if(resp.code == 0){
               this.$Message.success("下注成功");
               this.init();
               this.getList();
             }else{
               this.$Message.error(resp.message)
             }
           })
         }else{
           this.$Message.error(this.$t("otc.validate"));
            setTimeout(() => {
              this.$router.push("/uc/safe");
            }, 2000);
         }
       }
    }
  }
};
</script>
<style lang="scss">
.bic_wrapper {
  .content-wrap {
    .bjc {
      .bjclist {
        li {
          .circle {
            width: 200px;
            position: relative;
            .total {
              position: absolute;
              right: 0;
              bottom: 10px;
              color: #3399ff;
              margin-bottom:0;
            }
          }
        }
      }
    }
    .bjc_table {
      .ivu-table-wrapper {
        -moz-box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
        -webkit-box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
        box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
      }
    }
  }
  .ivu-page-item-active {
    background-color: #ffa020;
    border-color: #ffa020;
    color: #fff;
  }
  .ivu-page-next:hover,
  .ivu-page-prev:hover {
    border-color: #ffa020;
  }
  .ivu-page-next:hover a,
  .ivu-page-prev:hover a {
    color: #ffa020;
  }

  .ivu-page-item-jump-prev a,
  .ivu-page-item-jump-next a {
    color: #666;
  }
  .ivu-page-item-jump-prev a:hover,
  .ivu-page-item-jump-next a:hover {
    color: #ffa020;
  }
  .ivu-page-item:hover {
    border-color: #ffa020;
  }
  .ivu-page-item:hover a {
    color: #ffa020;
  }
  .ivu-page-item.ivu-page-item-active a {
    color: #fff;
  }
  .ivu-page-disabled{
  a{
    cursor: not-allowed;
    .ivu-icon{
      cursor: not-allowed;
    }
  }
}
}
.ivu-modal .ivu-modal-body .ivu-table-wrapper {
  -moz-box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
  -webkit-box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
  box-shadow: 2px 2px 5px transparent, -2px -2px 4px transparent;
}
</style>
