<template>
  <div class="agreement">
    <!-- <img src="../../assets/images/call.png"> -->
    <div class="agreement_tab">
      <div class="static_main">
        <router-link to="/about-rule">{{$t('cms.exchangerule')}}</router-link>
        <router-link to="/about-protocol" class="cur">{{$t('cms.useprotocol')}}</router-link>
        <router-link to="/about-fee">{{$t('cms.feenote')}}</router-link>
        <router-link to="/about-merchant">{{$t('cms.merchantprocotol')}}</router-link>
      </div>
    </div>
    <div v-if="lang==='简体中文'" class="content">

      <div class=WordSection1 style='layout-grid:15.6pt'>
        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei'>本协议及附加协议适用于您的访问和使用由<span lang=EN-US>XX网</span>（网址：</span><span
          lang=EN-US style=''>http://bhuo.top）（以下简称“<span lang=EN-US>XX网(币火)</span>”、“本网站”或“我们”）提供的数字资产投资交易服务（统称为“本服务”）。签订其他有关本网站所提供的产品的相关协议不会影响本协议的生效。如果您代表任何机构使用本服务，您声明并保证（<span
          lang=EN-US>1</span>）该机构是符合当地法律法规的合法机构，（<span lang=EN-US>2</span>）您有权代表该机构接受本协议。如果您违反本协议，该机构同意对您的行为负责。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>请仔细阅读这些服务协议（以下简称为“本协议”）。通过点击“注册”按钮或通过访问或使用本服务，即代表您同意遵守本协议及所有附加协议。如果您不同意受本协议的约束，请勿访问或使用本服务。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm'><b><span lang=EN-US style=''>一、</span></b><b><span
          style=''>协议修订</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>XX网(币火)</span><span style='font-family:
Microsoft YaHei;background:white'>保留不时修订本协议、并以网站公示的方式进行公告、不再单独通知您的权利，变更后的协议会在本协议首页标注变更时间，一经在网站公布，立即自动生效。您应不时浏览及关注本协议的更新变更时间及更新内容，如您不同意相关变更，应当立即停止使用本网站服务；您继续使用本网站服务，即表示您接受并同意经修订的协议的约束。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>二、</span></b><b><span
          style=''>适用范围</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>本服务仅适用于<span lang=EN-US>18</span>岁或以上的用户。通过访问或使用我们的服务，您声明并确保您至少年满<span
          lang=EN-US>18</span>岁，没有被剥夺过适用本服务的权利。您也保证您不在任何贸易或经济制裁清单中，如联合国安理会制裁清单，也不受香港金融管理局、香港海关等香港行政执法机构限制或禁止适用任何交易平台。此外，<span
          lang=EN-US>XX网(币火)</span>可能不会在所有国家或地区提供本服务，并可能会对受限制地区的用户提供部分或不提供本服务，其中包括中国香港，古巴、伊朗、朝鲜、克里米亚、苏丹、马来西亚、叙利亚、美国<span
          lang=EN-US>[</span>包括所有美国领土，如波多黎各、美属萨摩亚、关岛、北马里亚纳群岛邦、美属维尔京群岛（圣克罗伊岛，圣约翰岛和圣托马斯岛）<span
          lang=EN-US>]</span>、孟加拉国、玻利维亚、厄瓜多尔和吉尔吉斯斯坦。本协议内容不受用户所属国家或地区法律的排斥。因此，如果您不符合这些要求，请勿使用我们的服务。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>三、</span></b><b><span
          style=''>创建账户</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>3.1 </span><span style='font-family:
Microsoft YaHei;background:white'>账户创建资格</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>您确认并承诺：在您完成注册程序或以其他本网站允许的方式实际使用本网站提供的服务时，您应当是具备可适用的法律规定的可签署本协议及使用本网站服务应具有的能力的自然人、法人或其他组织。您一旦点击同意注册按钮，即表示您自身或您的有权代理人已经同意该协议内容并由其代理注册及使用本网站服务。若您不具备前述主体资格，则您及您的有权代理人应承担因此而导致的一切后果，且公司保留注销或永久冻结您账户，并向您及您的有权代理人追究责任的权利。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>3.2 </span><span style='font-family:
Microsoft YaHei;background:white'>账户创建目的</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>您确认并承诺：您进行本网站注册并非出于违反法律法规或破坏本网站数字资产交易秩序的目的。</span></p>

        <p><span lang=EN-US style='font-size:10.5pt;background:white'>3.3
