<%--
  Created by IntelliJ IDEA.
  User: 象拔蚌
  Date: 2018/9/8
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改面试信息</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("input[name='sb']").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                form1.submit();
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });
            $("input[name='cancel']").click(function () {
                window.location.href="Interview";
            })

        });
    </script>
</head>

<body>

<%--<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">表单</a></li>
    </ul>
</div>--%>

<div class="formbody" >
    <div class="formtitle"><span>添加面试信息</span></div>
    <form action="doUpdateInterview" name="form1" method="post">
        <ul class="forminfo">
            <li><label>学员班级</label>
                <select name="classNo" id="classno" style="line-height: 40px;margin-top: 10px;width: 80px;border: 1px solid #CCCCCC">
                    <c:forEach items="${classList}" var="temp">
                        <c:choose>
                            <c:when test="${temp.classNo==interview.classNo}">
                                <option value="${temp.classNo}" selected="selected">${temp.className}</option>
                            </c:when>
                            <c:otherwise><option value="${temp.classNo}">${temp.className}</option></c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </li>
            <li><label>学员姓名</label>
                <select name="studentNo" id="studentno" style="line-height: 40px;margin-top: 10px;width: 80px;border: 1px solid #CCCCCC">
                    <c:forEach items="${studentList}" var="temp">
                        <c:choose>
                            <c:when test="${temp.traid==interview.studentNo}">
                                <option value="${temp.traid}" selected="selected">${temp.tname}</option>
                            </c:when>
                            <c:otherwise><option value="${temp.traid}">${temp.tname}</option></c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </li>
            <li><label>面试时间</label><input name="iTime" type="Date" class="dfinput" value="${interview.iTime}" /></li>
            <li><label>面试企业</label>
                <select name="ieNo" id="enterpriseno" style="line-height: 40px;margin-top: 10px;width: 80px;border: 1px solid #CCCCCC">
                    <c:forEach items="${enterpriseList}" var="temp">
                        <c:choose>
                            <c:when test="${temp.id==interview.ieNo}">
                                <option value="${temp.id}" selected="selected">${temp.name}</option>
                            </c:when>
                            <c:otherwise><option value="${temp.id}">${temp.name}</option></c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </li>
            <li><label>面试内容</label><input name="iContent" type="text" class="dfinput" value="${interview.iContent}"></li>
            <li><label>面试地点</label><input name="iLoc" type="text" class="dfinput" value="${interview.iLoc}"/></li>
            <li><label>面试结果</label>
                <select name="iResult" id="result" style="line-height: 40px;margin-top: 10px;width: 80px;border: 1px solid #CCCCCC">
                    <option value="成功">成功</option>
                    <option value="失败">失败</option>
                </select>
            </li>
            <li>
                <input name="sb" type="button" class="btn" value="确认保存" style="width: 100px; border-radius: 5px;margin-left: 80px;"/>
                <input name="cancel" type="button" class="btn" value="取消" style="width: 100px;border-radius: 5px; margin-left: 50px"/>
            </li>
        </ul>
        <input name="id" type="hidden" value="${interview.id}">
    </form>
</div>
<div class="tip">
    <div class="tiptop"><span>提示信息</span><a></a></div>

    <div class="tipinfo">
        <span><img src="../images/ticon.png" /></span>
        <div class="tipright">
            <p>是否确认添加信息 ？</p>
            <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
    </div>

    <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
    </div>

</div>
</body>
</html>

