<template>
    <div class="content-wrap">
        <div class="ww">
            <div class="container" id="List">
                <Row>
                    <Col span="4">
                    <div class="leftmenu">
                        <ul class="nav nav-pills nav-stacked">

                            <span class="leftmenu-title leftmenu-folding top" data-folding="trademenu1">
                                <i class="lefticon icon3"></i>
                                {{$t('uc.order.ordercenter')}}
                            </span>
                            <li class="">
                                <router-link to="/ordermanagement/myorder">{{$t('uc.order.myorder')}}</router-link>
                            </li>
                            <li class="">
                                <router-link to="/ordermanagement/myad">{{$t('uc.order.myad')}}</router-link>
                            </li>
                        </ul>
                    </div>
                    </Col>
                    <Col span="20">
                    <!-- <keep-alive> -->
                    <router-view></router-view>
                    <!-- </keep-alive> -->
                    </Col>
                </Row>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    components: {
    },
    data() {
        return {

        }
    },
    created: function() {
        this.init();
    },
    methods: {
        init() {
            this.$store.state.HeaderActiveName = '1-4';
           if (!localStorage.TOKEN||!localStorage.MEMBER) {
                this.$Message.success(this.$t('common.logintip'));
                this.$router.push('/login');
            }
        },
    }
}
</script>
<style scoped>
.leftmenu a.router-link-active {
    background: #ebeff5;
    color: #3399ff !important;
}
.icon3 {
    background: url('../../assets/img/ordericon.png') no-repeat 0 0;
    background-size: 100% 100%;
}

.content-wrap {
    background: #f5f5f5;
    min-height: 750px;
}

.container {
    padding-top: 30px;
    margin: 0 auto;
}





/* left */

.leftmenu {
    margin-bottom: 60px;
    background: #fff;
    position: relative;
    min-height: 1px;
    padding: 20px 15px;
}

.nav {
    margin-bottom: 0;
    padding-left: 0;
    list-style: none;
}

.nav>li {
    line-height: 50px;
}

.leftmenu .nav-stacked {
    background: #fff;
}

.leftmenu .leftmenu-title {
    line-height: 55px;
    font-size: 16px;
    background: 0 0;
    color: #0B0D1B;
    /* padding-left: 20px; */
    /*border-top: #f1f1f1 solid 1px;
	border-bottom: #f1f1f1 solid 1px;*/
    display: block;
    /* cursor: pointer; */
}

.leftmenu .nav>li>a {
    display: block;
    color: #000;
    font-size: 14px;
}

.leftmenu .nav-pills>li.active>a,
.leftmenu .nav>li>a:hover,
.nav-pills>li.active>a:focus,
.nav-pills>li.active>a:hover {
    background: #ebeff5;
    color: #00b5f6;
}

.leftmenu .leftmenu-title.top {
    border-top: 0;
}

.leftmenu .lefticon {
    width: 26px;
    height: 26px;
    margin-right: 5px;
    display: inline-block;
    vertical-align: middle;
}
</style>

