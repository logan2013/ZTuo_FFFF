<template>
    <div>
        <div class="time">
            <span>倒计时</span>
            <span class="hour">{{countTimeobj.h|filteradd}}</span>
            <span class="maohao">:</span>
            <span class="minute">{{countTimeobj.m|filteradd}}</span>
            <span class="maohao">:</span>
            <span class="second">{{countTimeobj.s|filteradd}}</span>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      countTimeobj: {
        h: "--",
        m: "--",
        s: "--"
      }
    };
  },
  props: ["content"],
  created() {
    const str=this.gettoday(this.content);
    this.countTime(str);
  },
  filters: {
    filteradd(value) {
      return value < 10 ? "0" + value : value + "";
    }
  },
  methods: {
    add(str) {
      return str < 10 ? "0" + str : str + "";
    },
    gettoday(str) {
      let date = new Date();
      let year = date.getFullYear() + "";
      let month = this.add(date.getMonth() + 1);
      let day = this.add(date.getDate());
      return year + "/" + month + "/" + day + " " + str;
    },
    countTime(str) {
      //获取当前时间
      var date = new Date();
      var now = date.getTime();
      //设置截止时间
      var endDate = new Date(str);
      var end = endDate.getTime();
      //时间差
      var leftTime = end - now;
      if (leftTime >= 0) {
        this.countTimeobj = {
          h: Math.floor((leftTime / 1000 / 60 / 60) % 24),
          m: Math.floor((leftTime / 1000 / 60) % 60),
          s: Math.floor((leftTime / 1000) % 60)
        };
        // return {
        //   h: Math.floor((leftTime / 1000 / 60 / 60) % 24),
        //   m: Math.floor((leftTime / 1000 / 60) % 60),
        //   s: Math.floor((leftTime / 1000) % 60)
        // };
      } else {
        this.disabled = true;
        this.countTimeobj = {
          h: "--",
          m: "--",
          s: "--"
        };
        // return {
        //   h: "--",
        //   m: "--",
        //   s: "--"
        // };
      }
      let timer = setTimeout(() => {
        if (leftTime <= 0) {
          clearTimeout(timer);
          this.$emit('tozero');
        } else {
          this.countTime(str);
        }
      }, 1000);
    }
  }
};
</script>