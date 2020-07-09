<template>
    <div>
        <Card :bordered="false">
            <div class="head">
                <div class="search">
                    <Input v-model="symbol" placeholder="请输入交易对" style="width: 300px" />
                    <Button type="primary" style="margin-left:30px" @click="search">查询</Button>
                    <Button type="default" @click="symbol=''">重置</Button>
                </div>
                <Button type="primary" @click="add">添加</Button>
            </div>
            <Table :columns="coinColumns" :data="tableData"></Table>
            <Page :total="total" :page-size="pageSize" :current="pageNum" @on-change="changePage" show-total />
        </Card>
        <Modal v-model="coinModal" :title="changeTitle" @on-ok="ok" @on-cancel="cancel">
            <Form :model="formItem" :label-width="80">
                <FormItem label="交易对：">
                    <Input v-model="formItem.symbol" ></Input>
                </FormItem>
                <FormItem label="初始价格：">
                    <Input v-model="formItem.initPrice"></Input>
                </FormItem>
                <FormItem label="最终价格：">
                    <Input v-model="formItem.finalPrice"></Input>
                </FormItem>
                <FormItem label="拉升时长：">
                    <Input v-model="formItem.relativeTime"></Input>
                </FormItem>
                <FormItem label="干扰因子：">
                    <Input v-model="formItem.interferenceFactor"></Input>
                </FormItem>
            </Form>
        </Modal>
        <Modal v-model="delModal" title="删除" @on-ok="onDel(id)" @on-cancel="delModal=false">
            <p>确认删除吗？</p>
        </Modal>
    </div>
</template>

<script>
import {
  queryBBSetting,
  queryInit,
  addInit,
  delInit,
  editorInit
} from "@/service/getData";
export default {
  data() {
    return {
      symbol: "",
      delModal: false,
      coinModal: false,
      changeTitle: "",
      changeType: "",
      formItem: {},
      id: "",
      total: 0,
      pageSize: 10,
      pageNum: 1,
      tableData: [],
      coinColumns: [
        {
          title: "ID",
          key: "id"
        },
        {
          title: "交易对",
          key: "symbol"
        },
        {
          title: "初始价格",
          key: "initPrice"
        },
        {
          title: "最终价格",
          key: "finalPrice"
        },
        {
          title: "拉升时长",
          key: "relativeTime"
        },
        {
          title: "干扰因子",
          key: "interferenceFactor"
        },
        {
          title: "操作",
          width: 200,
          render: (h, params) => {
            return [
              h(
                "Button",
                {
                  props: {
                    type: "primary"
                  },
                  on: {
                    click: () => {
                      this.coinModal = true;
                      this.changeTitle = "编辑";
                      this.changeType = "editor";
                      console.log(params.row);
                      const {
                        id,
                        finalPrice,
                        initPrice,
                        interferenceFactor,
                        relativeTime,
                        symbol
                      } = params.row;
                      this.formItem = {
                        id,
                        finalPrice,
                        initPrice,
                        interferenceFactor,
                        relativeTime,
                        symbol
                      };
                    }
                  }
                },
                "修改/查看"
              ),
              h(
                "Button",
                {
                  props: {
                    type: "error"
                  },
                  style: {
                    marginLeft: "10px"
                  },
                  on: {
                    click: () => {
                      this.delModal = true;
                      this.id = params.row.id;
                    }
                  }
                },
                "删除"
              )
            ];
          }
        }
      ]
    };
  },
  created() {
    this.getTableData(this.pageNum, this.pageSize, this.symbol.trim());
  },
  methods: {
    // getSymbol(pageIndex) {
    //   queryBBSetting({ pageNo: pageIndex, pageSize: 10 }).then(res => {

    //   });
    // }
    changePage(page) {
        this.pageNum = page;
        this.getTableData(this.pageNum, this.pageSize, this.symbol.trim());
    },
    search() {
        this.pageNum = 1;
         this.getTableData(this.pageNum, this.pageSize, this.symbol.trim());
    },
    onDel(id) {
      delInit(id).then(res => {
        if (!res.code) {
          this.$Message.success("删除成功！");
          this.getTableData(this.pageNum, this.pageSize);
        } else {
            this.$Message.error(res.message);
        }
      });
    },
    cancel() {
      for (let key in this.formItem) {
        this.formItem[key] = "";
      }
      this.coinModal = false;
    },
    add() {
      this.coinModal = true;
      this.changeTitle = "添加";
      this.changeType = "add";
    },
    ok() {
      if (this.changeType == "add") {
        this.onAdd();
      } else if (this.changeType == "editor") {
        this.onEditor();
      }
    },
    onAdd() {
      const {
        symbol,
        initPrice,
        finalPrice,
        relativeTime,
        interferenceFactor
      } = this.formItem;
      const paramseter = {
        symbol:symbol.trim(),
        initPrice,
        finalPrice,
        relativeTime,
        interferenceFactor
      };
      addInit(paramseter).then(res => {
        if (!res.code) {
          this.$Message.success("添加成功！");
          this.cancel();
          this.getTableData(this.pageNum, this.pageSize);
          this.coinModal = false;
        } else {
          this.$Message.error(res.message);
        }
      });
    },
    onEditor() {
      editorInit(this.formItem).then(res => {
        if (!res.code) {
          this.$Message.success("编辑成功！");
          this.getTableData(this.pageNum, this.pageSize);
          this.cancel();
          this.coinModal = false;
        } else {
          this.$Message.error(res.message);
        }
      });
    },
    getTableData(pageNum, pageSize, symbol) {
      queryInit({ pageNum: pageNum, pageSize: pageSize, symbol: symbol }).then(res => {
        this.tableData = res.data.content;
        this.total = res.data.totalElements;
      });
    }
  }
};
</script>

<style lang="less" scoped>
.head {
  display: flex;
  justify-content: space-between;
  padding: 20px;
}
.ivu-page {
  text-align: right;
  margin-top: 20px;
}
</style>


