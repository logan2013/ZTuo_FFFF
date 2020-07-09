package cn.ztuo.bitrade.controller.system;

import cn.ztuo.bitrade.controller.common.BaseAdminController;
import cn.ztuo.bitrade.model.update.CoinUpdate;
import cn.ztuo.bitrade.util.*;
import com.querydsl.core.types.dsl.BooleanExpression;
import cn.ztuo.bitrade.annotation.AccessLog;
import cn.ztuo.bitrade.constant.*;
import cn.ztuo.bitrade.controller.common.BaseAdminController;
import cn.ztuo.bitrade.dto.CoinDTO;
import cn.ztuo.bitrade.entity.*;
import cn.ztuo.bitrade.model.update.CoinUpdate;
import cn.ztuo.bitrade.service.*;
import cn.ztuo.bitrade.controller.common.BaseAdminController;
import cn.ztuo.bitrade.model.update.CoinUpdate;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static org.springframework.util.Assert.notNull;

/**
 * @author MrGao
 * @description 后台货币web
 * @date 2017/12/29 15:01
 */
@RestController
@RequestMapping("/system/coin")
@Slf4j
public class CoinController extends BaseAdminController {
    private Logger logger = LoggerFactory.getLogger(BaseAdminController.class);

    @Autowired
    private HotTransferRecordService hotTransferRecordService;

    @Autowired
    private CoinService coinService;

    @Autowired
    private MemberWalletService memberWalletService;

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private RedisUtil redisUtil;
    @Autowired
    private MemberWalletService walletService;
    @Autowired
    private MemberService memberService;
    private ExecutorService executor = Executors.newFixedThreadPool(30);

    @Autowired
    private LocaleMessageSourceService messageSource;
    @Value("${system.code.type:0}")
    private int codeType;

    @PostMapping("all")
    @AccessLog(module = AdminModule.SYSTEM, operation = "查询所有Coin")
    public MessageResult findAll() {
        List<Coin> coinList = coinService.findAllByStatus(CommonStatus.NORMAL);
        MessageResult result = MessageResult.success();
        result.setData(coinList);
        return result;
    }

    @RequiresPermissions("system:coin:create")
    @PostMapping("create")
    @AccessLog(module = AdminModule.SYSTEM, operation = "创建后台货币Coin")
    public MessageResult create(@Valid Coin coin, Double txFee, BindingResult bindingResult) {
        MessageResult result = BindingResultUtil.validate(bindingResult);
        if (result != null)
            return result;
        Coin one = coinService.findOne(coin.getName());
        if (one != null)
            return error(messageSource.getMessage("COIN_NAME_EXIST"));
        Coin oldCoin = coinService.findByUnit(coin.getUnit());
        if (oldCoin != null) {
            return error(messageSource.getMessage("COIN_UNIT_EXIST"));
        }
        if (txFee != null) {
            coin.setMaxTxFee(txFee);
            coin.setMinTxFee(txFee);
        }
        coinService.save(coin);
        return success();
    }

    @PostMapping("all-name")
    @AccessLog(module = AdminModule.SYSTEM, operation = "查找所有coin的name")
    public MessageResult getAllCoinName() {
        List<String> list = coinService.getAllCoinName();
        return MessageResult.getSuccessInstance(messageSource.getMessage("SUCCESS"), list);
    }

    @PostMapping("all-name-and-unit")
    @AccessLog(module = AdminModule.SYSTEM, operation = "查找所有coin的name和unit")
    public MessageResult getAllCoinNameAndUnit() {
        List<CoinDTO> list = coinService.getAllCoinNameAndUnit();
        return MessageResult.getSuccessInstance(messageSource.getMessage("SUCCESS"), list);
    }

    @PostMapping("all-name/legal")
    @AccessLog(module = AdminModule.SYSTEM, operation = "查找所有coin的name")
    public MessageResult getAllCoinNameLegal() {
        List<String> list = coinService.getAllCoinNameLegal();
        return success(list);
    }

