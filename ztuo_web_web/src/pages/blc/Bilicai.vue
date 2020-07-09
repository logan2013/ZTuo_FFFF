<template>
  <div class="bilicai_box">
    <div class="blc_header">
    </div>
    <ul class="blclist">
      <li v-for="(item,index) in blcList" :key="index">
        <div class="num">
          <img src="../../assets/images/bizhong_logo.png" alt="">
          <p>
            <span class="bizhong">{{item.financialItem.coinName}}</span>
            <span class="time">锁仓{{item.financialItem.deadline}}天/{{item.financialItem.coinMinnum}}个起</span>
          </p>
        </div>
        <div class="interest_rate_btn">
          <div class="shouyilv">
            <p class="numlv">{{(item.financialItem.yield*100).toFixed(2)}}%</p>
            <p>收益率</p>
          </div>
          <div class="btn">
            <button @click="order(item.financialItem.itemId,item.financialItem.coinMinnum,item.financialItem.coinName)">立即订购</button>
          </div>
        </div>
        <div class="order_msg">
          <p class="nums">已锁量：{{item.coinVolume}}</p>
          <p class="people">{{item.memberVolume}}人已抢</p>
        </div>
      </li>
    </ul>
    <div class="quest_answer">
      <h4>常见问题</h4>
      <ul>
        <li v-for="(item, index) in questanswer" class="qa">
          <div class="q">{{item.q}}</div>
          <div class="a">{{item.a}}</div>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  components: {},
  data() {
    return {
      val: 0,
      tips: "",
      blcList: [],
      questanswer: [
        {
          q: "Q：什么是币理财？",
          a:
            "A: 币理财是基于数字资产的锁仓产品，每个项目有相应的锁定周期和收益率，您可以自由选择购买，购买后本金锁定，根据约定时间开始计算收益，项目到期后本金和收益解锁转入账户，您即可获得约定的收益"
        },
        {
          q: "Q: 如何参与?",
          a:
            "A: 登录币火官网https://www.bhuo.top，点击“币理财”链接，依据您自身的情况选择需要锁定的币种，输入锁仓数量，点击“立即抢购”，即可参与币理财 。"
        },
        {
          q: "Q: 收益如何计算?",
          a:
            "A: 参与币理财的项目均有固定的计收益开始和结束时间，在此时间周期内计算您可获得的收益。每个项目的计息时间可以在页面查看。"
        },
        {
          q: "Q: 收益如何发放?",
          a:
            "A: 项目锁定期到期后，系统开始陆续发放参与用户的收益，可能会因为人数众多原因导致您的收益延迟到账，请耐心等待。您可至“平台奖励”查看币理财收益。"
        },
        {
          q: "Q: 币理财可以提前解锁么?",
          a:
            "A: 币理财目前不支持提前解锁，系统会在锁定期结束后自动解锁您锁定的部分并支付收益，锁定期间，收益将不会每日发放，必须等锁定结束后，一次性发放收益。"
        },
        {
          q: "Q：存币收益出自哪部分？",
          a: "A：收益部分由BH生态建设部分支付。"
        }
      ]
    };
  },
  created: function() {
    this.init();
  },
  computed: {
    isLogin: function() {
      return this.$store.getters.isLogin;
    },
    member: function() {
      return this.$store.getters.member;
    },
    languageValue: function() {
      var curlang = this.$store.getters.lang;
      if (curlang == "English") this.$i18n.locale = "en";
      return curlang;
    }
  },
  methods: {
    init() {
      this.$store.commit("navigate", "nav-blc");
      this.$http.get(this.host + "/uc/financial/items/BHB").then(res => {
        let resp = res.body;
        if (resp.code == 0) {
          this.blcList = resp.data;
        } else {
          this.$Message.error(resp.message);
        }
      });
    },
    order(id, min, name) {
      let flag = this.isLogin;
      let minnum = min;
      let coinName = name;
      this.val = minnum;
      this.tips = "";
      !flag && this.$router.push("/login");
      let realName = this.$store.getters.member.realName;
      if (!realName) {
        this.$Message.error(this.$t("otc.validate"));
        setTimeout(() => {
          this.$router.push("/uc/safe");
        }, 2000);
      }
      if (realName && flag) {
        let itemId = id;
        let memberId = this.$store.getters.member.id;
        this.$Modal.confirm({
          title: "请输入你要购买的个数",
          render: h => {
            return h("div", [
              h(
                "InputNumber",
                {
                  props: {
                    value: minnum,
                    autofocus: true,
                    placeholder: "请输入你要购买的个数",
                    precision: 0
                  },
                  style: {
                    width: "100%"
                  },
                  on: {
                    "on-change": val => {
                      if (!val) {
                        this.tips = "输入个数不能低于起步数";
                      }
                      if (val < minnum) {
                        this.val = val;
                        this.tips = "输入个数不能低于起步数";
                      } else {
                        this.val = val;
                        this.tips = "";
                      }
                    }
                  },
                  ref: "modalRef"
                },
                ""
              ),
              h(
                "div",
                {
                  style: {
                    color: "red",
                    marginTop: "10px"
                  }
                },
                this.tips
              )
            ]);
          },
          onOk: () => {
            this.val != 0 && !this.val && (this.val = minnum);
            if (minnum > this.val || this.val == 0) {
              this.tips = "";
              this.$Modal.remove();
            } else {
              let coinNum = this.val;
              let param = { itemId, memberId, coinNum };
              this.$http
                .post(this.host + "/uc/financial/order", param)
                .then(res => {
                  let resp = res.body;
                  if (resp.code == 0) {
                    this.$Message.success("订购成功");
                    this.$Modal.remove();
                    this.init();
                  } else {
                    this.$Modal.remove();
                    this.$Message.error(resp.message);
                  }
                });
            }
          },
          "on-cancel": () => {
            this.init();
          },
          loading: true
        });
      }
    }
  }
};
</script>
<style scoped lang="scss">
.bilicai_box {
  padding-top: 60px;
  .blc_header {
    height: 230px;
    // background: url("../../assets/images/blc_banner.png") no-repeat center
    //   center;
    background-size: 100% 100%;
    position: relative;
    .bilicai_abs {
      position: absolute;
      left: 50%;
      width: 300px;
      height: 100px;
      top: 50%;
      margin-left: -150px;
      margin-top: -50px;
      text-align: center;
      color: #fff;
      .title {
        font-size: 30px;
        font-weight: 500;
        line-height: 60px;
        letter-spacing: 10px;
      }
      .content {
        font-size: 18px;
        letter-spacing: 5px;
      }
    }
  }
  .blclist {
    padding: 20px 14% 0px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    // margin: 20px auto;
    li {
      width: 30%;
      margin-bottom: 20px;
      list-style: none;
      padding: 20px 20px 0 20px;
      border-top: 3px solid #3399ff;
      -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
      -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
      box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
      .num {
        height: 45px;
        display: flex;
        justify-content: space-between;
        align-items: align-items;
        img {
          // width: 7%;
          height: 30px;
        }
        p {
          width: 91%;
          height: 37px;
          line-height: 37px;
          font-size: 16px;
          .bizhong {
            padding-left: 5px;
            color: #333;
            font-weight: 500;
          }
          .time {
            color: #999;
            font-size: 12px;
          }
        }
      }
      .interest_rate_btn {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        margin: 20px auto;
        .shouyilv {
          .numlv {
            color: #3399ff;
            font-size: 36px;
            line-height: 36px;
          }
          p {
            color: #999;
            font-size: 14px;
          }
        }
        .btn {
          button {
            width: 100px;
            height: 30px;
            background: #3399ff;
            color: #fff;
            border: none;
            outline: none;
            border-radius: 13px;
            line-height: 30px;
            font-size: 13px;
            margin-top: 8px;
            cursor: pointer;
          }
        }
      }
      .order_msg {
        display: flex;
        align-items: center;
        justify-content: space-between;
        height: 45px;
        line-height: 45px;
        font-size: 12px;
        border-top: 1px solid #f5f5f5;
        .nums {
          color: #333;
        }
      }
    }
  }
  .quest_answer {
    width: 72%;
    margin: 0px auto;
    margin-bottom: 20px;
    padding: 20px;
    -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
    h4 {
      font-size: 18px;
    }
    .qa {
      list-style: none;
      padding: 10px 0;
      .q {
        color: #3399ff;
        margin: 5px 0;
      }
    }
  }
}
</style>
