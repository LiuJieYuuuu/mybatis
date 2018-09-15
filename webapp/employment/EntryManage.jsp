
<%--
  Created by IntelliJ IDEA.
  User: 象拔蚌
  Date: 2018/9/8
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>入职管理</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">就业管理</a></li>
        <li><a href="#">入职管理</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <a href="addEntry"><span><img src="../images/t01.png" /></span>添加</a>
        </ul>
        <form action="EntryManage" method="post">
            <select name="eeNo" style="margin-left: 30px;width: 80px;height: 30px;">
                <option value="0">请选择</option>
                <c:forEach items="${enterpriseList}" var="temp">
                    <option value="${temp.id}">${temp.name}</option>
                </c:forEach>
            </select>
            <input type="submit" class="btn" value="查询" style="width: 50px;height: 30px;border-radius: 5px;">
        </form>
    </div>


    <table class="tablelist">
        <thead>
        <tr>
            <th>编号<i class="sort"><img src="../images/px.gif" /></i></th>
            <th>学员班级</th>
            <th>学员姓名</th>
            <th>入职企业</th>
            <th>入职时间</th>
            <th>薪资待遇</th>
            <th>学员反馈</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${entryList.list}" var="temp">
        <tr>
            <td>${temp.id}</td>
            <td>${temp.className}</td>
            <td>${temp.tname}</td>
            <td>${temp.name}</td>
            <td>${temp.eTime}</td>
            <td>${temp.sal}</td>
            <td>${temp.back}</td>
            <td><a href="updateEntry?id=${temp.id}" class="tablelink">跟进</a></td>
        </tr>
        </c:forEach>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">${entryList.total}</i>条记录，当前显示第&nbsp;<i class="blue">${entryList.pageNum}&nbsp;</i>页</div>
        <ul class="paginList">
            <c:choose>
                <c:when test="${entryList.pageNum>1}">
                    <li class="paginItem"><a href="/employment/EntryManage?eeNo=${eeNo}&cPage=${entryList.prePage}"><span class="pagepre"></span></a></li>
                </c:when>
                <c:otherwise><li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li></c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${entryList.pageNum<entryList.pages}">
                    <li class="paginItem"><a href="/employment/EntryManage?eeNo=${eeNo}&cPage=${entryList.nextPage}"><span class="pagenxt"></span></a></li>
                </c:when>
                <c:otherwise><li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li></span></a></li></c:otherwise>
            </c:choose>
        </ul>
    </div>


</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>