    @RequiresPermissions("system:coin:update")
    @PostMapping("update")
    @AccessLog(module = AdminModule.SYSTEM, operation = "更新后台货币Coin")
    public MessageResult update(
            @Valid CoinUpdate coin,
            @SessionAttribute(SysConstant.SESSION_ADMIN) Admin admin,
            String code,
            BindingResult bindingResult) {
        MessageResult checkCode = checkCode(code, SysConstant.ADMIN_COIN_REVISE_PHONE_PREFIX + admin.getMobilePhone());
        if (checkCode.getCode() != 0)
            return checkCode;
        Coin coin2 = coinService.findOne(coin.getName());
        notNull(coin2, "validate coin.name!");
        if (coin.getTxFee() != null) {
            coin.setMaxTxFee(coin.getTxFee());
            coin.setMinTxFee(coin.getTxFee());
        }
        BeanUtils.copyProperties(coin, coin2);
        Assert.notNull(admin, messageSource.getMessage("DATA_EXPIRED_LOGIN_AGAIN"));
        notNull(coin.getName(), "validate coin.name!");
        MessageResult result = BindingResultUtil.validate(bindingResult);
        if (result != null)
            return result;
        coinService.save(coin2);
        return success();
    }

    @RequiresPermissions("system:coin:detail")
    @PostMapping("detail")
    @AccessLog(module = AdminModule.SYSTEM, operation = "后台货币Coin详情")
    public MessageResult detail(@RequestParam("name") String name) {
        Coin coin = coinService.findOne(name);
        notNull(coin, "validate coin.name!");
        return success(coin);
    }

    @RequiresPermissions("system:coin:page-query")
    @PostMapping("page-query")
    @AccessLog(module = AdminModule.SYSTEM, operation = "分页查找后台货币Coin")
    public MessageResult pageQuery(PageModel pageModel) {
        if (pageModel.getProperty() == null) {
            List<String> list = new ArrayList<>();
            list.add("name");
            List<Sort.Direction> directions = new ArrayList<>();
            directions.add(Sort.Direction.DESC);
            pageModel.setProperty(list);
            pageModel.setDirection(directions);
        }
        Page<Coin> pageResult = coinService.findAll(null, pageModel.getPageable());
        for (Coin coin : pageResult.getContent()) {
            coin.setAllBalance(memberWalletService.getAllBalance(coin.getName()));
            if (coin.getEnableRpc() == BooleanEnum.IS_TRUE) {
                coin.setHotAllBalance(getRPCWalletBalance(coin.getUnit()));
            } else {
                coin.setHotAllBalance(BigDecimal.ZERO);
            }
        }
        return success(pageResult);
    }

    private BigDecimal getRPCWalletBalance(String unit) {
        try {
            String url = "http://SERVICE-RPC-" + unit + "/rpc/balance";
            log.info("rpcUrl:" + url);
            ResponseEntity<MessageResult> result = restTemplate.getForEntity(url, MessageResult.class);
            log.info("result={}", result);
            if (result.getStatusCode().value() == 200) {
                MessageResult mr = result.getBody();
                if (mr.getCode() == 0) {
                    String balance = mr.getData().toString();
                    BigDecimal bigDecimal = new BigDecimal(balance);
                    log.info(unit + messageSource.getMessage("HOT_WALLET_BALANCE"), bigDecimal);
                    return bigDecimal;
                }
            }
        } catch (IllegalStateException e) {
            log.error("error={}", e);
            return new BigDecimal("0");
        } catch (Exception e) {
            log.error("error={}", e);
            return new BigDecimal("0");
        }
        return new BigDecimal("0");
    }

