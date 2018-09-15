package com.crm.dao.pagedao;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.InterviewM;

import java.util.List;

public interface InterviewMDao {
    List<InterviewM> getInterviewList();
    int addInterview(InterviewM interviewM);
    int updateInterview(InterviewM interviewM);
    List<InterviewM> getInterviewListByResult(String iResult);
    List<Trainee> getStudentNames();
    List<EnterpriseM> getEnterpriseNames();
    List<Crm_Class> getClassNames();
    InterviewM getInterviewById(Integer studentNo);
}
