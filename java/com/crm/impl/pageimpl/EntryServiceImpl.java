package com.crm.impl.pageimpl;

import com.crm.dao.pagedao.EntryMDao;
import com.crm.pojo.pagepojo.EntryM;
import com.crm.service.pageservice.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EntryServiceImpl implements EntryService {
    @Autowired
    private EntryMDao entryMDao;
    @Override
    public List<EntryM> getEntryList() {
        return entryMDao.getEntryList();
    }

    @Override
    public List<EntryM> getEntryListById(Integer id) {
        return entryMDao.getEntryListById(id);
    }

    @Override
    public int addEntry(EntryM entryM) {
        return entryMDao.addEntry(entryM);
    }

    @Override
    public EntryM getEntryById(Integer id) {
        return entryMDao.getEntryById(id);
    }

    @Override
    public int updateEntry(EntryM entryM) {
        return entryMDao.updateEntry(entryM);
    }
}
