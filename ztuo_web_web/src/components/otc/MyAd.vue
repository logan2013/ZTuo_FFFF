<template>
    <div class="nav-rights">
        <div class="my_ad_box">
            <div class="add_ad">
                <Button icon="plus-round" @click="publish">{{$t('otc.myad.post')}}</Button>
            </div>
            <Alert :class="locale == 'en' ? 'en' : ''">{{$t('otc.myad.alert')}}</Alert>
            <div class="order-table">
                <Table :columns="tableColumnsAdv" :data="tableAdv" :no-data-text="$t('common.nodata')" :loading="loading" class="tables" :disabled-hover="true"></Table>
                <div style="margin: 10px;overflow: hidden" id="pages">
                    <div style="float: right;">
                        <Page v-if="totalPage > 0" :pageSize="pageNumber" :total="totalPage" :current="currentPage" @on-change="changePage"></Page>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  components: {},
  data() {
    let self = this;
    return {
      locale:'',
      loginmsg: this.$t("common.logintip"),
      dataCount: 0,
      tableAdv: [],
      loading: true,
      tableColumnsAdv: [
        {
          title: self.$t("otc.myad.no"),
          key: "id",
          width: 55,
          align: "center"
        },
        {
          title: self.$t("otc.myad.type"),
          key: "advertiseType",
          width: 90,
          align: "center",
          render: (h, params) => {
            let text = "";
            if (params.row.advertiseType == 0) {
              text = self.$t("otc.myad.buy");
            } else if (params.row.advertiseType == 1) {
              text = self.$t("otc.myad.sell");
            }
            return h("div", [h("p", text)]);
          }
        },
        {
          title: self.$t("otc.myad.limit"),
          key: "limit",
          width: 100,
          align: "center",
          render: (h, params) => {
            return h("div", [
              h("p", params.row.minLimit + "~" + params.row.maxLimit)
            ]);
          }
        },
        {
          title: self.$t("otc.myad.remain"),
          key: "remainAmount",
          width: 90,
          align: "center"
        },
        {
          title: self.$t("otc.myad.coin"),
          key: "coinUnit",
          width: 100,
          align: "center"
        },
        {
          title: self.$t("otc.myad.created"),
          key: "createTime",
          width: 160,
          align: "center"
        },
        {
          title: self.$t("otc.myad.operate"),
          key: "buyBtn",
          width: 180,
          align: "center",
          render: function(h, params) {
            return h("p", [
              h(
                "a",
                {
                  on: {
                    click: function() {
                      if (params.row.status == 0) {
                        self.$Message.error(self.$t("otc.myad.errmsg"));
                      } else {
                        self.$router.push("/uc/ad/update?id=" + params.row.id);
                      }
                    }
                  }
                },
                [
                  h(
                    "Button",
                    {
                      props: {
                        size: "small"
                      },
                      style: {
                        marginRight: "8px"
                      }
                    },
                    self.$t("otc.myad.update")
                  )
                ]
              ),
              h(
                "Button",
                {
                  props: {
                    type: "primary",
                    size: "small"
                  },
                  style: {
                    marginRight: "8px"
                  },
                  on: {
                    click: () => {
                      //要上架
                      if (params.row.status == 1) {
                        let canshu = {};
                        canshu["id"] = params.row.id;
                        // canshu['status'] = params.row.status == 0 ? 1 : 0
                        self.$http
                          .post(self.host + "/otc/advertise/on/shelves", canshu)
                          .then(response => {
                            var resp = response.body;
                            if (resp.code == 0) {
                              self.$Message.success(resp.message);
                              // self.$router.go(0)
                              self.getAd();
                            } else {
                              self.$Message.error(resp.message);
                            }
                          });
                      } else if (params.row.status == 0) {
                        let canshu = {};
                        canshu["id"] = params.row.id;
                        // canshu['status'] = params.row.status == 0 ? 1 : 0
                        self.$http
                          .post(
                            self.host + "/otc/advertise/off/shelves",
                            canshu
                          )
                          .then(response => {
                            var resp = response.body;
                            if (resp.code == 0) {
                              self.$Message.success(resp.message);
                              // self.$router.go(0)
                              self.getAd();
                            } else {
                              self.$Message.error(resp.message);
                            }
                          });
                      }
                    }
                  }
                },
                params.row.status == 0
                  ? self.$t("otc.myad.dropoff")
                  : self.$t("otc.myad.shelf")
              ),
              h(
                "Button",
                {
                  props: {
                    type: "error",
                    size: "small"
                  },
                  on: {
                    click: () => {
                      let canshu = {};
                      canshu["id"] = params.row.id;

                      if (params.row.status == 1) {
                        self.$Modal.confirm({
                          title: self.$t("common.tip"),
                          content: "<p>" + self.$t("common.delete") + "</p>",
                          onOk: () => {
                            self.$http
                              .post(self.host + "/otc/advertise/delete", canshu)
                              .then(response => {
                                var resp = response.body;
                                if (resp.code == 0) {
                                  self.$Message.success(resp.message);
                                  self.remove(params.index);
                                } else {
                                  self.$Message.error(resp.message);
                                }
                              });
                          }
                        });
                      } else {
                        self.$Message.error("下架广告后才可以删除！");
                      }
                    }
                  }
                },
                self.$t("otc.myad.delete")
              )
            ]);
          }
        }
      ],
      totalPage: 0,
      pageNumber: 10,
      currentPage: 1
    };
  },
  methods: {
    updateLangData() {
      this.tableColumnsAdv[0].title = this.$t("otc.myad.no");
      this.tableColumnsAdv[1].title = this.$t("otc.myad.type");
      this.tableColumnsAdv[2].title = this.$t("otc.myad.limit");
      this.tableColumnsAdv[3].title = this.$t("otc.myad.remain");
      this.tableColumnsAdv[4].title = this.$t("otc.myad.coin");
      this.tableColumnsAdv[5].title = this.$t("otc.myad.created");
      this.tableColumnsAdv[6].title = this.$t("otc.myad.operate");
    },
    remove(index) {
      this.tableAdv.splice(index, 1);
    },
    changePage() {},
    getAd() {
      //获取个人广告
      this.$http.post(this.host + "/otc/advertise/all").then(response => {
        var resp = response.body;
        if (resp.code == 0) {
          this.tableAdv = resp.data.content;
          for (var i = 0; i < this.tableAdv.length; i++) {
            this.tableAdv[i].coinUnit = this.tableAdv[i].coin.unit;
          }
          this.loading = false;
          //this.dataCount = resp.data.length
          this.totalPage = resp.data.totalElements;
        } else {
          // this.$Message.error(resp.message);
          // this.$Message.error(this.$t('common.logintip'));
          this.$Message.error(this.loginmsg);
        }
      });
    },
    publish() {
      this.$router.push(this.api.otc.createAd);
    }
  },
  computed: {
    lang: function() {
      return this.$store.state.lang;
    }
  },
  watch: {
    lang: function() {
      this.updateLangData();
    },
    //5.25修改
    '$i18n.locale': {
      handler(newVal) {
        this.locale = newVal;
      },
      immediate: true,
    }
    
  },
  created() {
    this.getAd();
  }
};
</script>
<style scoped lang="scss">
.nav-rights .my_ad_box .ivu-alert.ivu-alert-info[data-v-50c44f70].en{
  text-align:left;
}
.ivu-alert.en{
  padding:8px 0 8px 0
}

