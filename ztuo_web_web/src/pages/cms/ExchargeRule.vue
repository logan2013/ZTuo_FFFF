<template>
<div class="agreement">
    <!-- <img src="../../assets/images/call.png"> -->
    <div class="agreement_tab">
        <div class="static_main">
            <router-link to="/about-rule" class="cur">{{$t('cms.exchangerule')}}</router-link>
            <router-link to="/about-protocol">{{$t('cms.useprotocol')}}</router-link>
            <router-link to="/about-fee">{{$t('cms.feenote')}}</router-link>
            <router-link to="/about-merchant">{{$t('cms.merchantprocotol')}}</router-link>
        </div>
    </div>
    <div v-if="lang==='简体中文'" class="content">

        <div class=WordSection1 >

            <p class=MsoNormal align=left style='text-align:left;vertical-align:middle'><b><span
          style='color:#333333'>法币交易区</span></b><b><span>买入规则</span></b></p>

            <p class=MsoNormal align=left style='text-align:left;vertical-align:middle'><span lang=EN-US>1</span><span>、<span
          style='color:#333333'>法币</span></span><span style='color:black'>交易区买入时需完成实名认证。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>2</span><span style='font-size:16px;color:black'>、买家需在“广告”规定的时间内完成付款，并点击确认付款按钮。买家主动取消订单或者订单超时取消，系统将记录买家取消订单一次。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>3</span><span style='font-size:16px;color:black'>、买家当日累计<span lang=EN-US>3</span>笔取消订单，会限制当日买入功能。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>4</span><span style='font-size:16px;color:black'>、因为卖家未提供有效支付方式，导致系统记录买家取消订单，买家因此被限制当天买入功能的，可以联系平台官方客服，要求解除限制。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>5</span><span style='font-size:16px;color:black'>、请勿在未付款或不付款的情况下点击“我已付款”，该行为是属于恶意行为。当此类订单发生申诉，卖家可拒绝成交，情节严重的，系统将冻结买家账户。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>6</span><span style='font-size:16px;color:black'>、如果您在<span lang=EN-US>10</span>分钟内未付款且不回应卖家，当此订单出现申诉时，卖家可拒绝成交。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>7</span><span style='font-size:16px;color:black'>、请所有的买家用户选择与您实名一致的支付账户如银行卡来付款，如果您使用非实名账户付款，当此订单出现申诉时，卖家可选择退款不成交。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>8</span><span style='font-size:16px;color:black'>、为了保证交易的及时性，请选择实时到账的汇款方式，例如支付宝、微信支付、银行实时汇款等。节假日或工作日的<span
          lang=EN-US>17</span>：<span lang=EN-US>00-9</span>：<span lang=EN-US>00</span>，超过<span lang=EN-US>5</span>万以上的汇款请分批支付，以确保到款的及时性。买家点击“我已付款”两个小时后，卖家未收到付款，订单出现申诉时，卖家可以拒绝成交。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>9</span><span style='font-size:16px;color:black'>、进行中的订单对应的数字货币资产会锁定在平台；如您转账完成，并点击“我已付款”<span
          lang=EN-US>10</span>分钟后，卖家未放币，则您可选择申诉，如您完全符合以上操作，我们会判定资产属于您。</span>
            </p>

            <p><span style='font-size:16px;color:black'>注：买家在转账时，汇款备注、说明里请备注“付款参考号”即可，请勿填写<span
          lang=EN-US>BTC</span>、比特币等数字货币字符字眼，防止您的汇款出现延迟的情况。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>&nbsp;</span></p>

            <p><b><span style='font-size:16px;color:#333333'>法币交易区</span></b><b><span
          style='font-size:16px;color:black'>卖出规则</span></b></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>1</span><span style='font-size:16px;color:black'>、当您在卖出时，请认真确认您所卖出的价格，因广告价格问题产生的申诉，如买家无违规操作，我们会判定资产属于买家并直接划转。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>2</span><span style='font-size:16px;color:black'>、买家点击“我已付款”<span
          lang=EN-US>10</span>分钟后未收到账，卖家可选择申诉；如买家不遵循先付款后点击付款、付款不能在两小时以内到达账户或付款后订单取消，卖家可选择申诉，并退款不成交。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>3</span><span style='font-size:16px;color:black'>、请核实买家的付款账户是否与平台的实名信息一致。如不一致，请卖家注意收款的风险，当此类订单发生申诉时，卖家可选择退款拒绝成交。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>4</span><span style='font-size:16px;color:black'>、请在登录网银查看收款无误后，第一时间放行。买家无任何违规，买家标记订单状态为“已付款”后的<span
          lang=EN-US>20</span>分钟以内，卖家无法完成放行的，当此订单发生申诉时，买家有权要求退款不成交，如卖家拒绝协调，我们会直接放行给买家并冻结卖家账户。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>5</span><span style='font-size:16px;color:black'>、为了确保交易的及时性，请发布广告时务必确保能在线并及时处理订单；如您无法保证及时处理交易订单，请及时下架，以免造成不必要的申诉纠纷。</span></p>

            <p><span style='font-size:16px;color:black'>注：对于交易纠纷，平台有最终裁判权。对于恶意冻结订单、恶意付款、利用交易涉嫌诈骗等行为，平台可选择冻结账户，必要时协助司法机关进行处理。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>&nbsp;</span></p>

            <p><strong><span style='font-size:16px;color:black'>发布广告规则：</span></strong></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>1、</span><span style='font-size:16px;
