package com.crm.impl.notice;

import com.crm.dao.notice.Crm_NoticeDao;
import com.crm.pojo.notice.Crm_Notice;
import com.crm.service.notice.Crm_NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Crm_NoticeServiceImpl implements Crm_NoticeService {
    @Autowired
    private Crm_NoticeDao crm_NoticeDao;

    @Override
    public List<Crm_Notice> getNoticeList(Crm_Notice crm_notice) {
        return crm_NoticeDao.getNoticeList(crm_notice);
    }

    @Override
    public int delNotice(Integer nid) {
        return crm_NoticeDao.delNotice(nid);
    }

    @Override
    public int addNotice(Crm_Notice crm_notice) {
        return crm_NoticeDao.addNotice(crm_notice);
    }

    @Override
    public int updateNotice(Crm_Notice crm_notice) {
        return crm_NoticeDao.updateNotice(crm_notice);
    }

    @Override
    public Crm_Notice getNoticeById(Integer nid) {
        return crm_NoticeDao.getNoticeById(nid);
    }
}