</span><span style='font-size:10.5pt;background:white'>账户创建流程</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>（<span lang=EN-US>1</span>）您同意根据本网站用户注册页面的要求提供有效电子邮箱、手机号码等信息，您可以使用您提供或确认的邮箱、手机号码或者本网站允许的其它方式作为登陆手段进入本网站。如有必要，按照不同法域相关法律法规的规定，您必须提供您的真实姓名、身份证件等法律法规及隐私协议及反洗钱协议规定的相关信息并不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。您应对该等信息的真实性、完整性和准确性负责，并承担因此产生的任何直接或间接损失及不利后果。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>（<span lang=EN-US>2</span>）如您所在主权国家或地区的法律法规、规则、命令等规范对手机号码有实名要求，您同意提供注册的手机号码是经过实名登记的，如您不按照规定提供，因此给您带来的任何直接或间接损失及不利后果均应由您承担。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>（<span lang=EN-US>3</span>）您合法、完整并有效提供注册所需信息并经验证，有权获得本网站账号和密码，您获得本网站账号及密码时视为注册成功，可在本网站进行会员登陆。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span style='font-family:
Microsoft YaHei;background:white'>（<span lang=EN-US>4</span>）您同意接收本网站发送的与本网站管理、运营相关的电子邮件和<span
          lang=EN-US>/</span>或短消息。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>四、</span></b><b><span
          style=''>网站服务</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>我们提供一个包含数字资产的在线交易平台，用于交易数字资产和衍生品，并提供保证金贷款服务。交易者在我们的平台上进行交易<span
          lang=EN-US>; XX网(币火)</span>作为平台提供商不参与实际交易。交易者必须在开始交易之前开立账户并预存数字资产。<span
          lang=EN-US>XX网(币火)</span>不接受法定货币，也不适用法定货币结算，因此我们是一个仅提供数字资产间交易的平台。交易者可以随时要求提取其数字资产，但须遵守本协议的限制。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>XX网(币火)</span><span
          style='background:white'>会尽力确保网站上信息的准确性。网站上的信息和内容如有更改，恕不另行通知，且仅为协助用户以做出独立决定。<span
          lang=EN-US>XX网(币火)</span>已采取合理措施确保网站信息的准确性。但是，我们不保证本网站所提供的任何服务或产品内容的准确性，适用性，可靠性，完整性，性能和<span
          lang=EN-US>/</span>或恰当性，且不对任何直接或间接造成的损失或损害，信息传递的延迟或失败承担责任。 <span lang=EN-US>XX网(币火)</span>对此类信息的使用或解释不承担任何责任。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>用户必须自行准备如下设备和承担如下开支：</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>4.1 </span><span
          style='background:white'>上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他上网装置；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>4.2 </span><span
          style='background:white'>上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>用户在接受<span lang=EN-US>XX网(币火)</span>各项服务的同时，同意接受<span
          lang=EN-US>XX网(币火)</span>提供的各类信息服务。用户在此授权<span lang=EN-US>XX网(币火)</span>可以向其电子邮件、手机、通信地址等发送商业信息。用户有权选择不接受<span
          lang=EN-US>XX网(币火)</span>提供的各类信息服务，并进入<span lang=EN-US>XX网(币火)</span>相关页面进行更改。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>用户理解并同意，<span lang=EN-US>XX网(币火)</span>的服务是按照现有技术和条件所能达到的现状提供的。<span
          lang=EN-US>XX网(币火)</span>会尽最大努力向用户提供服务，确保服务的连贯性和安全性；但<span lang=EN-US>XX网(币火)</span>不能随时预见和防范法律、技术以及其他风险，包括但不限于不可抗力、病毒、木马、黑客攻击、系统不稳定、第三方服务瑕疵、政府行为等原因可能导致的服务中断、数据丢失以及其他的损失和风险。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>系统平台因下列状况无法正常运作，使用户无法使用各项服务或不能正常委托时，<span
          lang=EN-US>XX网(币火)</span>不承担损害赔偿责任，该状况包括但不限于：</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>1</span>）<span
          lang=EN-US>XX网(币火)</span>平台公告之系统停机维护期间；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>2</span>）电信设备出现故障不能进行数据传输的；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>3</span>）因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成<span
          lang=EN-US>XX网(币火)</span>平台系统障碍不能执行业务的；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>4</span>）由于黑客攻击、计算机病毒侵入或发作、电信部门技术调整或故障、网站升级、银行方面的问题、因政府管制而造成的暂时性关闭等影响网络正常经营的原因而造成的服务中断或者延迟；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>5</span>）因为行业现有技术力量无法预测或无法解决的技术问题而造成的损失；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>6</span>）因第三方的过错或者延误而给用户或者其他第三方造成的损失。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>由于系统故障，网络原因，<span lang=EN-US>DDoS</span>等黑客攻击等意外因素可能导致的异常成交，行情中断，以及其他可能的异常情况，<span
          lang=EN-US>XX网(币火)</span>有权根据实际情况取消异常成交结果，以及回滚某一段时间的所有成交。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>XX网(币火)</span><span
          style='background:white'>的部分服务是以收费方式提供的，如用户使用收费服务，请遵守相关的协议。<span
          lang=EN-US>XX网(币火)</span>可能根据实际需要对收费服务的收费标准、方式进行修改和变更，<span lang=EN-US>XX网(币火)</span>也可能会对部分免费服务开始收费。前述修改、变更或开始收费前，<span
          lang=EN-US>XX网(币火)</span>将在相应服务页面进行通知或公告。如果用户不同意上述修改、变更或付费内容，则应停止使用该服务。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>XX网(币火)</span><span
          style='background:white'>不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户<span
          lang=EN-US>BTC/LTC/ETH</span>充值地址打款，请大家不要相信任何<span lang=EN-US>XX网(币火)</span>打折、优惠等信息，往非<span
          lang=EN-US>BTC/LTC/ETH</span>交易中心提供的账户、地址里打款或币所造成的损失本站不负责任。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>交易异常处理：用户使用本服务时同意并认可，可能由于数字货币网络连线问题或其他不可抗拒因素，造成本服务无法提供。用户确保所输入的您的资料无误，如果因资料错误造成本网站于上述异常状况发生时，无法及时通知用户相关交易后续处理方式的，本网站不承担任何损害赔偿责任。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>用户同意，基于运行和交易安全的需要，本网站可以暂时停止提供或者限制本服务部分功能<span
          lang=EN-US>, </span>或提供新的功能，在任何功能减少、增加或者变化时，只要用户仍然使用本服务，表示用户仍然同意本协议或者变更后的协议。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>本网站有权了解用户使用本网站产品或服务的真实交易背景及目的，用户应如实提供本网站所需的真实、全面、准确的信息；如果本网站有合理理由怀疑用户提供虚假交易信息的，本公司有权暂时或永久限制用户所使用的产品或服务的部分或全部功能。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>五、</span></b><b><span
          style=''>用户权利和义务</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.1 </span><span style='font-family:
Microsoft YaHei;background:white'>如您不具备本协议约定的注册资格，则本网站有权拒绝您进行注册，对已注册的，本网站有权注销您的会员账号，本网站保留向您或您的有权代理人追究责任的权利。同时，本网站保留其他任何情况下决定是否接受您注册的权利。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.2 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站发现账户使用者并非账户初始注册人时，有权中止或终止该账户的使用。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.3 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站通过技术检测、人工抽检等检测方式合理怀疑您提供的信息错误、不实、失效或不完整时，有权通知您更正、更新信息或中止、终止为其提供本网站服务。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.4 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站有权在发现本网站上显示的任何信息存在明显错误时，对信息予以更正。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.5 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站保留随时修改、中止或终止本网站服务的权利，本网站行使修改或中止服务的权利不需事先告知您；本网站终止本网站一项或多项服务的，终止自本网站在网站上发布终止公告之日生效。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.6 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站应当采取必要的技术手段和管理措施保障本网站的正常运行，并提供必要、可靠的交易环境和交易服务，维护数字资产交易秩序。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.7 </span><span style='font-family:
Microsoft YaHei;background:white'>如您连续一年未使用本网站会员账号和密码登陆本网站，则本网站有权注销您的本网站账号。账号注销后，本网站有权将相应的会员名开放给其他您注册使用。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.8 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站通过加强技术投入、提升安全防范等措施保障您的数字资产的安全，有义务在您账户出现可以预见的安全风险时提前通知您。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.9 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站有权随时删除本网站内各类不符合法律法规或本网站规定等的内容信息，本网站行使该等权利不需提前通知您。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>5.10 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站有权根据您所属主权国家或地区的法律法规、规则、命令等规范的要求，向您要求提供更多的信息或资料等，并采取合理的措施，以符合当地的规范之要求，您有义务配合；本网站有权根据您所属主权国家或地区的法律法规、规则、命令等规范的要求，暂停或永久停止对您的开放本网站及其部分或全部服务</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>六、</span></b><b><span
          style=''>风险提示</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>数字资产交易涉及重大风险。交易或持有数字资产很有可能会造成您的损失。因此，您应该根据自己的财务状况，仔细考虑是否要交易数字资产或相关衍生品及使用杠杆。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>6.1 XX网(币火)</span><span
          style='background:white'>认为，数字资产不应该被称为钱和法定货币，因为它们不以政府或中央银行为后盾支持。<span
          lang=EN-US>XX网(币火)</span>不能保证数字资产市场的有序稳定。您应该在数字资产（以及任何其他资产）交易中保持谨慎。价格会随时波动。由于价格波动，您可能会有大额的盈利或亏损。任何数字资产或交易头寸都可能发生大幅度波动，甚至可能变得毫无价值。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>6.2 </span><span
          style='background:white'>在使用本服务时，若用户或用户的交易指令出现错误（包括但不限于价格、数量等因素）而使用户的交易出现损失时，如果非本站交易规则的原因，损失责任将由用户自己承担。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>6.3 </span><span
          style='background:white'>因用户的过错导致的任何损失由用户自行承担，该过错包括但不限于：不按照交易提示操作，未及时进行交易操作，遗忘或泄漏密码，密码被他人破解，用户使用的计算机被他人侵入。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>6.4 </span><span
          style='background:white'>在使用本服务时，若用户因为网站交易规则中潜在的尚未发现的某种漏洞而产生的不当得利，本站将联系用户追回，您必须有效予以配合，否则本站将采取包括但不限于限制账户交易、冻结账户资金、向有管辖权的法院起诉等追索措施，因用户不予有效配合而给<span
          lang=EN-US>XX网(币火)</span>产生的追索费用也将由您承担。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>七、</span></b><b><span
          style=''>免责声明</span></b></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.1 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>不担保服务不会受中断，对服务的及时性、安全性都不作担保，不承担非因<span
          lang=EN-US>XX网(币火)</span>一方网络导致的责任； </span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.2 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>不担保网站平台上的信息及服务能充分满足用户的需求。对于用户在接受<span
          lang=EN-US>XX网(币火)</span>服务过程中可能遇到的错误、侮辱、诽谤、不作为、淫秽、色情或亵渎事件，<span lang=EN-US>XX网(币火)</span>不承担法律责任<span
          lang=EN-US>; </span></span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.3 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>不对用户所发布信息的保存、修改、删除或储存失败负责。对网站上的非因<span
          lang=EN-US>XX网(币火)</span>故意所导致的排版错误、疏忽等不承担责任； </span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.4 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>有权删除<span lang=EN-US>XX网(币火)</span>内各类不符合法律或协议规定的信息，而保留不通知用户的权利<span
          lang=EN-US>; </span></span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.5 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>内所有用户所发表的用户评论，仅代表用户个人观点，并不表示本网站赞同其观点或证实其描述，本网站不承担用户评论引发的任何法律责任；
