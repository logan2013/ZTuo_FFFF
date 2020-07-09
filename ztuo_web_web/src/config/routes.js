export default [
    { path: '/', component: resolve => require(['../pages/index/Index.vue'], resolve) },
    { path: '/index', component: resolve => require(['../pages/index/Index.vue'], resolve) },
    { path: '/login', component: resolve => require(['../pages/uc/login'], resolve) },
    { path: '/login/returnUrl/:returnUrl', component: resolve => require(['../pages/uc/login'], resolve) },
    { path: '/register', component: resolve => require(['../pages/uc/register'], resolve) },
    { path: "/closeGoogleval", name: "closegoogleVali", component: resolve => require(['../pages/google/CloseGoogleVali.vue'], resolve) },
    { path: "/openGoogleVali", name: "resetgooglevali", component: resolve => require(['../pages/google/ResetGoogleVali.vue'], resolve) },
    // { path: "/lever/:coin", name: "lever", component: resolve => require(['../pages/lever/Index.vue'], resolve) },
    { path: '/findPwd', component: resolve => require(['../pages/uc/findpwd'], resolve) },
    { path: '/exchange', component: resolve => require(['../pages/exchange/exchange'], resolve) },
    { path: '/exchange/*', component: resolve => require(['../pages/exchange/exchange'], resolve) },
    // { path: '/help', component: Help },
    { path: '/helplist', component: resolve => require(['../pages/cms/HelpList'], resolve) },
    { path: '/helpdetail', component: resolve => require(['../pages/cms/HelpDetail'], resolve) },
    // { path: '/message', component: Message },
    { path: '/notice', component: resolve => require(['../pages/cms/Notice'], resolve) },
    { path: '/notice/index', component: resolve => require(['../pages/cms/NoticeItem'], resolve) },
    { path: '*', component: resolve => require(['../pages/index/Index.vue'], resolve) },
    { path: '/blc', component: resolve => require(['../pages/blc/Bilicai'], resolve) },
    { path: '/bjc', component: resolve => require(['../pages/bjc/Bijingcai'], resolve) },
    {
        path: '/otc',
        component: resolve => require(['../pages/otc/Main'], resolve),
        children: [{
            path: 'trade/*',
            component: resolve => require(['../pages/otc/Trade'], resolve),
        }]
    },
    // {
    //     path: '/finance',
    //     component: finance,
    //     children: [{
    //             path: '',
    //             component: moneyindex
    //         },
    //         {
    //             path: 'money',
    //             component: moneyindex
    //         },
    //         {
    //             path: 'record',
    //             component: record
    //         },
    //         {
    //             path: 'recharge',
    //             component: recharge
    //         },
    //         {
    //             path: 'withdraw',
    //             component: withdraw
    //         },
    //         {
    //             path: 'withdraw/address',
    //             component: withdrawAddr
    //         },

    //         {
    //             path: 'trade',
    //             component: trade
    //         },
    //         {
    //             path: 'paydividends',
    //             component: paydividends
    //         },
    //         {
    //             path: 'invitingmining',
    //             component: invitingmining
    //         }
    //     ]
    // },
    {
        path: '/uc',
        component: resolve => require(['../pages/uc/MemberCenter'], resolve),
        children: [{
                path: '',
                // component: safe,
                component: resolve => require(['../components/uc/Safe'], resolve),
            },
            {
                path: "apiManage",
                name: "apiManage",
                // component: apiManage,
                component: resolve => require(['../components/uc/apiManage.vue'], resolve),
            },
            {
                path: 'safe',
                // component: safe,
                component: resolve => require(['../components/uc/Safe'], resolve),
            },
            {
                path: 'feeLevel',
                // component: feeLevel,
                component: resolve => require(['../components/uc/FeeLevel.vue'], resolve),
            },
            {
                path: 'account',
                // component: account,
                component: resolve => require(['../components/uc/Account'], resolve),
            },
            {
                path: 'myextension',
                // component: myextension,
                component: resolve => require(['../components/uc/MyExtension'], resolve),
            },
            {
                path: 'money',
                // component: moneyindex,
                component: resolve => require(['../components/uc/MoneyIndex'], resolve),
            },
            {
                path: 'record',
                // component: record,
                component: resolve => require(['../components/uc/Record'], resolve),
            },
            {
                path: 'recharge',
                // component: recharge,
                component: resolve => require(['../components/uc/Recharge'], resolve),
            },
            {
                path: 'withdraw',
                // component: withdraw,
                component: resolve => require(['../components/uc/Withdraw'], resolve),
            },
            {
                path: 'withdraw/address',
                // component: withdrawAddr,
                component: resolve => require(['../components/uc/WithdrawAddress'], resolve),
            },
            {
                path: 'ad',
                // component: OtcAd,
                component: resolve => require(['../components/otc/MyAd'], resolve),
            },
            {
                path: 'ad/create',
                // component: adPublish,
                component: resolve => require(['../pages/otc/AdPublish'], resolve),
            },
            {
                path: 'ad/update',
                // component: adPublish,
                component: resolve => require(['../pages/otc/AdPublish'], resolve),
            },
            {
                path: 'order',
                // component: OtcOrder,
                component: resolve => require(['../components/uc/myorder'], resolve),
            },
            {
                path: 'entrust/current',
                // component: EntrustCurrent,
                component: resolve => require(['../components/uc/EntrustCurrent'], resolve),
            },
            {
                path: 'entrust/history',
                // component: EntrustHistory,
                component: resolve => require(['../components/uc/EntrustHistory'], resolve),
            }, {
                path: 'trade',
                // component: trade,
                component: resolve => require(['../components/uc/MinTrade'], resolve),
            },
            {
                path: 'invitingmining',
                // component: invitingmining,
                component: resolve => require(['../components/uc/InvitingMin'], resolve),
            },
            {
                path: 'paydividends',
                // component: paydividends,
                component: resolve => require(['../components/uc/PayDividends'], resolve),
            },
            {
                path: 'blc',
                // component: meblc,
                component: resolve => require(['../components/uc/Blc'], resolve),
            },
            {
                path: 'bjc',
                // component: mebjc,
                component: resolve => require(['../components/uc/Bjc'], resolve),
            }
        ]
    },
    {
        name: 'tradeInfo',
        path: '/otc/tradeInfo',
        // component: tradeInfo,
        component: resolve => require(['../pages/otc/TradeInfo'], resolve),
    },
    {
        path: '/checkuser',
        component: resolve => require(['../pages/otc/CheckUser'], resolve)
    },
    {
        path: '/chat',
        component: resolve => require(['../pages/otc/Chat'], resolve)
    },
    {
        path: '/identbusiness',
        component: resolve => require(['../pages/uc/IdentBusiness'], resolve)
    },
    {
        path: '/newhelp',
        component: resolve => require(['../pages/cms/NewHelp'], resolve),
        children: [{
                path: '',
                component: resolve => require(['../components/cms/NoticeDeails'], resolve),
            },
            {
                path: 'index',
                component: resolve => require(['../components/cms/NoticeDeails'], resolve),
            },
            {
                path: 'account',
                component: resolve => require(['../components/uc/Account'], resolve),
            },
        ]
    },
    // {
    //     path: '/question',
    //     component: question
    // },
    {
        path: '/agreement',
        component: resolve => require(['../pages/cms/Agreement'], resolve)
    },
    {
        path: '/rate',
        component: resolve => require(['../pages/cms/Rate'], resolve)
    },
    {
        path: '/about-rule',
        component: resolve => require(['../pages/cms/ExchargeRule'], resolve)
    },
    {
        path: '/about-protocol',
        component: resolve => require(['../pages/cms/UserProtocol'], resolve)
    },
    {
        path: '/about-fee',
        component: resolve => require(['../pages/cms/FeeNote'], resolve)
    },
    {
        path: '/about-notice',
        component: resolve => require(['../pages/cms/HomeNotice'], resolve)
    },
    {
        path: '/about-us',
        component: resolve => require(['../pages/cms/AboutUs'], resolve)
    },
    {
        path: '/join-us',
        component: resolve => require(['../pages/cms/JoinUs'], resolve)
    },
    {
        path: '/about-merchant',
        component: resolve => require(['../pages/cms/MerchantProtocol'], resolve)
    }
];