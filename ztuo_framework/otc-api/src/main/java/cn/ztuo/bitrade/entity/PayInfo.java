package cn.ztuo.bitrade.entity;

import lombok.Builder;
import lombok.Data;

/**
 * @author GuoShuai
 * @date 2018年01月20日
 */
@Builder
@Data
public class PayInfo {
    private String realName;
    private Alipay alipay;
    private WechatPay wechatPay;
    private BankInfo bankInfo;
}
