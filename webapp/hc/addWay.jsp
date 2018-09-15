<%--
  Created by IntelliJ IDEA.
  User: 韩琛
  Date: 2018/9/10
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加渠道</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">渠道管理</a></li>
        <li><a href="#">增加渠道</a></li>
    </ul>
</div>
<div class="formtitle"><span>添加渠道信息</span></div>
<form action="addWay" method="post">
    <ul class="forminfo">
        <li>增加渠道：<input class="dfinput" name="wayname" type="text" value=""/></li>
    <input class="btn" type="submit" value="提交"/>
    </ul>
</form>
</body>
</html>
