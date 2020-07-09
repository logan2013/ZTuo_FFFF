/**
 * Copyright (c) 2016-2017  All Rights Reserved.
 * 
 * <p>FileName: HawkSubjectContext.java</p>
 * 
 * Description: 
 * @author MrGao
 * @date 2017年7月25日
 * @version 1.0
 * History:
 * v1.0.0, , 2017年7月25日, Create
 */
package cn.ztuo.aqmd.netty.shiro.subject;

import cn.ztuo.aqmd.core.entity.RequestPacket;
import cn.ztuo.aqmd.core.entity.ResponsePacket;
import cn.ztuo.aqmd.netty.shiro.util.RequestPairSource;
import org.apache.shiro.subject.SubjectContext;

/**
 * <p>Title: HawkSubjectContext</p>
 * <p>Description: </p>
 * @author MrGao
 * @date 2017年7月25日
 */
public interface HawkSubjectContext extends SubjectContext,RequestPairSource {

	 RequestPacket getHawkRequest();

	 void setHawkRequest(RequestPacket request);

	 RequestPacket resolveHawkRequest();

	 ResponsePacket getHawkResponse();

	 void setHawkResponse(ResponsePacket response);

	 ResponsePacket resolveHawkResponse();
}
