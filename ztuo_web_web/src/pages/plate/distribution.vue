<template>
    <div class="plate_distribute">
        <!-- <img src="../../assets/images/text.png" alt="" class="title-img"> -->
        <div class="abstract">
            <div class="title">
                <span class="circle">●</span>
                <span class="content">{{$t('plate.title')}}</span>
                <span class="circle">●</span>
            </div>
            <div class="content">
                <p>{{$t('plate.content1')}}</p>
                <p>{{$t('plate.content2')}}</p>
                <p>
                    <span>{{$t('plate.content3')}}</span>
                    <router-link to="/">{{$t('plate.content3_1')}}</router-link>
                    <span>】{{$t('plate.content3_2')}}</span>
                </p>
            </div>
            <div class="abs_img">
                <img src="../../assets/images/element.png" alt="">
            </div>
        </div>
        <router-view></router-view>
    </div>
</template>
<style lang="scss">
.plate_distribute {
  height: auto;
  background: url("../../assets/images/discributeBack.png") no-repeat;
  background-size: cover;
  overflow: hidden;
  .title-img{
    margin-left: 12.5%;
    margin-top: 110px;
  }
  .abstract {
    width: 75%;
    background: #fff;
    border-radius: 5px;
    padding: 20px;
    margin: 20px auto;
    .title {
      text-align: center;
      .circle {
        color: #e67810;
      }
      .content {
        font-size: 18px;
        padding: 10px;
      }
    }
    .content {
      padding: 20px;
      p {
        line-height: 25px;
        text-align: left;
        a{
          color: #e67810;
        }
      }
    }
    .abs_img {
      width: 73%;
      margin: 0 auto;
      img {
        width: 70%;
        margin: 0 15%;
      }
    }
  }
}

@media screen and (max-width: 415px){
  .plate_distribute{
    .abstract{
      width: 90%;
      .content{
        padding: 5px;
        font-size: 16px;
      }
      .abs_img {
      width: 100%;
      margin: 20px auto;
    }
    }
  }
}
</style>

<script>
</script>
