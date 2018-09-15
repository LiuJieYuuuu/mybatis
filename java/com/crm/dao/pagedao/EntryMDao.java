package com.crm.dao.pagedao;

import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.EntryM;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EntryMDao {
    List<EntryM> getEntryList();
    List<EntryM> getEntryListById(Integer id);
    int addEntry(EntryM entryM);
    EntryM getEntryById(Integer id);
    int updateEntry(EntryM entryM);
}
