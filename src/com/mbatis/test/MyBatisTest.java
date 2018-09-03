package com.mbatis.test;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mbatis.dao.EmpDao;
import com.mbatis.dao.StudentDao;
import com.mbatis.pojo.Dept;
import com.mbatis.pojo.Emp;
import com.mbatis.pojo.Student;
import com.mbatis.util.SqlSessionFactoryUtil;
import com.mbatis.vo.empInfoView;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class MyBatisTest {

    static  void exp1(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        List<Emp> list=session.selectList("selectEmp");
        session.close();
    }

    static  void exp2(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        List<Emp> list=session.selectList("selectDept");
        System.out.println(list);
        session.close();

    }

    static  void exp3(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        Dept dept=new Dept("中农工","meiguo");
        System.out.println(session.insert("addDept",dept));
        session.commit();
    }

    static  void exp4(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        Dept dept=session.selectOne("getDeptno",10);
        System.out.println(dept);
        //session.clearCache();
        session.close();
        SqlSession session1= SqlSessionFactoryUtil.getSession();
        Dept dept1=session1.selectOne("getDeptno",10);
        System.out.println(dept1);
    }

    static  void exp6(){

        SqlSession session= SqlSessionFactoryUtil.getSession();
        List<empInfoView> list=session.selectList("selectEmpDept");
        for(empInfoView e:list){
            System.out.println(e);
        }
    }

    static void exp7(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        StudentDao dao=session.getMapper(StudentDao.class);
        System.out.println(dao.getAllStudent());
    }

    static void exp8(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        EmpDao ed=session.getMapper(EmpDao.class);
        System.out.println(ed.getEmp("%AR%","SALESMAN",1000.0));
    }

    static void exp9(){
        SqlSession session= SqlSessionFactoryUtil.getSession();
        EmpDao ed=session.getMapper(EmpDao.class);
        PageHelper.startPage(1,4);
        List<Emp> list=ed.getEmp(null,null,null);
        PageInfo<Emp> pageInfo=new PageInfo<Emp>(list);
        System.out.println(pageInfo.getList());
    }
    public static void main(String[] args) {
        exp9();
    }
}
