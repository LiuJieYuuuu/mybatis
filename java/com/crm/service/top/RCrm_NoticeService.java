package com.crm.service.top;

import com.crm.pojo.top.Crm_Notice;
import org.springframework.stereotype.Repository;

import java.util.List;
public interface RCrm_NoticeService {
    List<Crm_Notice> selCrm_noticeS();
}
