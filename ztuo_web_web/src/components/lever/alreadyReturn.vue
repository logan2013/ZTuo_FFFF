<template>
    <div class="noReturn">
        <h4>{{$t('coin.recode')}}</h4>
        <div>
            <Table :columns="columns" :data="data"></Table>
        </div>
        <div class="lever-list" style="">
            <Page v-show="totalElement > 10" :total="totalElement" @on-change="changePage" />
        </div>
    </div>
</template>
<script>
const paramFun = (pageSize, paymentType) => pageNo => ({
  pageSize,
  paymentType,
  pageNo
});
const getParams = paramFun(10, 3);
export default {
  data() {
    let self = this;
    return {
      pageNo: 1,
      totalElement: 0,
      columns: [
        {
          title: self.$t("coin.applicationDate"),
          key: "createTime",
          width: 150
        },
        {
          title: self.$t("coin.Leveraged"),
          render: (h, params) => {
            return h("div", {}, params.row.leverCoin.symbol);
          }
        },
        {
          title: self.$t("coin.currency"),
          render: (h, params) => {
            return h("div", {}, params.row.coin.unit);
          }
        },
        {
          title: self.$t('coin.quantity'),
          key: "amount"
        },
        {
          title: self.$t('coin.interest'),
          key: "interestRate",
          render: (h, params) => {
            return h("div", {}, params.row.leverCoin.interestRate);
          }
        },
        {
          title: self.$t('coin.accumulatedInterest'),
          key: "interest"
        },
        {
          title: self.$t('coin.state'),
          render: (h, params) => {
            return h("div", {}, "已归还");
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
      this.updateLang();
    }
  },
  methods: {
    updateLang() {
      this.columns[0].title = this.$t("coin.applicationDate");
      this.columns[1].title = this.$t("coin.Leveraged");
      this.columns[2].title = this.$t("coin.currency");
      this.columns[3].title = this.$t("coin.quantity");
      this.columns[4].title = this.$t("coin.interest");
      this.columns[5].title = this.$t("coin.accumulatedInterest");
      this.columns[6].title = this.$t("coin.state");
    },
    changePage(index) {
      this.pageNo = index;
      this.init();
    },
    init() {
      const params = getParams(this.pageNo);
      this.$http
        .post(this.host + "/margin-trade/repayment/history", params)
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
}
</style>
