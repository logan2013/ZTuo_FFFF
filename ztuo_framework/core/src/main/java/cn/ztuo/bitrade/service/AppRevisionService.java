package cn.ztuo.bitrade.service;

import cn.ztuo.bitrade.constant.Platform;
import cn.ztuo.bitrade.dao.AppRevisionDao;
import cn.ztuo.bitrade.entity.AppRevision;
import cn.ztuo.bitrade.service.Base.TopBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author MrGao
 * @Title: ${file_name}
 * @Description:
 * @date 2018/4/2416:19
 */
@Service
public class AppRevisionService extends TopBaseService<AppRevision, AppRevisionDao> {

    @Autowired
    public void setDao(AppRevisionDao dao) {
        super.setDao(dao);
    }

    public AppRevision findRecentVersion(Platform p){
        return dao.findAppRevisionByPlatformOrderByIdDesc(p);
    }
}
