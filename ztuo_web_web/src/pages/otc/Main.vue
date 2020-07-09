<template>
  <div class="content-wraps">
    <div class="containers" id="List">
      <div class="fiat">
        <div class="to_business">
          <h3>{{$t('paper.legal')}}</h3>
          <span>{{$t('paper.curren')}}</span>
          <a href="javascript:void(0)" @click="goBusiness">{{$t('paper.become')}}</a>
          <!-- <router-link to="/identbusiness">成为商家</router-link> -->
        </div>
      </div>
      <div class="fiat-main">
        <div class="content">
          <Menu ref="navMenu" mode="horizontal" width="auto" :active-name="activeMenuName" @on-select="menuSelected" class='tradelist'>
            <MenuGroup>
              <template v-for="(coin,index) in coins">
                <MenuItem :name="'coin-'+index"> {{coin.unit}}
                </MenuItem>
              </template>
            </MenuGroup>
          </Menu>
          <router-view></router-view>
        </div>
        <div class="advantage">
          <ul>
            <li>
              <div class="image"><img src="../../assets/images/price.png" alt=""></div>
              <div class="title">{{$t('paper.market')}}</div>
              <div class="content1">{{$t('paper.price')}}</div>
            </li>
            <li>
              <div class="image"><img src="../../assets/images/poundage.png" alt=""></div>
              <div class="title">{{$t('paper.charge')}}</div>
              <div class="content1">{{$t('paper.users')}}</div>
            <li>
              <div class="image"><img src="../../assets/images/instant.png" alt=""></div>
              <div class="title">{{$t('paper.instant')}}</div>
              <div class="content1">{{$t('paper.deal')}}</div>
            </li>
            <li>
              <div class="image"><img src="../../assets/images/platedanbao.png" alt=""></div>
              <div class="title">{{$t('paper.plateform')}}</div>
              <div class="content1">{{$t('paper.save')}}</div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
.content-wraps {
  background-color: #fff;
  .containers {
    width: 100%;
    /*margin: 20px 0;*/
    .fiat {
    border-radius: 5px;
    height: 400px;
    background: url("../../assets/images/fiat_banner.jpg") no-repeat center center;
    background-size: 100%;
    display: flex; //flex布局
    justify-content: center; //使子项目水平居中
    align-items: center; //使子项目垂直居中
    .to_business {
      color: #fff;
      text-align: center;
      h3 {
        font-size: 46px;
        letter-spacing: 20px;
      }
      span {
        font-size: 20px;
        letter-spacing: 10px;
        display: block;
      }
      a {
        width: 220px;
        height: 45px;
        display: inline-block;
        background: #fff;
        border-radius: 5px;
        font-size: 20px;
        line-height: 45px;
        color: #000;
        margin-top: 20px;
      }
    }
  }
  }
  .fiat-main {
    width: 1200px;
    margin: 50px auto;
      .content {
        width: 100%;
        margin: 20px auto;
        -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
      }
      .advantage {
        -moz-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        -webkit-box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        box-shadow: 2px 2px 5px #f5f5f5, -2px -2px 4px #f5f5f5;
        ul {
          display: flex;
          justify-content: center;
          align-items: center;
          padding: 30px;
          li {
            width: 25%;
            list-style-type: none;
            min-height: 200px;
            div {
              text-align: center;
            }
            div.image {
              width: 50px;
              height: 50px;
              margin: 20px auto;
              img {
                width: 100%;
              }
            }
            div.title {
              line-height: 30px;
              font-size: 16px;
              color: #333;
            }
            div.content1 {
              padding: 20px 40px;
              line-height: 20px;
              font-size: 12px;
              color: #999;
            }
          }
        }
      }
  }
}
</style>
<style lang="scss">
.content-wraps {
  .containers {
    .content {
      ul.tradelist.ivu-menu.ivu-menu-light.ivu-menu-horizontal {
        &:after {
          background: none;
        }
        .ivu-menu-item-group {
          li.ivu-menu-item {
            border: none;
            &:hover {
              color: #3399ff;
              border-bottom: 0;
            }
          }
          li.ivu-menu-item.ivu-menu-item-active.ivu-menu-item-selected {
            color: #3399ff;
            border-bottom: none;
          }
        }
      }
      .nav-right.tradeCenter .list-content .ivu-tabs .ivu-tabs-tabpane {
        .ivu-table-wrapper {
          .ivu-table {
            &:before {
              background: #fff;
            }
            &:after {
              background: #fff;
            }
          }
          .ivu-spin.ivu-spin-large.ivu-spin-fix {
            border-color: #fff;
          }
        }
      }
    }
  }
}
</style>
<script>
export default {
  data() {
    return {
      coins: [],
      activeMenuName: "coin-1"
    };
  },
  computed: {
    isLogin: function() {
      return this.$store.getters.isLogin;
    }
  },
  methods: {
    init() {
      this.$store.commit("navigate", "nav-otc");
      this.$http.post(this.host + this.api.otc.coin).then(response => {
        if (response.body.code == 0) {
          this.coins = response.body.data;
          this.$nextTick(function() {
            this.$refs.navMenu.updateActiveName();
          });
        }
      });
    },
    goBusiness() {
      if (this.isLogin) {
        this.$router.push({
          path: "/identbusiness"
        });
      } else {
        this.$Message.warning("请先登录");
      }
    },
    menuSelected(menuName) {
      if (menuName.startsWith("coin")) {
        var coin = this.coins[menuName.split("-")[1]];
        this.$router.push("/otc/trade/" + coin.unit);
      } else {
        this.$router.push("/otc/" + menuName);
      }
    },
    activeMenu() {
      let coin = this.$route.params[0] || "USDT";
      coin = coin.toUpperCase();
      switch (coin) {
        case "BTC":
         // this.activeMenuName = "coin-0";
         this.activeMenuName = "BTC";
          break;
        case "USDT":
         // this.activeMenuName = "coin-1";
          this.activeMenuName = "USDT";
          break;
        case "ETH":
        //  this.activeMenuName = "coin-2";
         this.activeMenuName = "ETH";
          break;
        default:
        //  this.activeMenuName = "coin-1";
         this.activeMenuName = "USDT";
          break;
      }
      this.$nextTick(function() {
        this.$refs.navMenu.updateActiveName();
      });
    }
  },
  created: function() {
    this.init();
    // this.activeMenuName = "coin-1";
    // this.$nextTick(function() {
    //   this.$refs.navMenu.updateActiveName();
    // });
    this.activeMenu();
  }
};
</script>