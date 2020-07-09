<template>
    <div class="noReturn">
        <h4>{{$t('coin.current')}}</h4>
        <div>
            <Table :columns="columns" :data="data"></Table>
        </div>
        <div class="lever-list">
            <Page v-show="totalElement > 10" :total="totalElement" @on-change="changePage" />
        </div>
        <Modal v-model="modal" :title="$t('coin.repay')" :footer-hide="true">
            <div class="lever-title">{{$t('coin.Leveraged')}}</div>
            <div class="lever-symbol">{{brorrowParams.symbol}}</div>
            <div class="lever-title">{{$t('coin.should')}}</div>
            <div class="return-number">{{brorrowParams.total}}</div>
            <ul class="lever-li">
                <li style="margin-right:40px;">
                    <p class="lever-title">{{$t('coin.loanAmount')}}</p>
                    <p class="return-number">{{brorrowParams.amount}}</p>
                </li>
                <li>
                    <p class="lever-title">{{$t('coin.interest ')}}</p>
                    <p class="return-number">{{brorrowParams.accumulative}}</p>
                </li>
            </ul>
            <ul class="lever-li">
                <li>{{$t('coin.Quantityreturn')}}</li>
                <li>{{$t('coin.available')}}&nbsp;&nbsp;{{brorrowParams.canUse}}&nbsp;&nbsp;{{brorrowParams.coin}}</li>
            </ul>
            <Input v-model="value" :placeholder="$t('coin.Quantityreturn')" style="margin-top:10px;">
            <div slot="append">
                <span>{{brorrowParams.coin}}</span>
                <span class="all" @click="inputAll">{{$t('coin.all')}}</span>
            </div>
            </Input>
            <div class="lever-info" style="margin-top: 10px;'">
                <Button type="default" @click="cancel">{{$t('coin.cancel')}}</Button>
                <Button type="primary" @click="sure">{{$t('coin.save')}}</Button>
            </div>
        </Modal>
    </div>
</template>
<script>
const paramFun = (pageSize, repayment) => pageNo => ({
  pageSize,
  repayment,
  pageNo
});
const getParams = paramFun(10, 0);
export default {
  data() {
      let self = this;
    return {
      modal: false,
      totalElement: 0,
      value: "",
      pageNo: 1,
      title: "",
      brorrowParams: {},
      columns: [
        {
          title: self.$t('coin.applicationDate'),
          key: "createTime",
          width: 150
        },
        {
          title: self.$t('coin.Leveraged'),
          render: (h, params) => {
            return h("div", {}, params.row.leverCoin.symbol);
          }
        },
        {
          title: self.$t('coin.currency'),
          render: (h, params) => {
            return h("div", {}, params.row.coin.unit);
          }
        },
        {
          title: self.$t('coin.quantity'),
          key: "loanBalance"
        },
        {
          title: self.$t('coin.interest'),
          key: "interestRate"
        },
        {
          title: self.$t('coin.accumulatedInterest'),
          key: "accumulative"
        },
        {
          title: self.$t('coin.OutstandingQuantity'),
          key: "amount"
        },
        {
          title: self.$t('coin.operation'),
          render: (h, params) => {
            return h(
              "Button",
              {
                props: {
                  type: "primary"
                },
                on: {
                  click: () => {
                    const json = params.row;
                    this.getAppointCoinNum(
                      json.leverCoin.symbol,
                      json.coin.unit
                    ).then(res => {
                      this.brorrowParams = {
                        id: json.id,
                        symbol: json.leverCoin.symbol,
                        total: json.amount + json.accumulative,
                        amount: json.amount,
                        coin: json.coin.unit,
                        accumulative: json.accumulative,
                        canUse: res
                      };
                      this.modal = true;
                    });
                  }
                }
              },
              "归还"
            );
          }
        }
      ],
      data: []
    };
  },
  props: ["repayment"],
  created() {
    this.init();
  },
  computed: {
    lang: function() {
      return this.$store.state.lang;
    }
  },
  watch: {
    repayment(newValue, oldValue) {
      this.init();
    },
    lang: function() {
      this.updateLangs();
    }
  },
  methods: {
    updateLangs() {
        this.columns[0].title = this.$t('coin.applicationDate');
        this.columns[1].title = this.$t('coin.Leveraged');
        this.columns[2].title = this.$t('coin.currency');
        this.columns[3].title = this.$t('coin.quantity');
        this.columns[4].title = this.$t('coin.interest');
        this.columns[5].title = this.$t('coin.accumulatedInterest');
        this.columns[6].title = this.$t('coin.OutstandingQuantity');
        this.columns[7].title = this.$t('coin.operation');
    },
    cancel() {
      this.modal = false;
    },
    changePage(index) {
      this.pageNo = index;
      this.init();
    },
    sure() {
      if (this.value == "") {
        this.$Message.error("请输入您要还的个数");
        return;
      }
      if (isNaN(Number(this.value))) {
        this.$Message.error("请输入数字类型");
        return;
      }
      const params = {
        loanRecordId: this.brorrowParams.id,
        amount: this.value
      };
      this.toBorow(params);
      this.value = "";
    },
    toBorow(params) {
      this.$http
        .post(this.host + "/margin-trade/loan/repayment", params)
        .then(res => {
          const data = res.body;
          if (data.code == 0) {
            this.$Message.success(data.message);
            this.modal = false;
            this.pageNo = 1;
            this.init();
            this.$emit("borowSuccess");
          } else {
            this.$Message.error(data.message);
          }
        });
    },
    inputAll() {
      const brorrowParams = this.brorrowParams;
      if (brorrowParams.canUse < brorrowParams.total) {
        //可用的小于需要换的，点击全部为可用的
        this.value = brorrowParams.canUse;
      }
      if (brorrowParams.canUse > brorrowParams.total) {
        //可用的大于需要换的，点击全部为需要还的
        this.value = brorrowParams.total;
      }
    },
    getAppointCoinNum(symbol, unit) {
       console.log("该接口为杠杆交易的接口暂不支持！！！")
    },
    init() {
      const params = getParams(this.pageNo);
      this.$http
        .post(this.host + "/margin-trade/loan/record_list", params)
        .then(res => {
          const data = res.body;
          if (data.code == 0) {
            this.data = data.data.content;
            this.totalElement = data.data.totalElements;
          }
        });
    }
  }
};
</script>
<style lang="scss" scoped>
.noReturn {
  margin-top: 30px;
  width: 100%;
  min-height: 300px;
  padding-bottom: 30px;
  border: 1px solid #eee;
  h4 {
    font-size: 20px;
    line-height: 2.5;
    border-bottom: 1px solid #eee;
    background: #fafafd;
    padding-left: 15px;
  }
  .lever-list {
    margin-top: 20px;
    text-align: right;
    padding-right: 25px;
  }
  .title-box {
    display: flex;
  }

  .lever-title {
    color: #999;
    font-size: 16px;
    margin-top: 20px;
    flex: 1;
  }
  .lever-symbol {
    flex: 10;
    background: rgb(247, 243, 253);
    color: #333;
    line-height: 2;
    font-size: 16px;
    padding: 10px;
  }

  .return-number {
    color: #333;
    font-size: 20px;
  }
  ul.lever-li {
    display: flex;
    justify-content: flex-start;
    margin-top: 20px;
    &:first-child {
      margin-right: 40px;
    }
  }
  .all {
    color: #57a3f3;
    margin-left: 30px;
  }
  .lever-info {
    display: flex;
    justify-content: space-around;
    margin-top: 10px;
  }
}
.ivu-table-tip table td {
  line-height: 180px;
}
</style>
