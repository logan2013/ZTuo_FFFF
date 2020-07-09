<template>
  <div class="agreement">
    <!-- <img src="../../assets/images/call.png"> -->
    <div class="agreement_tab">
      <div class="static_main">
        <router-link to="/about-rule">{{$t('cms.exchangerule')}}</router-link>
        <router-link to="/about-protocol">{{$t('cms.useprotocol')}}</router-link>
        <router-link to="/about-fee">{{$t('cms.feenote')}}</router-link>
        <router-link to="/about-merchant" class="cur">{{$t('cms.merchantprocotol')}}</router-link>
      </div>
    </div>
    <div v-if="lang==='简体中文'" class="content">

      <div class=WordSection1 style='layout-grid:15.6pt'>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei'>请确认，在开始“认证商家”前，您已详细阅读了本协议所有内容，一旦您开始认证流程，即表示您充分理解并同意接受本协议的全部内容。为了提高交易的安全性和本平台注册用户身份的可信度，<span
          lang=EN-US>XX网(币火)</span>（以下简称本网站）向您提供认证服务。您申请认证，本网站有权采取各种其认为必要手段对用户的身份进行识别。但是，作为普通的网络服务提供商，本网站所能采取的方法有限，而且在网络上进行用户身份识别也存在一定的困难，因此，本网站对完成认证的用户身份的准确性和绝对真实性不做任何保证。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>一、关于认证服务的理解与认同</span></b></p>


        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>1.1.</span><span style=''>认证服务是由本网站提供的一项身份识别服务。除非本协议另有约定，一旦您在本网站账户完成了认证，相应的身份信息和认证结果将不因任何原因被修改或取消；如果您的身份信息在完成认证后发生了变更，您应向本网站提供相应有权部门出具的凭证，由本网站协助您变更您账户的对应认证信息。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>1.2.</span><span style=''>本网站有权单方随时修改或变更本协议内容，并通过本网站公告变更后的协议文本，无需单独通知您。本协议进行任何修改或变更后，您还继续使用本网站提供的服务，即代表您您已阅读、了解并同意接受变更后的协议内容；您如果不同意变更后的协议内容，应立即停用本网站的服务。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>1.3.</span><span style=''>关于认证解除，如认证商家需要解除认证，须向本网站提交申请。如认证商家账户中无仍处纠纷的不良记录等影响交易安全的行为<span
          lang=EN-US>,</span>本网站将于<span lang=EN-US>3</span>个工作日内审核通过。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>二、关于认证材料的使用</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>2.1.</span><span style=''>认证资料的管理：您在认证时提交给本网站的认证资料，即不可撤销地授权由本网站保留。本网站承诺除法定或约定的事由外，不公开、编辑或透露您的认证资料，且不将保存在本网站的非公开内容用于商业目的，但以下情形除外：</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>1)</span><span style=''>您授权本网站透露的相关信息；</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>2)</span><span style=''>本网站向国家司法及行政机关提供；</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>3)</span><span style=''>本网站向本网站关联企业提供；</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>4)</span><span style=''>第三方和本网站一起为用户提供服务时，该第三方向您提供服务所需的相关信息（不包括您的银行账户信息）。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>5)</span><span style=''>基于解决您与第三方民事纠纷的需要，本网站有权向该第三方提供您的身份信息。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>三、第三方网站的链接</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>3.1.</span><span style=''>为实现身份信息审查，本网站上可能包含指向第三方网站（如网上银行网站）的链接（以下简称“链接网站”）。“链接网站”非由本网站控制，对于任何“链接网站”的内容，包含但不限于“链接网站”内含的任何链接，或“链接网站”的任何改变或更新，本网站均不予负责。自“链接网站”接收的网络传播或其它形式之传送，本网站不予负责。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>四、不得为非法或禁止的使用</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>4.1.</span><span style=''>接受本协议全部的说明、条款、条件是您申请认证的先决条件。您声明并保证，您不得为任何非法或为本协议、条件及须知所禁止之目的进行认证申请。您不得以任何可能损害、使瘫痪、使过度负荷或损害其他网站或其他网站的服务或本网站或干扰他人对于认证商家申请的使用等方式使用认证服务。您不得经由非本网站许可提供的任何方式取得或试图取得任何资料或信息。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>五、有关免责</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei'>下列情况时本网站无需承担任何责任：</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>5.1.</span><span style=''>由于您将账户密码告知他人或未保管好自己的密码或与他人共享账户或任何其他非本网站的过错，导致您的个人资料泄露。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>5.2.</span><span style=''>任何由于黑客攻击、计算机病毒侵入或发作、电信部门技术调整导致之影响、因政府管制而造成的暂时性关闭、由于第三方原因<span
          lang=EN-US>(</span>包括不可抗力，例如国际出口的主干线路及国际出口电信提供商一方出现故障、火灾、水灾、雷击、地震、洪水、台风、龙卷风、火山爆发、瘟疫和传染病流行、罢工、战争或暴力行为或类似事件等<span
          lang=EN-US>)</span>及其他非因本网站过错而造成的认证信息泄露、丢失、被盗用或被篡改等。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>5.3.</span><span style=''>由于与本网站链接的其它网站（如网上银行等）所造成的银行账户信息泄露及由此而导致的任何法律争议和后果。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>5.4.</span><span style=''>任何因用户向本网站提供错误、不完整、不实信息等造成不能通过认证或遭受任何其他损失，概与本网站无关。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

        <p class=MsoNormal align=left style='text-align:left'><b><span
          style=''>六、特别声明</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei'>下列情况时本网站无需承担任何责任：</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>6.1.</span><span style=''>本网站对认证商家进行的基本资料审查和保证金要求，并不代表认证商家<span
          lang=EN-US>100%</span>可信，也不代表本网站与认证商家之间存在任何保证关系。请本网站用户严格按照流程交易，做好对交易方的资料审核，详尽沟通，保证自身的交易和资产安全！同时，基于数字资产交易的特殊性，您需要在反洗钱方面的风险格外注意，按照<span
          lang=EN-US>KYC</span>原则的要求对您交易对方的身份进行了解，否则您将可能因交易对方涉嫌犯罪而面临资产冻结等风险。本网站对认证商家进行的基本资料审查和保证金要求，并不代表认证商<span
          lang=EN-US>100%</span>可信，也不代表本网站与认证商家之间存在任何保证关系。请本网站用户严格按照流程交易，做好对交易方的资料审核，详尽沟通，保证自身的交易和资产安全！同时，基于数字资产交易的特殊性，您需要在反洗钱方面的风险格外注意，按照<span
          lang=EN-US>KYC</span>原则的要求对您交易对方的身份进行了解，否则您将可能因交易对方涉嫌犯罪而面临资产冻结等风险。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

      </div>

    </div>
    <div v-else class="content">
      <p>Please confirm that you have read all the contents of this agreement before you start the certification merchant, and once you start the authentication process, you fully understand and agree to accept the full content of t his agreement. In order to improve the security of the transaction and the trustworthiness of the registered user of this platform, XX网 (hereinafter referred to as this website) provides authentication services to you. You apply for authentication, this website has the right to take all the means it deems necessary to identify the user. However, as a general network service provider, there are limited methods available on this site and there are so me difficulties in implementing user identification on the web, this website does not guarantee the accuracy and absolute authenticity of the user identity that completes the authentication.</p>
      <p><b>1.Understanding and recognition of Certification Service</b></p>
      <p>1.1 The authentication service is an identification service provided by this website. Unless otherwise agreed in this agreement, once you have completed authentication in the account of this website, the corresponding identification information and authentication results will not be modified or cancelled for any reason; if your identity is altered after authentication ha s been completed, you should provide the credentials issued by the appropriate authority to this website to help you change the corresponding authentication information of your account. </p>
      <p>1.2 This website reserves the right to modify or alter the contents of this agreement at any time and to publish the text of the changed agreement through this website at any time without notice to you. After any modification or modification of this agreement, you continue to use the services provided by this website, that is to say that you have read, understood and agreed to accept the content of the changed agreement; if you do not agree t o the content of the changed agreement, the service of this website should be discontinued immediately.</p>
      <p>1.3 For authentication, an application should be submitted to this website if the certification merchant needs to be disengaged. This website will be approved within 3 working days if there is no adverse record in the account of the certification merchant that would affect the safety of the transaction.</p>
      <p><b>2.The use of authentication materials</b> </p>
      <p>2.1. Management of authentication data: The authentication information that you submit to this website at the time of authentication is irrevocably authorized to be retained by this website. This website undertakes not to publish, edit or disclose your authentication information except for statutory or contractual matters and will not use the non-public contents of this website for commercial purposes, except for the following cases:</p>
      <p>A.you authorize the information disclosed on this website;
