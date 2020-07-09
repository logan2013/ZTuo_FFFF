<template>
  <div class="agreement">
    <!-- <img src="../../assets/images/call.png"> -->
    <div class="content-wrap">
      <div class="header">
        <h2>{{title}}</h2>
        <span>{{time}}</span>
      </div>
      <div class="content">
        <span v-html="content"></span>
      </div>
    </div>
  </div>
</template>
<style scoped>
  .agreement {
    background: #fff;
    padding-bottom: 20px;
    overflow-x: hidden;
  }
  .content-wrap {
    width: 1200px;
    margin: 0 auto;
    background: #fff;
  }
  .header {
    text-align: center;
    margin-bottom: 10px;
    padding: 10px 0;
    border-bottom: 1px solid #ccc;
  }
  .header h2 {
    display: inline;
  }
  .header span {
    padding: 0 10px;
  }
</style>
<script>
  export default {
    data() {
      return {
        title:"Cayman Exchange开曼币交所上线公告",
        time:"2018-03-06",
        content:'<h4 class="h4">《久财网全球专业站法币交易平台服务协议》（以下简称“本协议”）是久财网全球专业站（www.jiucaibtc.com）（以下\n' +
        '          简称“本网站”）用户协议的补充部分，适用于本网站的下属子网站久财网全球专业站法币交易平台（otc.huobi.pro）\n' +
        '          服务。本网站的用户协议及其他条款继续适用于本网站所有用户。在您通过本网站继续下一步操作前，请您务必仔细阅 读并透彻理解本协议。如您通过本网站继续下一步操作，或以任何方式使用久财网全球专业站法 币交易平台交易服务，\n' +
        '          视为您已经谨慎阅读并理解且同意本协议。 本协议在任何时候都可以被本网站修改、更改或更新，而无需事先通知您。您应该经常检查，以确认您对本协议的复制\n' +
        '          和理解是及时和准确的。在任何修改、更改或更新的生效日期之后，如您继续选择使用本网站的任何服务，即视为您对 新修改、更改或跟新后的本协议的接受。\n' +
        '          本网站所有内容，为便利用户，提供多个语言版本，若有冲突或遗漏等情况，以中文内容为准。\n' +
        '        </h4>\n' +
        '        <h4>一、 定义 </h4>\n' +
        '        <p>\n' +
        '          1.1.久财网全球专业站法币交易平台（以下简称“法币交易平台”）：是久财网全球专业站设立关于数字资产场外交易的平台，您可以在法币交易平台创建出售/购买数字资产的卖单/买单，与意向交易对方达成交易，以满足用户间交换数字资产\n' +
        '          的需求。</p>\n' +
        '        <p>1.2.久财网全球专业站法币交易平台规则（以下简称“法币交易平台规则”）：包括在所有本网站及法币交易平台已经发布 及后续发布的用户协议、本协议及其他协议或条款、规则、实施细则、产品流程说明、公告等。</p>\n' +
        '        <p>1.3.数字资产：一般是指以电子数据的形式存在的，有一定价值的非货币性资产。出于本协议目的，在本协议环境下， 数字资产特指本网站法币交易平台允许用户之间交易的包括但不限于BTC，USDT等特定数字资产。</p>\n' +
        '      </div>'
      }
    },
    created: function() {
      this.initialize();
    },
    methods: {
      initialize() {
        this.loadTopInfo();
      },
      loadTopInfo() { /*获取首页顶部公告*/
        let param = {};
        param["sysAdvertiseLocation"] = 2;
        this.$http.post(this.host + '/uc/ancillary/system/advertise', param).then(response => {
          var result = response.body;
          if (result.code == 0 && result.data.length > 0) {
            this.title = result.data[0].name;
            this.time = result.data[0].createTime;
            this.content = result.data[0].remark;
          }
        });
      },
    }
  }
</script>
