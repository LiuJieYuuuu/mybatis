<%--
  Created by IntelliJ IDEA.
  User: 象拔蚌
  Date: 2018/9/12
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">公告</a></li>
        <li><a href="#">公告内容</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>公告内容</span></div>

    <ul class="forminfo">
        <li><label>标题</label><h3>${notice.ntitle}</h3></li>
        <li><label>发布人</label><h5>${notice.npublisher}</h5></li>
        <li><label>时间</label><div><fmt:formatDate value="${notice.ntime}" type="both"/></div></li>
        <li><label>内容</label><textarea name="" cols="" rows="" class="textinput">${notice.ncontent}</textarea></li>
    </ul>


</div>
</body>
</html>
