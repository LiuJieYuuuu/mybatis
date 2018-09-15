package com.crm.impl.top;

import com.crm.dao.top.RCrm_NoticeDao;
import com.crm.pojo.top.Crm_Notice;
import com.crm.service.top.RCrm_NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RCrm_NoticeServiceImpl implements RCrm_NoticeService {
    @Autowired
    private RCrm_NoticeDao rCrm_noticeDao;
    @Override
    public List<Crm_Notice> selCrm_noticeS() {
        return rCrm_noticeDao.selCrm_noticeS();
    }
}