.nav-rights {
  padding: 0 0 0 20px;
  .my_ad_box {
    .add_ad {
      margin-bottom: 20px;
      .ivu-btn {
        background: #3399ff;
        color: #fff;
        &:hover {
          border-color: #3399ff;
        }
        &:focus {
          -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
          -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
          box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
        }
      }
    }
    .ivu-alert.ivu-alert-info {
      border: 1px solid #fff;
      background-color: #fdfaf3;
      text-align: center;
    }
  }
}
</style>
<style lang="scss">
.nav-rights {
  .my_ad_box {
    .order-table {
      .ivu-table {
        .ivu-table-header,
        .ivu-table-body {
          table {
            width: 100% !important;
            thead {
              .ivu-table-cell {
                padding: 0;
              }
            }
          }
        }
        .ivu-table-body {
          .ivu-table-tbody .ivu-table-row .ivu-table-cell {
            button.ivu-btn {
              border-radius: 10px;
              background: #fff;
              &:focus {
                -moz-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                -webkit-box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
                box-shadow: 2px 2px 5px #fff, -2px -2px 4px #fff;
              }
            }
            button.ivu-btn.ivu-btn-default {
              border-color: #00b275;
              span {
                color: #00b275;
              }
            }
            button.ivu-btn.ivu-btn-primary {
              border-color: #3399ff;
              span {
                color: #3399ff;
              }
            }
            button.ivu-btn.ivu-btn-error {
              border-color: #f15057;
              span {
                color: #f15057;
              }
            }
          }
        }
      }
      #pages{
           .ivu-page {
            .ivu-page-item.ivu-page-item-active {
              background-color: #3399ff;
              border-color: #3399ff;
              color: #fff;
              &:hover {
                a {
                  color: #fff;
                }
              }
            }
            .ivu-page-item {
              &:hover {
                border: 1px solid #3399ff;
                a {
                  color: #3399ff;
                }
              }
            }
            .ivu-page-prev,
            .ivu-page-next {
              &:hover {
                border: 1px solid #3399ff;
                a {
                  color: #3399ff;
                }
              }
            }
          }
      }
    }
  }
}
</style>
