package com.crm.impl.pageimpl;

import com.crm.dao.pagedao.InterviewMDao;
import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.InterviewM;
import com.crm.service.pageservice.InterviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InterviewServiceImpl implements InterviewService {
    @Autowired
    private InterviewMDao interviewMDao;

    @Override
    public List<InterviewM> getInterviewList() {
        return interviewMDao.getInterviewList();
    }

    @Override
    public List<InterviewM> getInterviewListByResult(String iResult) {
        return interviewMDao.getInterviewListByResult(iResult);
    }

    @Override
    public List<EnterpriseM> getEnterpriseNames() {
        return interviewMDao.getEnterpriseNames();
    }

    @Override
    public List<Crm_Class> getClassNames() {
        return interviewMDao.getClassNames();
    }

    @Override
    public List<Trainee> getStudentNames() {
        return interviewMDao.getStudentNames();
    }

    @Override
    public int addInterview(InterviewM interviewM) {
        return interviewMDao.addInterview(interviewM);
    }

    @Override
    public InterviewM getInterviewById(Integer id) {
        return interviewMDao.getInterviewById(id);
    }

    @Override
    public int updateInterview(InterviewM interviewM) {
        return interviewMDao.updateInterview(interviewM);
    }
}
