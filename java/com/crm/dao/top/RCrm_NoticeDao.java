package com.crm.dao.top;

import com.crm.pojo.top.Crm_Notice;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface RCrm_NoticeDao {
    List<Crm_Notice> selCrm_noticeS();
}
