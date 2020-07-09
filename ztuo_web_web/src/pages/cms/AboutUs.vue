<style lang="scss" scoped>
.about_us_container{
  background-color: #eee;
  padding: 60px 0 20px 0;
  .wrapper{
    margin: 30px 12%;
    background-color: #fff;
    padding: 0 40px;
    h2{
      font-weight: 400;
      height:50px;
      font-size:20px;
      border-bottom: 1px solid #eee;
      line-height: 50px;
    }
    .wrapper_logo ul{
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 30px;
      border-bottom: 1px solid #eee;
              height:240px;
      li{
        width: 33.3%;

        list-style-type: none;
        border-right: 1px solid #eee;
        text-align: center;
        h5{
          line-height:50px;
          font-size:20px;
        }
        span{
          color: #999;
          font-size: 14px;
        }
      }
    }
    .content_wrapper{
      padding: 20px 0;
      .content1{
        border-bottom: 1px solid #eee;
        padding-bottom: 20px;
        margin-bottom: 20px;
        h5{
          font-size: 18px;
          line-height: 40px;
          font-weight: 500;
        }
        p{
          font-size:14px;
          line-height:20px;
          color: #666;
          // margin-bottom: 14px;
        }
      }
    }
  }
}
</style>

<template>
  <div class="about_us_container">
    <div class="wrapper">
      <h2 class="title">关于我们</h2>
      <div class="wrapper_logo">
        <ul>
          <li>
            <img src="../../assets/images/feature_safe.png" alt="">
            <h5>{{$t('description.title1')}}</h5>
            <span>{{$t('description.message1')}}</span>
          </li>
          <li>
            <img src="../../assets/images/feature_fast.png" alt="">
            <h5>{{$t('description.title2')}}</h5>
            <span>{{$t('description.message2')}}</span>
          </li>
          <li style="border:none;">
            <img src="../../assets/images/feature_experience.png" alt="">
            <h5>{{$t('description.title3')}}</h5>
            <span>{{$t('description.message3')}}</span>
          </li>
        </ul>
      </div>
      <div class="content_wrapper">
        <div class="content1">
          <h5>XX网</h5>
          <p>XX网,我们拥有领先的技术实力、优质的客户服务和良好的用户体验,为广大数字货币爱好者提供一个自由的网上交换的平台。</p>
          <p>XX网</p>
          <p>XX网（币火）国际数字加密资产交易平台海外运营中心分别设立在新加坡、柬埔寨、马绍尔，国内北京、郑州、深圳三大办事处，中国总部设立在海南陵水清水湾国际信息产业园。</p>
        </div>
        <div class="content1">
          <h5>XX网理念</h5>
          <p>当下数字资产发展如火如荼，良莠不齐。XX网会筛选优质数字资产，重视项目的透明度和治理结构，在自有评级体系形成的筛选标准之上，参考市场投资者的决策，共同发掘优质数字资产价值。</p>
          <p>我们的理念是：与每一位自由汇集于此的成员共同塑造一方价值流通、合抱共耕的优质生态土壤。</p>
        </div>
        <div class="content1" style="border:none;">
          <h5>XX网目标</h5>
          <p>XX网的目标是建立一个相对去中心化的交易平台。平台的运营环境安全、公平而良性的发展，有创新、可迭代，符合社会进步和发展的趋势。</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default{
    components: {},
    created(){
    },
    computed:{
      lang(){
        return this.$store.state.lang
      }
    },
    methods:{
    }
  }
</script>
<style scoped>
  .container {
    background: #fff;
    overflow-x: hidden;
  }

  .content-wrap {
    padding-top: 20px;
    position: relative;
    width: 1200px;
    margin: 0 auto;
    background: #fff;
    min-height: 600px;
  }

  .leftmenu {
    border: 1px solid #efefef;
  }

  .leftmenu .divider {
    font-size: 20px;
    padding: 5px;
    background: #efefef;
  }

  .leftmenu li {
    font-size: 14px;
    line-height: 30px;
    padding: 5px;
  }

  .leftmenu li a {
    color: #444;
  }

  .leftmenu li a:hover {
    color: #3399ff
  }

  .leftmenu li.cur a {
    color: #3399ff;
  }
  .content{
    padding-top: 20px;
    /*padding-left: 200px;*/
    padding-bottom: 20px;
    text-align: left;
    padding-left: 20px;
  }

  .content .ivu-col{
    text-align: left;
  }

  .content p{
    text-indent: 2em;
    margin-bottom: 10px;
    font-size: 16px;
  }
  .content>div{
    padding-bottom: 20px;
  }
  .content h3{
    font-size: 22px;
    font-weight: normal;
    margin-bottom: 20px;
  }
  .content h5 {
    font-size: 14px;
  }
  .WordSection1 span{ color:black;}

</style>
