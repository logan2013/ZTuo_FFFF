<template>
  <div class="nav-rights">
    <div class="nav-right">
      <div class="blc_box">
        <span>锁仓时间:&nbsp;</span>
        <DatePicker type="date" placeholder="请输入你要选择的日期" style="width: 200px" v-model="rangeDate" :editable="false" ></DatePicker>
        <span style="margin-left:20px;">项目:&nbsp;</span>
        <Select v-model="model1" style="width:200px">
          <Option v-for="item in itemList" :value="item.itemId" :key="item.itemId">{{ item.itemName }}</Option>
        </Select>
        <button class="search_btn" @click="serar">搜索</button>
      </div>
      <div class="blc-table">
        <Table stripe :columns="tableColumnsBlc" :data="tableMoney" :loading="loading" :disabled-hover="true"></Table>
        <div class="page-wrap">
          <Page :current="currentPage" :total="parseInt(totalElement)" :page-size="pageSize" @on-change="promoteMoneyPageChange"></Page>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  components: {},
  data() {
    let that = this;
    return {
      model1: "",
      itemList: {},
      rangeDate: "",
      value:"",
      tableColumnsBlc: [
        {
          title: "锁仓时间",
          key: "createTime",
          minWidth: 60,
          align: "center"
        },
        {
          title: "项目",
          align: "center",
          width: 80,
          key:"itemName"
        },
        {
          title: "单号",
          key: "orderNo",
          align: "center",
          width: 150
        },
        {
          title: "收益率",
          align: "center",
          // width: 90,
          render: (h, param) => {
            return h("div", {}, (param.row.yield * 100).toFixed(2) + "%"); 
          }
        },
        {
          title: "锁仓期限",
          align: "center",
          // width: 60,
          key: "frozenDays"
        },
        {
          title: "锁仓数量",
          key: "coinNum",
          align: "center",
          // width: 80
        },
        {
          title: "预计收益",
          align: "center",
          // width: 70,
          key: "planIncome"
        },
        {
          title: "实际收益",
          align: "center",
          // width: 70,
          key: "realIncome"
        },
        {
          title: "解锁时间",
          key: "planRevenueTime",
          minWidth: 60,
          align: "center"
        },
        {
          title: "状态",
          align: "center",
          render: (h, param) => {
            let str = "";
            param.row.orderState == 0 && (str = "锁仓中");
            param.row.orderState == 1 && (str = "已释放");
            return h("div", {}, str);
          }
        }
      ],
      tableMoney: [],
      currentPage: 1,
      pageSize: 10,
      loading: true,
      itemId: "",
      lockDate: "",
      totalElement: 0
    };
  },
  created: function() {
    this.init();
    this.getlist(1);
  },
  methods: {
    init() {
      this.$http.get(this.host + "/uc/financial/items/list").then(res => {
        let resp = res.body;
        if (resp.code == 0) {
          this.itemList = resp.data;
        } else {
          this.$Message.error(resp.message);
        }
      });
    },
    getlist(page) {
      let pageNo = page;
      let pageSize = this.pageSize;
      let memberId = this.$store.getters.member.id;
      let param = { pageNo, pageSize, memberId };
      this.itemId && (param.itemId = this.itemId);
      this.lockDate && (param.lockDate = this.lockDate);
      this.$http.post(this.host + "/uc/financial/order/list", param).then(res => {
          let resp = res.body;
          if (resp.code == 0) {
            this.loading = false;
            this.totalElement = resp.data.totalElements;
            this.tableMoney = resp.data.content;
          } else {
            this.$Message.error(resp.message);
          }
        });
      this.rangeDate="";
      this.lockDate = "";
      this.model1 = "";
    },
    promoteMoneyPageChange(index) {
      this.getlist(index);
    },
    serar() {
      this.loading = true;
      let formatTime = this.formatTime;
      let rangeDate = this.rangeDate;
      if (String(rangeDate).length > 0) {
        let date = new Date(rangeDate);
        let date_value =
          date.getFullYear() +
          "-" +
          formatTime(date.getMonth() + 1) +
          "-" +
          formatTime(date.getDate())
        this.lockDate = date_value;
      }
      let itemId = this.model1;
      if (String(itemId).length > 0) {
        this.itemId = itemId;
      }
      this.getlist(1);
    },
    formatTime(date) {
      return date < 10 ? "0" + date : date;
    }
  }
};
</script>
<style lang="scss" scoped>
.nav-right {
  height: auto;
  overflow: hidden;
  padding: 0 15px;
  .blc_box {
    span {
      font-size: 14px;
    }
    .search_btn {
      height: 32px;
      width: 86px;
      background: #3399ff;
      color: #fff;
      font-size: 14px;
      border: none;
      outline: none;
      border-radius: 5px;
      margin-left: 10px;
    }
  }
  .blc-table {
    margin-top: 20px;
    .page-wrap {
      float: right;
      margin-top: 20px;
    }
  }
}
</style>
<style lang="scss">
.blc-table {
  .ivu-table-wrapper {
    .ivu-table-header {
      thead th {
        background: #fff;
      }
    }
    tbody.ivu-table-tbody .ivu-table-row td {
      background: #fff;
    }
    .ivu-table-header,
    .ivu-table-tbody {
      .ivu-table-cell {
        padding: 0;
      }
    }
  }
}


</style>
