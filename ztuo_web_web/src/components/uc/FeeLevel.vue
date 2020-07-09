<template>
    <div class="nav-rights">
        <div class="top">
            <ul>
                <li class="myLevel">{{mySelf.gradeCode}}</li>
                <li>
                    <p>{{$t("leverDescPage._feeGread")}}</p>
                    <p>{{mySelf.exchangeFeeRate}}</p>
                </li>
                <li>
                    <p>{{$t("leverDescPage._legalServiceCharge")}}</p>
                    <p>{{mySelf.exchangeFeeRate}}</p>
                </li>
                <li>
                    <p>{{$t("leverDescPage._leverServiveCharge")}}</p>
                    <p>{{mySelf.exchangeFeeRate}}</p>
                </li>
                <li>
                    <p>{{$t("leverDescPage._dayLimit")}}(USDT)</p>
                    <p>{{mySelf.withdrawCoinAmount}}</p>

                </li>
                <li>
                    <p>{{$t("leverDescPage._daynumLimit")}}</p>
                    <p>{{mySelf.dayWithdrawCount}}</p>
                </li>
            </ul>
        </div>
        <div class="top">
            <h4>{{$t("leverDescPage._gradDes")}}</h4>
            <Table :columns="columns" :data="allSelf"></Table>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            mySelf: {},
            allSelf: []
        }
    },
    created() {
        // const level = this.$store.getters.member.memberGradeId;
        const level = (memberGradeId) => {
            return `V${memberGradeId}`
        }
        const memberGradeId = level(this.$store.getters.member.memberGradeId);
        this.init().then(data => {
            const mySelf = data.filter(ele => ele.gradeCode == memberGradeId);
            this.mySelf = mySelf[0];
            this.allSelf = data;
        })
    },
    methods: {
        init() {
            return this.$http.get(this.host + "/uc/integration/grade").then(res => {
                const resp = res.body;
                if (resp.code == 0) {
                    return new Promise((resolve, reject) => {
                        resolve(resp.data);
                    })
                }
            })
        }
    },
    computed: {
        columns() {
            const arr = [];
            const E = this.$store.getters.lang == "English" ? 230 : '';
            const L = this.$store.getters.lang == "English" ? 200 : '';
            arr.push({
                title: this.$t('leverDescPage._grade'),
                key: "gradeCode"
            });
            arr.push({
                title: this.$t('leverDescPage._BitcoinServiceCharge'),
                key: "gradeCode"
            });
            arr.push({
                title: this.$t('leverDescPage._legalServiceCharge'),
                key: "gradeCode"
            });
            arr.push({
                title: this.$t('leverDescPage._leverServiveCharge'),
                key: "gradeCode"
            });
            arr.push({
                title: this.$t('leverDescPage._dayLimit')+"（USDT）",
                width: E,
                key: "gradeCode"
            });
            arr.push({
                title: this.$t('leverDescPage._daynumLimit'),
                width: L,
                key: "gradeCode"
            });
            return arr;
        }

    }
}
</script>
<style lang="scss" scoped>
%flex {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
$color: #39f;
.top {
    padding: 10px;
    ul {
        @extend %flex;
        .myLevel {
            padding: 20px;
            border-radius: 50%;
            background-color: $color;
            color: #fff;
            width: 60px;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
        }
    }
    h4 {
        font-size: 20px;
        line-height: 3;
    }
}
</style>
