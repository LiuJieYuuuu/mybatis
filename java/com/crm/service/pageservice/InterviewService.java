package com.crm.service.pageservice;

import com.crm.pojo.TraPojo.Trainee;
import com.crm.pojo.myclass.Crm_Class;
import com.crm.pojo.pagepojo.EnterpriseM;
import com.crm.pojo.pagepojo.InterviewM;

import java.util.List;

public interface InterviewService {
    List<InterviewM> getInterviewList();
    List<InterviewM> getInterviewListByResult(String iResult);
    List<EnterpriseM> getEnterpriseNames();
    List<Crm_Class> getClassNames();
    List<Trainee> getStudentNames();
    int addInterview(InterviewM interviewM);
    InterviewM getInterviewById(Integer id);
    int updateInterview(InterviewM interviewM);
}