    @RequiresPermissions("system:coin:update")
    @GetMapping("outExcel")
    @AccessLog(module = AdminModule.SYSTEM, operation = "导出后台货币Coin Excel")
    public MessageResult outExcel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List all = coinService.findAll();
        return new FileUtil().exportExcel(request, response, all, "coin");
    }

    @RequiresPermissions("system:coin:update")
    @PostMapping("delete/{name}")
    @AccessLog(module = AdminModule.SYSTEM, operation = "删除后台货币Coin")
    public MessageResult Delete(@PathVariable("name") String name) {
        Coin coin = coinService.findOne(name);
        notNull(coin, "validate coin.name!");
        coinService.deleteOne(name);
        return success();
    }

    @RequiresPermissions("system:coin:update")
    @PostMapping("set/platform")
    @AccessLog(module = AdminModule.SYSTEM, operation = "设置平台币")
    public MessageResult setPlatformCoin(@RequestParam("name") String name) {
        Coin coin = coinService.findOne(name);
        notNull(coin, "validate coin.name!");
        coinService.setPlatformCoin(coin);
        return success();
    }


    /**
     * 转入冷钱包,扣除矿工费Coin.minerFee
     *
     * @param admin  手工操作者
     * @param amount 转账数量
     * @param unit   转账币种单位
     * @param code   验证码
     * @return
     */
    @RequiresPermissions("system:coin:transfer")
    @PostMapping("transfer")
    @org.springframework.transaction.annotation.Transactional(rollbackFor = Exception.class)
    @AccessLog(module = AdminModule.SYSTEM, operation = "热钱包转账至冷钱包")
    public MessageResult transfer(@SessionAttribute(SysConstant.SESSION_ADMIN) Admin admin,
                                  @RequestParam("amount") BigDecimal amount,
                                  @RequestParam("unit") String unit,
                                  @RequestParam(value = "code", defaultValue = "") String code) {
        Assert.notNull(admin, "会话已过期，请重新登录");
        if (codeType == 1) {
            if (admin.getGoogleState() == null || admin.getGoogleState() == 0) {
                return MessageResult.error(messageSource.getMessage("BIND_GOOGLE_FIRST"));
            }
            boolean r = GoogleAuthenticatorUtil.checkCodes(code, admin.getGoogleKey());
            if (!r) {
                return MessageResult.error(messageSource.getMessage("GOOGLE_AUTH_FAILD"));
            }
        } else if (codeType == 0) {
            String key = SysConstant.ADMIN_COIN_TRANSFER_COLD_PREFIX + admin.getMobilePhone();
            Object object = redisUtil.get(key + "_PASS");

            if (object == null) {
                MessageResult checkCode = checkCode(code, key);
                if (checkCode.getCode() != 0)
                    return checkCode;
            }
        }
        Coin coin = coinService.findByUnit(unit);
        BigDecimal balance = getRPCWalletBalance(coin.getUnit());
        logger.info("closeBalance:-------{}", balance);
        if (amount.compareTo(balance) > 0)
            return error(messageSource.getMessage("HOT_WALLET_BALANCE_POOL"));
        String url = "http://SERVICE-RPC-" + coin.getUnit() + "/rpc/transfer?address={1}&amount={2}&fee={3}";
        MessageResult result = restTemplate.getForObject(url,
                MessageResult.class, coin.getColdWalletAddress().toString(), amount, coin.getMinerFee());
        logger.info("result = {}", result);
        if (result.getCode() == 0 && result.getData() != null) {
            HotTransferRecord hotTransferRecord = new HotTransferRecord();
            hotTransferRecord.setAdminId(admin.getId());
            hotTransferRecord.setAdminName(admin.getUsername());
            hotTransferRecord.setAmount(amount);
            hotTransferRecord.setBalance(balance.subtract(amount));
            hotTransferRecord.setMinerFee(coin.getMinerFee() == null ? BigDecimal.ZERO : coin.getMinerFee());
            hotTransferRecord.setUnit(unit.toUpperCase());
            hotTransferRecord.setColdAddress(coin.getColdWalletAddress());
            hotTransferRecord.setTransactionNumber(result.getData().toString());
            hotTransferRecordService.save(hotTransferRecord);
            return success(messageSource.getMessage("SUCCESS"), hotTransferRecord);
        }
        return error(messageSource.getMessage("REQUEST_FAILED"));
    }

    @RequiresPermissions("system:coin:hot-transfer-record:page-query")
    @PostMapping("/hot-transfer-record/page-query")
    @AccessLog(module = AdminModule.SYSTEM, operation = "热钱包转账至冷钱包记录分页查询")
    public MessageResult page(PageModel pageModel, String unit) {
        List<BooleanExpression> booleanExpressions = new ArrayList<>();
        if (!StringUtils.isEmpty(unit))
            booleanExpressions.add(QHotTransferRecord.hotTransferRecord.unit.eq(unit));
        Page<HotTransferRecord> page = hotTransferRecordService.findAll(PredicateUtils.getPredicate
                (booleanExpressions), pageModel);
        return success(messageSource.getMessage("SUCCESS"), page);
    }


    /**
     * 添加新币种
     *
     * @param coinName
     * @return
     */
    @RequestMapping("create-member-wallet")
    public MessageResult createCoin(String coinName) {
        Coin coin = coinService.findOne(coinName);
        if (coin == null) {
            return MessageResult.error("币种配置不存在");
        }
        long count = memberService.count();
        int pageSize = 5000;
        logger.info("=====生成会员钱包，总会员数{}，线程数{}", count, count / pageSize + 1);
        for (int page = 0; page * pageSize < count; page++) {
            Page<Member> memberPage = memberService.page(page, pageSize);
            executor.execute(new MemberWalletCreateThread(memberPage.getContent(), coin));
        }
        return MessageResult.success(messageSource.getMessage("SUCCESS"));
    }

    @RequestMapping("need-create-wallet")
    public MessageResult needCreateWallet(String coinName) {
        Coin coin = coinService.findOne(coinName);
        if (coin == null) {
            return MessageResult.error("币种配置不存在");
        }
        MessageResult result = success("", false);
        List<Member> list = memberService.findAll();
        for (Member member : list) {
            MemberWallet wallet = memberWalletService.findByCoinAndMember(coin, member);
            if (wallet == null) {
                result = success(messageSource.getMessage("SUCCESS"), true);
                return result;
            }
        }
        return result;
    }

    @GetMapping("get-no-check-key")
    public MessageResult getKey(String phone) {
        String key = SysConstant.ADMIN_COIN_TRANSFER_COLD_PREFIX + phone + "_PASS";
        Object object = redisUtil.get(key);
        if (object == null) {
            return error(messageSource.getMessage("NEED_CODE"));
        }
        return success(messageSource.getMessage("NO_NEED_CODE"), object);
    }


    public class MemberWalletCreateThread implements Runnable {
        private Coin coin;
        private List<Member> members;

        public MemberWalletCreateThread(List<Member> memberList, Coin coin) {
            this.coin = coin;
            this.members = memberList;
        }

        @Override
        public void run() {
            members.forEach(member -> {
                MemberWallet wallet = memberWalletService.findByCoinAndMember(coin, member);
                if (wallet == null) {
                    wallet = new MemberWallet();
                    wallet.setCoin(coin);
                    wallet.setMemberId(member.getId());
                    wallet.setBalance(new BigDecimal(0));
                    wallet.setFrozenBalance(new BigDecimal(0));
//                    String account = member.getId().toString();
//                    if (coin.getEnableRpc() == BooleanEnum.IS_TRUE) {
//                        if(org.apache.commons.lang.StringUtils.isNotEmpty(coin.getMasterAddress())){
//                            //当使用一个主账户时不取rpc
//                            wallet.setAddress(coin.getMasterAddress()+":"+account);
//                        }
//                        else {
//                            //远程RPC服务URL,后缀为币种单位
//                            String serviceName = "SERVICE-RPC-" + coin.getUnit();
//                            try {
//                                String url = "http://" + serviceName + "/rpc/address/{account}";
//                                ResponseEntity<MessageResult> result = restTemplate.getForEntity(url, MessageResult
// .class, account);
//                                logger.info("remote call:service={},result={}", serviceName, result);
//                                if (result.getStatusCode().value() == 200) {
//                                    MessageResult mr = result.getBody();
//                                    if (mr.getCode() == 0) {
//                                        //返回地址成功，调用持久化
//                                        String address = (String) mr.getData();
//                                        wallet.setAddress(address);
//                                    }
//                                }
//                            } catch (Exception e) {
//                                logger.error("call {} failed,error={}", serviceName, e.getMessage());
//                                wallet.setAddress("");
//                            }
//                        }
//                    } else {
//                        wallet.setAddress("");
//                    }
                    //方案二：用户注册时不生成地址，充币时获取
                    wallet.setAddress("");
                    walletService.save(wallet);
                }
            });
        }
    }
}
