package com.crm.service.notice;

import com.crm.pojo.notice.Crm_Notice;

import java.util.List;


public interface Crm_NoticeService {

    List<Crm_Notice> getNoticeList(Crm_Notice crm_notice);
    int delNotice(Integer nid);
    int addNotice(Crm_Notice crm_notice);
    int updateNotice(Crm_Notice crm_notice);
    Crm_Notice getNoticeById(Integer nid);
}
