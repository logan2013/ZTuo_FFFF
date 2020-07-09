package com.ztuo.bc.wallet.component;

import com.spark.blockchain.rpcclient.Bitcoin;
import com.spark.blockchain.rpcclient.BitcoinRPCClient;
import com.ztuo.bc.wallet.entity.Deposit;
import com.ztuo.bc.wallet.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Component
public class BitcoinWatcher extends Watcher{
    @Autowired
    private BitcoinRPCClient rpcClient;
    @Autowired
    private AccountService accountService;

    @Override
    public List<Deposit> replayBlock(Long startBlockNumber, Long endBlockNumber) {
        List<Deposit> deposits = new ArrayList<Deposit>();
        try {
            for (Long blockHeight = startBlockNumber; blockHeight <= endBlockNumber; blockHeight++) {
                String blockHash = rpcClient.getBlockHash(blockHeight.intValue());
                //获取区块
                Bitcoin.Block block =  rpcClient.getBlock(blockHash);
                List<String> txids = block.tx();
                //遍历区块中的交易
                for(String txid:txids){
                    Bitcoin.RawTransaction transaction =  rpcClient.getRawTransaction(txid);
                    List<Bitcoin.RawTransaction.Out> outs = transaction.vOut();
                    if(outs != null) {
                        for (Bitcoin.RawTransaction.Out out : outs) {
                            if (out.scriptPubKey() != null) {
                                String address = out.scriptPubKey().addresses().get(0);
                                BigDecimal amount = new BigDecimal(out.value());
                                if (accountService.isAddressExist(address)) {
                                    Deposit deposit = new Deposit();
                                    deposit.setTxid(transaction.txId());
                                    deposit.setBlockHeight((long) block.height());
                                    deposit.setBlockHash(transaction.blockHash());
                                    deposit.setAmount(amount);
                                    deposit.setAddress(address);
                                    deposit.setTime(transaction.time());
                                    deposits.add(deposit);
                                }
                            }
                        }
                    }
                }
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return deposits;
    }



    @Override
    public Long getNetworkBlockHeight() {
        try {
            return Long.valueOf(rpcClient.getBlockCount());
        }
        catch (Exception e){
            e.printStackTrace();
            return 0L;
        }
    }
}
