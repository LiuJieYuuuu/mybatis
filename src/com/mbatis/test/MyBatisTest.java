package com.mbatis.test;

import com.mbatis.pojo.Emp;
import com.mbatis.util.SqlSessionFactoryUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class MyBatisTest {

    static  void exp1(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        List<Emp> list=session.selectList("selectEmp");
        session.close();
    }


    public static void main(String[] args) {
        exp1();
    }
}
