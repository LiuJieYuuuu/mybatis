package com.crm.service.pageservice;

import com.crm.pojo.pagepojo.EntryM;

import java.util.List;

public interface EntryService {
    List<EntryM> getEntryList();
    List<EntryM> getEntryListById(Integer id);
    int addEntry(EntryM entryM);
    EntryM getEntryById(Integer id);
    int updateEntry(EntryM entryM);
}
