<template>
    <div class="moneyAnddetail">
        <div class="money">
            <ul>
                <li>
                    <p>{{$t('plate.yesterdaytit')}}</p>
                    <div class="fenpeiImg">54.22131257</div>
                </li>
                <li class="total">
                    <p>{{$t('plate.yesterdaytotal')}}</p>
                    <div class="totalImg">54.22131257</div>
                </li>
            </ul>
        </div>
        <div class="detail">
            <div class="title">
                <span class="circle">●</span>
                <span class="content">{{$t('plate.yesterdayxiangqing')}}</span>
                <span class="circle">●</span>
            </div>
            <div v-if=" lang==='简体中文' ">
              <Table size="small" :columns="columns2" :data="data1"></Table>
            </div>
            <div v-else>
              <Table size="small" :columns="columns1" :data="data1"></Table>
            </div>
        </div>
    </div>
</template>
<script>
export default {
  components: {},
  data(){
    let self = this;
       return {
            columns1: [
                    {
                        title: 'Coin',
                        key: 'coin'
                    },
                    {
                        title: "Undistributed Revenues",
                        key: 'total'
                    },
                    {
                        title: "Total Revenues",
                        key: 'allocated'
                    }
                ],
                 columns2: [
                    {
                        title: 'Coin',
                        key: 'coin'
                    },
                    {
                        title: "待分配收入",
                        key: 'total'
                    },
                    {
                        title: "平台总手续费",
                        key: 'allocated'
                    }
                ],
            data1: [
                    {
                        coin: 'John Brown',
                        total: 18,
                        allocated: 'New York No. 1 Lake Park'
                    }
                ]
       }
  },
  computed:{
      lang(){
        return this.$store.state.lang
      }
  },
};
</script>
<style lang="scss" scoped>
* {
  margin: 0;
  padding: 0;
}
.moneyAnddetail {
  .money {
    background: #fff;
    margin: 20px auto;
    padding: 20px;
    border-radius: 5px;
    ul {
      list-style-type: none;
      &:after {
        display: block;
        content: "";
        clear: both;
      }
      li {
        // float: left;
        padding-left: 20px;
        box-sizing: border-box;
        p {
          font-size: 12px;
        }
        .fenpeiImg {
          background: url("../../assets/images/ethColor.png") no-repeat;
          background-size: contain;
          color: #e67810;
        }
        .totalImg {
          background: url("../../assets/images/ethBase.png") no-repeat;
          background-size: contain;
        }
        div {
          height: 20px;
          margin:10px 0 20px 0;
          padding-bottom: 10px;
          padding-left: 20px;
          font-size: 18px;
          line-height: 20px;
        }
      }
    }
  }
  .detail {
    width: 75%;
    background: #fff;
    margin: 20px auto;
    padding-bottom: 40px;
    border-radius: 5px;
    .title {
      padding:30px 0 30px;
      text-align: center;
      .circle {
        color: #e67810;
      }
      .content {
        font-size: 18px;
        padding: 10px;
      }

    }
  }
}
@media screen and (max-width: 415px){
  .moneyAnddetail {
  .money {
      width: 90%;
    ul {
      &:after {
        display: block;
        content: "";
        clear: both;
      }
      li {
        float: inherit;
      }
      .total {
        border: none;
      }
    }
  }
    .detail{
        width: 90%;
    }
  }
}
@media screen and (min-width: 415px){
    .money {
    width: 75%;
    background: #fff;
    margin: 20px auto;
    padding: 20px;
    ul {
      list-style-type: none;
      &:after {
        display: block;
        content: "";
        clear: both;
      }
      li {
        float: left;
        padding-left: 20px;
        box-sizing: border-box;
        width: 50%;
        p {
          font-size: 12px;
        }
        .fenpeiImg {
          background: url("../../assets/images/ethColor.png") no-repeat;
          background-size: contain;
          color: #e67810;
        }
        .totalImg {
          background: url("../../assets/images/ethBase.png") no-repeat;
          background-size: contain;
        }
        div {
          height: 20px;
          margin-top: 20px;
          padding-left: 20px;
          font-size: 18px;
          line-height: 20px;
        }
      }
      .total {
        border-left: 1px solid #f5f5f5;
      }
    }
  }
}


</style>

