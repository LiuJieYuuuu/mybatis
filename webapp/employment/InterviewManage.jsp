
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
    <title>面试管理</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">就业管理</a></li>
        <li><a href="#">面试管理</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <a href="addInterview"><span><img src="../images/t01.png" /></span>添加</a>
        </ul>
        <form action="Interview" method="post">
            <select name="iResult" style="margin-left: 30px;width: 60px;height: 30px;">
                <option value="null">请选择</option>
                <option value="成功">成功</option>
                <option value="失败">失败</option>
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
            <th>面试时间</th>
            <th>面试企业</th>
            <th>面试内容</th>
            <th>面试地点</th>
            <th>面试结果</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="temp">
        <tr>
            <td>${temp.id}</td>
            <td>${temp.className}</td>
            <td>${temp.tname}</td>
            <td>${temp.iTime}</td>
            <td>${temp.name}</td>
            <td>${temp.iContent}</td>
            <td>${temp.iLoc}</td>
            <td>${temp.iResult}</td>
            <td><a href="updateInterview?id=${temp.id}" class="tablelink"> 修改</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum}&nbsp;</i>页</div>
        <ul class="paginList">
            <c:choose>
                <c:when test="${pageInfo.pageNum>1}">
                    <li class="paginItem"><a href="/employment/Interview?iResult=${iResult}&cPage=${pageInfo.prePage}"><span class="pagepre"></span></a></li>
                </c:when>
                <c:otherwise><li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li></c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${pageInfo.pageNum<pageInfo.pages}">
                    <li class="paginItem"><a href="/employment/Interview?iResult=${iResult}&cPage=${pageInfo.nextPage}"><span class="pagenxt"></span></a></li>
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