color:black'>完成商家认证成为商家才能发布广告。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>2、</span><span style='font-size:16px;
color:black'>发布广告免费。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>3</span><span style='font-size:16px;color:black'>、交易完成后收取广告方交易额的<span
          lang=EN-US>0.1%</span>作为手续费。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>4</span><span style='font-size:16px;color:black'>、如您不在设备旁或离线无法及时处理订单，请提前下架广告。此类广告如产生订单，属于正常订单，按正常交易流程处理。</span></p>

            <p><span lang=EN-US style='font-size:16px;color:black'>5</span><span style='font-size:16px;color:black'>、发布求购广告时，当天累计取消订单达到<span
          lang=EN-US>3</span>笔的，系统会限制您当天的买入功能。</span>
            </p>

            <p><span lang=EN-US style='font-size:16px;color:black'>&nbsp;</span></p>

            <p><strong><span style='font-size:16px;color:black'>交易规则内容会根据市场及运营情况进行合理调整，请大家及时关注内容更新。</span></strong></p>

            <p><strong><span lang=EN-US style='font-size:16px;color:black'>&nbsp;</span></strong></p>

            <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US style=''>&nbsp;</span></p>

        </div>

    </div>
    <div v-else class="content">
        <p><b>Buying Rules of Legal Tender Trading Area 
</b></p>
        <p>1. Real-name certification is required when buying the legal tender trading area.
        </p>
        <p>2. The buyer must complete the payment within the time specified in the advertisement and click the confirm payment button. If the buyer cancels the order or the order is canceled for timeout, the system will record the buyer canceling the order
            once.
        </p>
        <p>3. The buyer accumulative total of 3 cancellations on the same day, the buying function on that day will be limited.
        </p>
        <p>4. Because the seller did not provide a valid payment method, the system records the buyer to cancel the order, therefore, the buyer is restricted to buy the same day, you can contact the platform's official customer service, request to lift the
            restrictions.
        </p>
        <p>5. Please do not click "I have paid" without payment or no payment, which is a malicious act. When such an order is appealed, the seller can refuse the transaction. If the circumstances are serious, the system will freeze the buyer's account.
        </p>
        <p>6. If you do not pay within 10 minutes and do not respond to the seller, the seller can refuse the transaction when there is an appeal on this order.
        </p>
        <p>7. Please ask all buyers to choose the payment account that is consistent with your real name, such as bank card. If you use a non-real name account to pay, when the order has an appeal, the seller can choose to refund the transaction.
        </p>
        <p>8. In order to ensure the timeliness of the transaction, please select the real-time remittance method, such as Alipay, WeChat payment, bank real-time remittance, etc. In 17:00-9:00 on holidays or working days, if the remittance is over 50,000,
            please pay in batches to ensure the timeliness of payment.Two hours after the buyer clicks "I have paid", the seller has not received the payment. When the order has an appeal, the seller can refuse the transaction.
        </p>
        <p>9. The digital currency assets corresponding to the ongoing order will be locked on the platform. If you have completed the transfer and clicked "I have paid" for 10 minutes, the seller has not placed the currency, you can choose to appeal. If
            you fully comply with the above operation, we will determine that the asset belongs to you.
        </p>
        <p>Note: When the buyer transfers the money, please note the “payment reference number” in the remittance remarks and instructions. Please do not fill in the words of digital currency characters, such as BTC and Bitcoin, to prevent delay in your
            remittance.
        </p>
        <p><b>Selling Rules of Legal Tender Trading Area