</p>
      <p>B.This web site is made available to the National Judiciary and Executive Branch; 
</p>
      <p>C.This website is made available to the relevant enterprises of this website;
</p>
      <p>D.Where the Third Party and this web site provide services to users, the third party shall provide you with the relevant information (excluding your bank account information .
</p>
      <p>E.Based on the need to resolve your civil dispute with a third party, this website has the right to provide the third party with your identity information.
</p>
      <p><b>3.Links of the  third-party websites</b> </p>
      <p>3.1 To review identity information, this site may contain links to third-party websites, such as Internet Banking Websites (hereinafter referred to as link site). The link site is not controlled by this site.This site is not responsible for any link site containing, but not limited to, any link contained in the link site, or any change or update of the link site. This website is not responsible for the network propagation or other forms of transmission received by the link website.</p>
      <p><b>4.Do not use for illegal or prohibited use</b>
</p>
      <p>4.1  Accept all the instructions, terms and conditions of this agreement as a prerequisite for your application for certification. You declare and guarantee that you shall not apply for accreditation for any purposes that are unlawful or prohibited by this agreement, terms and conditions. You must not use authentication services in any way that may damage, paralyze, overload or harm the services of other websites or other websites or the use of this website or interference wit h the use of the application by a certification authority. You may not obtain or attempt to obtain any information by any means permitted by the non-site.</p>
      <p><b>5.Disclaimer</b>
</p>
      <p>This site is not liable for any of the following cases :</p>
      <p>5.1 Your personal information has been compromised by the fact that you have informed others of your account password or have not kept your password or shared an account with others or any other non-site error.
</p>
      <p>5.2 Any temporary closure due to hacking, computer virus or seizures, technical adjustments in the telecommunications sector, temporary closure due to government control and third-party reasons (including major routes of international exports and failures on the part of international export telecommunications providers, fire, flood, lightning, earthquake, flood, typhoon, Tornado, volcanic eruption, epidemic of epidemic and infectious diseases, strikes, wars or acts of violence or similar incidents) and other non-fault-caused authentication information, loss, theft, or tampering.
</p>
      
      <p>5.3 Any legal disputes and consequences arising from the disclosure of bank account information resulting from other websites linked to this website, such as internet banking.
</p>
      <p>5.4 Any error, incomplete or inaccurate information provided by users to this website which results in failure to authenticate or suffer any other loss is not relevant to this website.
</p>
      <p><b>6.Special Declaration</b> 
</p>
      <p>This site is not liable for any of the following cases:</p>
      <p>This site will carry on the basic information examination and the margin request to the certification merchant. This does not mean that the certification merchant  is completely trusted and does not mean there is any guarantee relationship between this site and the certification merchant. Please strictly follow the process of transaction, to do a good job of checking the information of the parties, communicate in detail, and ensure their own transaction and asset safety! At the same time, based on the specificity of digital asset transactions, you need to pay particular attention to the risks of anti-money laundering and to understand the identity of your counter-parties as required by KYC principles. Otherwise, you may face the risk of asset freezing if the counter-party is suspected of committing a crime.</p>
     
    
    
    </div>
  </div>
</template>
<script>
  export default{
    components: {},
    created(){
      this.init();
    },
    computed:{
      lang(){
        return this.$store.state.lang
      }
    },
    methods:{
      init(){
      }
    }
  }
</script>
<style scoped>
  .agreement {
    background: #fff;
    padding-bottom: 20px;
    overflow-x:hidden;
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
  /*.content div,*/
  /*.content p.paragraph{*/
    /*text-indent: 2em;*/
  /*}*/
  /*.content .paragraph {*/
    /*font-weight:  bold;*/
  /*}*/
  /*.content ul {*/
    /*margin-bottom: 10px;*/
  /*}*/
  /*h2 {*/
    /*text-align: center;*/
  /*}*/


  .content{
    padding-top: 20px;
    /*padding-left: 200px;*/
    padding-bottom: 20px;
    text-align: left;
    padding-left: 20px;
    padding-right: 20px;
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
  .WordSection1 span{ color:black;    font-family: Microsoft YaHei;}
</style>
