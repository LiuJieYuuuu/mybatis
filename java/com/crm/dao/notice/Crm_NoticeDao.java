package com.crm.dao.notice;

import com.crm.pojo.notice.Crm_Notice;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public interface Crm_NoticeDao {
    List<Crm_Notice> getNoticeList(Crm_Notice crm_notice);
    int delNotice(Integer nid);
    int addNotice(Crm_Notice crm_notice);
    int updateNotice(Crm_Notice crm_notice);
    Crm_Notice getNoticeById(Integer nid);
}
