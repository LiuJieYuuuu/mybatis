<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 韩琛
  Date: 2018/9/11
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">渠道管理</a></li>
        <li><a href="#">修改客户渠道</a></li>
    </ul>
</div>
<form action="updateWay" method="post">
    <input type="hidden" name="wayid" value="${way.wayid}"/>
    <c:choose>
        <c:when test="${way.waystatus == 1}">
        <input type="hidden" name="waystatus" value="1"/>
        </c:when>
        <c:otherwise>
        <input type="hidden" name="waystatus" value="2"/>
        </c:otherwise>
    </c:choose>
    咨询类别名称：<input type="text" name="wayname" value="${way.wayname}"/>

    <input type="submit" value="提交"/>
</body>
</html>