</b></p>
        <p>1. When you are selling, please carefully confirm the price you are selling, and the complaint arising from the advertising price problem. If the buyer has no illegal operation, we will determine that the asset belongs to the buyer and directly
            transfer.
        </p>
        <p>2. The seller does not receive the account after the buyer clicks “I have paid” for 10 minutes, and the seller can choose to appeal. If the buyer does not follow the prepayment and clicks on the payment, the payment cannot be reached within two
            hours or the order is canceled after the payment, the seller can choose the appeal and the refund is not completed.
        </p>
        <p>3. Please verify that the buyer's payment account is consistent with the real-name information of the platform. If it is inconsistent, please pay attention to the risk of collection. When such an order is appealed, the seller can choose to refund
            the transaction.
        </p>
        <p>4. Please log in to the online banking to check the payment is correct,and release at the first time. The buyer marks the order status as "have paid" within 20 minutes and the buyer has no violations, but the seller cannot complete the release.
            When the order is appealed, the buyer has the right to request the refund not to be closed, if the seller refuses to coordinate, We will release the buyer directly and freeze the seller account.
        </p>
        <p>5. In order to ensure the timeliness of the transaction, please ensure that the order can be processed online and in time when the advertisement is published; if you cannot guarantee the timely processing of the transaction order, please remove
            it in time to avoid unnecessary disputes.
        </p>
        <p>Note: For trading disputes, the platform has the final jurisdiction. For malicious freezing of orders, malicious payments, use of transactions suspected of fraud, etc., the platform may choose to freeze the account and assist the judicial authorities
            to handle if necessary.
        </p>
        <p><b>Advertising rules:
</b></p>
        <p>1. Complete the merchant certification to become a merchant to post an advertisement.
        </p>
        <p>2. Publish advertising for free.
        </p>
        <p>3. After the transaction is completed, 0.1% of the amount of the advertiser's transaction will be charged as a handling fee.
        </p>
        <p>4. If you are not at the equipment or offline and cannot process the order in time, please remove the advertisement in advance. Such advertisements, if they generate an order, they will be considered to be normal orders and should be processed
            in accordance with the normal transaction procedures.
        </p>
        <p>5. The system will limit your purchase function for the day if you cancel 3 orders on the same day when you publish the advertisement for purchase. The content of the trading rules will be adjusted according to the market and operation conditions.
            Please pay attention to the content update in time.</p>
            <p><b>The content of the trading rules will be adjusted according to the market and operation conditions. Please pay attention to the content update in time.</b></p>
    </div>
</div>
</template>

<style scoped>
.agreement {
    background: #fff;
    padding-bottom: 20px;
    overflow-x: hidden;
}

.agreement_tab {
    height: 49px;
    text-align: center;
    margin-bottom: 20px;
    border-bottom: 1px solid #ccc;
}

.agreement_tab a {
    padding: 0 4px 16px;
    margin: 0 32px;
    color: #666;
    font-size: 14px;
    line-height: 48px;
}

.agreement_tab a.cur {
    color: #3399ff;
    font-weight: bold;
    border-bottom: 2px solid #3399ff;
}

/*.content {*/

/*width: 1200px;*/

/*margin: 0 auto;*/

/*font-size: 14px;*/

/*}*/

/*.content p {*/

/*line-height: 1.5;*/

/*margin-bottom: 10px;*/

/*}*/

.content {
    padding-top: 20px;
    /*padding-left: 200px;*/
    padding-bottom: 20px;
    text-align: left;
    padding-left: 20px;
    padding-right: 20px;
}

.content .ivu-col {
    text-align: left;
}

.content p {
    text-indent: 2em;
    margin-bottom: 10px;
    font-size: 16px;
}

.content>div {
    padding-bottom: 20px;
}

.content h3 {
    font-size: 22px;
    font-weight: normal;
    margin-bottom: 20px;
}

.content h5 {
    font-size: 14px;
}

.WordSection1 span {
    color: black;
}
</style>

<script>
export default {
    components: {},
    created() {
        this.init();
    },
    computed: {
        lang() {
            return this.$store.state.lang;
        }
    },
    methods:{
      init(){
      }
    }
};
</script>
