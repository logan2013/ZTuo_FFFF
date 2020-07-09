/**
 * Copyright (c) 2016-2017  All Rights Reserved.
 * <p>
 * <p>FileName: HawkPushServiceApi.java</p>
 * <p>
 * Description:
 *
 * @author MrGao
 * @date 2017年8月8日
 * @version 1.0
 * History:
 * v1.0.0, , 2017年8月8日, Create
 */
package cn.ztuo.aqmd.netty.push;

import com.google.protobuf.MessageLite;
import io.netty.channel.Channel;
import io.netty.channel.ChannelPromise;

import java.util.Map;
import java.util.Set;

/**
 * <p>Title: HawkPushServiceApi</p>
 * <p>Description: </p>
 * 消息推送接口
 * @author MrGao
 * @date 2017年8月8日
 */
public interface HawkPushServiceApi {
    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送文本消息到客户端
     */
    void pushMsg(Set<Channel> channels, short cmd, String msg);

    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送字节消息到客户端
     */
    void pushMsg(Set<Channel> channels, short cmd, byte[] msg);

    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送protobuffer消息到客户端
     */
    void pushMsg(Set<Channel> channels, short cmd, MessageLite msg);

    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送文本消息到客户端
     */
    Map<String,ChannelPromise> syncPushMsg(Set<Channel> channels, short cmd, String msg);

    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送字节消息到客户端
     */
    Map<String,ChannelPromise> syncPushMsg(Set<Channel> channels, short cmd, byte[] msg);

    /**
     *
     * <p>Title: pushMsg</p>
     * <p>Description: </p>
     * 推送protobuffer消息到客户端
     */
    Map<String,ChannelPromise> syncPushMsg(Set<Channel> channels, short cmd, MessageLite msg);
}