</span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.6 </span><span style='font-size:10.5pt;
background:white'>所有发给用户的通告，<span lang=EN-US>XX网(币火)</span>都将通过正式的页常规的信件送达。任何非经<span
          lang=EN-US>XX网(币火)</span>正规渠道获得的中奖、优惠等活动或信息，<span lang=EN-US>XX网(币火)</span>不承担法律责任；
</span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.7 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>有权根据市场情况调整充值、提现、交易等手续费费率，有权决定免费推广期的终止； </span></p>

        <p style='background:white'><span lang=EN-US style='font-size:10.5pt;
background:white'>7.8 XX网(币火)</span><span style='font-size:10.5pt;
background:white'>不会担任您使用本服务的任何交易的经纪人，中间人，代理人或顾问，并且<span
          lang=EN-US>XX网(币火)</span>没有受托责任；</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>八、</span></b><b><span
          style=''>隐私声明</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>XX网(币火)</span><span
          style='background:white'>尊重用户的隐私。<span lang=EN-US>XX网(币火)</span>隐私政策单独提供，描述了<span
          lang=EN-US>XX网(币火)</span>如何收集，存储，披露和使用与您的隐私相关的信息。您同意<span lang=EN-US>XX网(币火)</span>根据<span
          lang=EN-US>XX网(币火)</span>隐私政策的协议使用您的信息。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>8.1 </span><span
          style='background:white'>本协议所称之<span lang=EN-US>XX网(币火)</span>用户信息是指符合法律、法规及相关规定，并符合下述范围的信息：</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>1</span>）用户注册<span
          lang=EN-US>XX网(币火)</span>时，向<span lang=EN-US>XX网(币火)</span>提供的个人信息；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>2</span>）用户在使用<span
          lang=EN-US>XX网(币火)</span>服务、参加网站活动或访问网站网页时，<span lang=EN-US>XX网(币火)</span>自动接收并记录的用户浏览器端或手机客户端数据，包括但不限于<span
          lang=EN-US>IP</span>地址、网站<span lang=EN-US>Cookie</span>中的资料及用户要求取用的网页记录；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>3</span>）<span
          lang=EN-US>XX网(币火)</span>从商业伙伴处合法获取的用户个人信息；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>4</span>）其它<span
          lang=EN-US>XX网(币火)</span>通过合法途径获取的用户个人信息。</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          lang=EN-US style='background:white'>8.2 XX网(币火)</span><span
          style='background:white'>承诺：</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>非经法定原因或用户事先许可，<span lang=EN-US>XX网(币火)</span>不会向任何第三方透露用户的密码、姓名、手机号码等非公开信息<span
          lang=EN-US>;</span></span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>在下述法定情况下，用户的个人信息将会被部分或全部披露：</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>1</span>）经用户同意向用户本人或其他第三方披露；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>2</span>）根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的第三方披露；</span></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>（<span lang=EN-US>3</span>）其它<span
          lang=EN-US>XX网(币火)</span>根据法律、法规等相关规定进行的披露。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>九、</span></b><b><span
          style=''>赔偿</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>9.1 </span><span
          style='color:#2A3A4B;background:white'>在任何情况下，我们对您的直接损害的赔偿责任均不会超过您从使用本网站服务产生的为期三（<span
          lang=EN-US>3</span>）个月的总费用。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>9.2 </span><span
          style='color:#2A3A4B;background:white'>如您发生违反本协议或其他法律法规等情况，您须向我们至少赔偿<span
          lang=EN-US>100</span>万美元及承担由此产生的全部费用（包括律师费等），如不够弥补实际损失，您须补全。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>十、</span></b><b><span
          style=''>仲裁</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>您和<span lang=EN-US>XX网(币火)</span>同意仲裁由本协议引起的任何争议或与本服务有关的争议，除非您和<span
          lang=EN-US>XX网(币火)</span>不需要仲裁，任何一方就涉嫌非法使用版权，商标，商品名，标识， 商业秘密或专利权的争议寻求衡平的或其他救济。仲裁优先于在法庭起诉或进行陪审团审判。您和<span
          lang=EN-US>XX网(币火)</span>同意您将在发生任何争议之后的三十（<span lang=EN-US>30</span>）天之内通知对方，您将在提交任何仲裁请求之前尝试非正式解决争议，任何仲裁将在香港发生，仲裁将由单一仲裁员保密地进行。您和<span
          lang=EN-US>XX网(币火)</span>也同意，香港的法院对当事人之间的任何仲裁的上诉以及不受仲裁解决的当事人之间的任何诉讼均具有专属的管辖权。在任何仲裁中，当事人不得相互探寻彼此，仲裁员不得允许当事人探寻彼此；相反，各方应在最终听证会之前的相互同意的时间和日期披露支持其立场的证据。除了以下讨论的程序和补救措施外，仲裁员有权授予若在法庭上起诉也会授予的补救措施。您和我们也不会参与本协议涉及的任何索赔的集体诉讼或集体仲裁。如果<span
          lang=EN-US>XX网(币火)</span>是诉讼的一方，您也同意不参与由私人律师或代表身份提出的索赔或涉及另一人的共同索赔。如果发现禁止上述第三方提起的集体诉讼和其他索赔是不可执行的，则该禁止规定视为已从本协议中删除，而与仲裁有关的其他协议应继续有效。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>十一、</span></b><b><span
          style=''>协议的终止</span></b></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>11.1 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站有权依据本协议约定注销您的本网站账号，本协议于账号注销之日终止。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>11.2 </span><span style='font-family:
Microsoft YaHei;background:white'>本网站有权依据本协议约定终止全部本网站服务，本协议于本网站全部服务终止之日终止。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>11.3 </span><span style='font-family:
Microsoft YaHei;background:white'>本协议终止后，您无权要求本网站继续向其提供任何服务或履行任何其他义务，包括但不限于要求本网站为您保留或向您披露其原本网站账号中的任何信息，
向您或第三方转发任何其未曾阅读或发送过的信息等。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style='background:white'>11.4 </span><span style='font-family:
Microsoft YaHei;background:white'>本协议的终止不影响守约方向违约方要求其他责任的承担。</span></p>

        <p class=MsoNormal align=left style='margin-left:0cm;text-align:left;
text-indent:0cm;'><b><span lang=EN-US style=''>十二、</span></b><b><span
          style=''>其他规定</span></b></p>

        <p class=MsoNormal align=left style='text-align:left;background:white'><span
          style='background:white'>这些协议规定了双方就服务主题的完整理解，取代了与之有关的所有先前的理解和沟通。
任何与本协议所规定的内容不一致的其他文件，将不对<span lang=EN-US>XX网(币火)</span>具有约束力。 您声明并保证所有披露给<span
            lang=EN-US>XX网(币火)</span>的与本服务协议有关的信息是真实，准确和完整的。</span></p>

        <p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
                                                                    style=''>&nbsp;</span></p>

      </div>

    </div>
    <div v-else class="content" >
      <p>This agreement and the additional agreement shall be applicable to your visit and use of the digital assets investment transaction service provided by XX网, (website: http://bhuo.top)hereinafter referred to as XX网, this website or US. The conclusion of other relevant agreements relating to the products provided on this website shall not affect the entry into force of this agreement. If you use this service on behalf of any organization, you declare and guarantee (1) that the agency is a legitimate body in accordance with local laws and regulations, (2) you have the right to accept this agreement on your behalf. If you violate this agreement, the agency agrees to be responsible for your actions.</p>
      <p>Please read these service agreements carefully (hereinafter referred to as this agreement). By clicking the sign-up button or by accessing or using this service, you agree to comply with this agreement and all additional agreements. If you do not agree to be bound by this agreement, please do not visit or use this service.</p>
      <p><b>1.Amendment of the Agreement</b></p>
      <p>XX网 reserves the right to amend this agreement from time to time in the form of a public announcement on the website, without further notice of your rights. The amended agreement shall mark the change of time on the first page of this agreement and shall enter into force immediately upon publication on the website. You should visit and follow up the update and update of this agreement from time to time. If you do not agree to the changes, you should stop using the service immediately.</p>
      <p>You will continue to use this website, this means that you accept and agree to be bound by the amended agreement.</p>
      <p><b>2.Scope of Application</b></p>
      <p>This service only applies to users aged 18 or above. By accessing or using our services, you declare and ensure that you are at least 18 years of age and have not been deprived of the right to use this service. You also guarantee that you will not be included in any trade or economic sanctions list, such as the United Nations Security Council sanctions list, or the Hong Kong executive enforcement agencies such as the Hong Kong Monetary Authority and the Customs and Excise Department to restrict or prohibit the application of any trading platform. In addition, XX网 may not provide the service in all countries or regions and may provide partial or non-provision of this service to users in restricted areas, including Hong Kong, China, Cuba, Iran, the Democratic People's Republic of Korea, Crimea, Sudan, Malaysia, Syria,  Bangladesh, Bolivia, Ecuador, Kyrgyzstan and the United States, here the United States includes all United States territories, such as Puerto Rico, American Samoa, Guam, the northern Marianas, United States Virgin Islands (Saint Croix, Saint John and Saint Thomas). The content of this agreement shall not be excluded from the laws of the country or region to which the user belongs. Therefore, if you do not meet these requirements, please do not use our services.</p>
      <p><b>3.Create an account </b></p>
      <p>3.1 Account creation qualification</p>
      <p>You confirm and commit that when you complete the registration process or actually use the services provided by this site in a manner permitted by this site, you should be a natural person, legal person or other organization with the capacity to sign this Agreement and to use the services provided by applicable law. Once you click the sign-up button, you or your authorized agent have agreed to the content of the agreement and are represented by it to register and use this site service. If you do not possess the foregoing qualifications, you and your authorized agent shall bear all the consequences resulting therefrom, and t he company reserves the right to cancel or freeze your account permanently and to hold you and your authorized agent liable.</p>
      <p>3.2 Purpose of creation of an account</p>
      <p>You confirm and promise that you did not register this website for the purpose of violating laws and regulations or disrupting the order of digital asset transactions on this site.</p>
      <p>3.3 Account creation process </p>
      <p>A.You agree to provide information such as valid e-mail address, mobile phone number, etc. According to the requirements of the user registration page of this website, you can use your email, mobile phone number or any other means permitted by this website to access this site as a login. If necessary, in accordance with the relevant laws and regulations in different jurisdictions, you must provide your real name, identity documents, other laws and regulations, and privacy agreements and the relevant information provided in the anti-money laundering agreement and Keep up-to-date registration information, meet the requirements of timely, detailed and accurate. All raw typed data will be referenced as registered information. You shall be responsible for the authenticity, completeness and accuracy of such information and bear any direct or indirect losses and adverse consequences arising therefrom.</p>
      <p>B.If you agree that the registered mobile phone number is registered in real name, if you do not provide it in accordance with the regulations, rules, orders, etc. of your sovereign country or region, therefore, any direct or indirect losses and adverse consequences to you should be borne by you. </p>
      <p>C.You are legally, fully and effectively providing the information required for registration and have verified that you are entitled to the Account Number and password of this website, you shall be deemed to have been registered successfully. You may login this website for membership.</p>
      <p>D.You agree to receive e-mails and / or short messages related to the manage.</p>
      <p><b>4.Web Services</b></p>
      <p>We offer an online trading platform that includes digital assets for the trading of digital assets and derivatives. Traders Trade on our platform; XX网 acts as a platform provider and does not participate in the actual transaction. A trader must open an account and pre-store digital assets before starting a transaction. XX网 does not accept legal tender and does not use legal tender, so we are a platform that only provides digital assets to each other. The trader may at any time request the extraction of its digital assets subject to the restrictions of this agreement. </p>
      <p>XX网 will do everything in its power to make sure the sourcing circumstances on the site. The information and content on the website is subject to change without prior notice and only to assist the user in making an independent decision. XX网 has taken reasonable measures to ensure the sourcing circumstances of the website. However, we do not guarantee the accuracy, suitability, reliability, integrity, performance and / or appropriateness of any service or product content provided on this website and we don’t be liable for any loss or damage, whether direct or indirect, the delay or failure of the transmission of information. XX网 does not bear any responsibility for the use or interpretation of such information.</p>
      <p>Users are required to prepare the following equipment and undertake the following expenses:</p>
      <p>4.1 Internet access equipment including computers or other Internet access terminals, Modems and other internet-connected devices; comment and operation of this web site.</p>
      <p>4.2 Internet access expenses, including those that are not limited to Internet access charges, Internet access charges, mobile phone traffic charges, etc.</p>
      <p>While accepting XX网 services, users have agreed to accept various information services provided by XX网. Users can now authorize XX网 to send business messages to their e-mail, mobile phone, mailing address, etc. The user has the right to choose not to accept the various information services provided by XX网 and to enter the XX网-related page for change.</p>
      <p>Users understand and agree that the services of XX网 are provided in accordance with the current state of affairs that can be achieved in accordance with available technology and conditions. XX网 will do its utmost to provide services to users to ensure the continuity and security of services, but XX网 is not always able to foresee and guard against legal, technical and other risks, these include, but are not limited to terrorist attack , viruses, hacker attacks, systemic instability, third party service flaws, government actions, and so on.</p>
      <p>The system platform can not function properly due to the fact that the user is unable to use the services or is not able to properly delegate, the XX网 does not assume liability for damages, including but not limited to:</p>
      <p>A.Downtime of the XX网 Platform Bulletin System</p>
      <p>B.Failure of telecommunications equipment to transmit data</p>
      <p>C.Factors such as typhoons, earthquakes, tsunamis, floods, power, wars, terrorist attacks, etc, causing the XX网 platform system to fail to perform business</p>
      <p>D.Service interruptions or delays due to hacking attacks, computer virus or seizures, technical adjustments or failures in the telecommunications sector, website upgrades, bank problems, temporary closures due to government control, etc. that affect the normal operation of the network</p>
      <p>E.Losses caused by technical problems that can not be predicted or solved by the existing technical force of the trade</p>
      <p>F.Losses caused to users or other third parties as a result of the fault or delay of a third party</p>
      <p>Some of the services of XX网 are provided on a fee basis. If you are using a fee-based service, please comply with the relevant agreement. XX网 may modify and change the fee-charging standards and methods according to actual needs, and XX网 may also start charging for some of the free services. Prior to the amendment, change or commencement of the charge, XX网 will be notified or advertised on the corresponding service page. If the user does not agree with the above changes, changes or paid content, it should stop using the service.</p>
      <p>XX网 does not ask for passwords from any user and does not allow users to make payments to the account BTC/ LTC/ ETH provided in any non-site trading centre. Please do not trust any XX网 discount, discount, etc, it is not responsible for any loss of money or money in the account, address, or account provided by the non-BTC / LTC / ETH trading centre. Transaction exception handling: user consent and approval when using this service may be rendered unserviceable due to the problem of digital currency network connection or other irresistible factors. Users ensure that the information you have entered is correct. The site will not be liable for any damages if it is unable to notify the user in time of the occurrence of any of the above abnormal circumstances due to a data error.</p>
      <p>Users agree that the site can temporarily stop providing or limiting some of the functionality of the service or provide new functionality to reduce, increase, or change any functionality, based on the need for security of operation and transaction, as long as the user is still using this service, it means that the user still agrees with this agreement or the changed agreement.</p>
      <p>This website has the right to know the true trading background and purpose of users using the products or services of this website. Users should provide the true, comprehensive and accurate information required by this website The company reserves the right to temporarily or permanently restrict some or all of the functions of the products or services used by the users if there are reasonable grounds to suspect that the user is providing false information about the transaction.</p>
      <p><b>5.User Rights and Obligations</b></p>
      <p>5.1 If you are not eligible for registration under this agreement, this website reserves the right to deny you registration and the right to cancel your membership account in respect of a registered, this website reserves the right to hold you or your authorized agent accountable. At the same time, this website reserves the right to decide whether or not to accept your registration under any other circumstances.</p>
      <p>5.2 The site finds that the user of an account is not the original user of the account and has the right to suspend or terminate the use of the account.
</p>
      <p>5.3 This website reasonably suspects that the information you provide is false, untrue, invalid or incomplete by means of technical inspection, manual sampling, etc, and we have the right to inform you to correct, update, or discontinue or terminate the service of providing this web site.
</p>
      <p>5.4 This website reserves the right to correct any information that appears in this website when there is a manifest error.
</p>
      <p>5.5 This website reserves the right to modify, discontinue or terminate the services of this website at any time. The right to modify or discontinue this website does not require prior notice to you; this website terminates one or more of the services of this website, the date on which the notice of termination is published on this website shall be terminated.
</p>
      <p>5.6 This website shall adopt the necessary technical means and management measures to ensure the proper operation of this website and provide the necessary and reliable trading environment and transaction services to maintain the order of digital asset transactions.
</p>
      <p>5.7 If you have not used the membership account and password of this website for a continuous year, this website reserves the right to cancel your account. After the account is written off, this website has the right to open the corresponding membership name to other registered users. 
</p>
      <p>5.8 This website is obliged to notify you in advance of foreseeable security risks in your account by enhancing technical input and enhancing security precautions to protect your digital assets.
</p>
      <p>5.9 This website reserves the right to remove from this website any content or information that is not in conformity with the laws and regulations or the provisions of this website, etc. . You are not required to notify you in advance of the exercise of these rights.
</p>
      <p>5.10 This website reserves the right to request more information or information from you in accordance with the requirements of the laws, regulations, orders and other regulations of the sovereign country or region to which you belong, and to take reasonable measures to meet the requirements of local norms, you are under an obligation to cooperate; this website has the right to suspend or permanently discontinue any or all of your services for the opening of this site or any part thereof, as required by the laws, regulations, orders and other regulations of the sovereign country or region to which you belong.</p>
      <p><b>6.Risk Tips for the Future
</b></p>
      <p>The transaction of digital assets involves significant risks. Trading or holding digital assets is likely to cause your loss. Therefore, you should carefully consider whether to trade digital assets or related derivatives and to use leverage in the light of your financial situation. </p>
      <p>6.1 XX网 argues that digital assets should not be called money and legal tender because they are not backed by governments or central banks. XX网 can not guarantee the orderly stability of the digital asset market. You should be cautious about trading in digital assets (and any other assets) . The price is going to fluctuate all the time. As a result of price fluctuations, you may have a large profit or loss. Any digital asset or trading position can fluctuate wildly, and may even become worthless.
</p>
      <p>6.2 In the use of this service, when the user or user's trading order error (including but not limited to factors such as price, quantity, etc.) causes a loss of the user's transaction, if not the reason of the local trading rules, the liability for loss will be borne by the user.
</p>
      <p>6.3 Any loss arising from the user's fault shall be borne by the user himself, including but not limited to that failure to follow the instructions of the transaction, failure to conduct the transaction in time, forgetting or divulging the password, and the password being deciphered by others, the computer used by the user was hacked.
</p>
      <p>6.4 When using this service, you will contact the user to recover any improper gains arising from potential undetected vulnerabilities in the site's trading rules, otherwise, we will take the following measures, including, but not limited to, restrictions on account transactions, freezing of account funds and prosecution of cases before competent courts, and the recovery costs incurred by the XX网 arising from the lack of effective user cooperation. 
</p>
      <p><b>7.Disclaimer
</b></p>
      <p>7.1 The non-guarantee service of XX网 will not be interrupted, nor will it guarantee the timeliness and security of the service and will not be liable for any liability arising from the network of XX网.</p>
      <p>7.2 XX网 does not guarantee that the information and services on the plat form of the web site can fully meet the needs of users. XX网 is not liable for any errors, insults, defamation, omissions, obscenity, pornography or profanity that may have been encountered in the course of accepting XX网 services.</p>
      <p>7.3 XX网 is not responsible for the failure of the user to save, modify, delete, or store information. To the website not because of XX网 intentionally caused typo error, neglect and so on.</p>
      <p>7.4 XX网 has the right to delete all types of information in XX网 that do not conform to the provisions of the law or the agreement, while retaining the right not to notify the user.</p>
      <p>7.5 The user comments made by all users in the XX网  only represent the personal views of the user and do not mean that the site agrees with these views or confirms these descriptions, and that this website does not bear any legal liability arising from user comments.</p>
      <p>7.6 All notices sent to users, XX网 will be delivered by formal page-by-letter delivery. Any activities or information obtained through the regular channels of XX网 shall not be subject to legal liability.</p>
      <p>7.7 XX网 shall have the right to decide the termination of the free promotion period by adjusting the charge rate of charges such as charging, cashing and trading according to the market conditions.</p>
      <p>7.8 XX网 will not act as a broker, intermediary, agent or consultant for any transaction in which you use this service, and XX网 is not liable.</p>
      <p><b>8. Privacy Statement</b></p>
      <p>XX网 respects the privacy of its users. The privacy policy of XX网 is provided separately, describing how XX网 collects, stores, discloses and Uses Information Relevant to your privacy. You agree with XX网 to use your information under the XX网 privacy policy agreement.</p>
      <p>8.1 The term, XX网 customer information, in this agreement refers to information that conforms to the laws, regulations and relevant regulations and is consistent with the following scope:</p>
      <p>A.The personal information provided to XX网 when a user registers.
</p>
      <p>B.When a user uses the XX网 service, participates in a website activity or visits a web page, XX网 automatically receives and records the user's browser or mobile client data, includes, but is not limited to, the IP address, the information in the website Cookie, and the web records requested by the user.
</p>
      <p>C.User's personal information legally obtained from a business partner by XX网.
</p>
      <p>D.Other user's personal information obtained by legal means by other XX网.
</p>
      <p>8.2 XX网 commitment</p>
      <p>Non-public information, such as user's password, name and mobile number, will not be disclosed to any third party without legal reasons or prior permission of the user.</p>
      <p>The personal information of the user will be disclosed in part or in full under the following statutory circumstances:</p>
      <p>A.to disclose to the user or other third parties with the consent of the user
</p>
      <p>B.to disclose to the administrative, judicial or other law a third party disclosure in accordance with relevant provisions, such as laws and regulations, or at the request of an administrative body
</p>
      <p>C.other XX网 (currency and fire) disclosure in accordance with the relevant provisions of laws and regulations.
</p>
      <p><b>9.Compensation</b></p>
      <p>9.1 In no case, our liability for your direct damage will not exceed your total cost of three months from the use of this site.</p>
      <p>9.2 In case of any violation of this agreement or any other laws or regulations, you shall indemnify us in the amount of at least US $1 million and bear the full costs (including attorney's fees, etc.). If it is not enough to make up for the actual loss, you must fill it up.
</p>
      <p><b>10.Arbitration</b></p>
      <p>You and XX网 agree to arbitrate any disputes arising out of this agreement or disputes relating to this service unless you and XX网 do not need arbitration and either party is suspected of illegal use of copyright, trademark, trade name, logo, seek a balanced or other remedy for a dispute over trade secrets or patents. Arbitration takes precedence over prosecution before a court or trial by jury. You and XX网 agree that you will notify the other party within 30 days of any dispute that you will attempt to resolve the dispute informally before submitting any arbitration request, and any arbitration will take place in Hong Kong, the arbitration will be conducted in confidence by a single arbitrator. You and XX网 also agree that the courts of Hong Kong have exclusive jurisdiction over appeals against any arbitration between the parties and any proceedings between parties that are not subject to arbitration. In any arbitration where the parties are not allowed to explore one another, the arbitrators shall not allow the parties to seek each other; on the contrary, the parties shall disclose evidence in support of their position at the time and date of mutual consent prior to the final hearing. In addition to the procedures and remedies discussed below, the arbitrators are entitled to grant remedies that would have been granted had they been brought to court. Neither you nor we will participate in class action or collective arbitration in any of the claims covered by this agreement. If XX网 is a party to the proceedings, you also agree not to participate in a claim filed by a private lawyer or representative or a joint claim involving another person. If a collective action or other claim against the third party mentioned above is found to be unenforceable, the prohibition shall be deemed to have been removed from this agreement, while other agreements relating to arbitration shall remain in force.</p>
      <p><b>11.Termination of the agreement 
</b></p>
      <p>11.1 This website reserves the right to cancel your account in accordance with this agreement. This agreement shall terminate on the date of cancellation of the account.
</p>
      <p>11.2 This web site shall have the right to terminate all the services of this website as agreed in this agreement. This agreement shall terminate on the date of termination of all services on this website.
</p>
      <p>11.3 After the termination of this agreement, you are not entitled to request this website to continue to provide it with any services or to perform any other duties, including, but not limited to, requiring this website to retain or disclose to you any information contained in its original website account, forward to you or a third party any information that it has not read or sent.
</p>
      <p>11.4 The termination of this agreement shall not affect the commitment of the parties to the breach to other liabilities.
</p>
      <p><b>12.Other provisions
</b></p>
      <p>These agreements provide for a complete understanding of the subject matter and supersede all previous understandings and communications related to them. Any other document inconsistent with the provisions of this agreement shall not be binding on XX网. You declare and certify that all information disclosed to XX网 in connection with this service agreement is true, accurate and complete.</p>
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
