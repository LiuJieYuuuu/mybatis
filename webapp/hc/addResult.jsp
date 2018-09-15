<%--
  Created by IntelliJ IDEA.
  User: 韩琛
  Date: 2018/9/10
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加类别咨询</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">类别咨询</a></li>
        <li><a href="#">增加类别咨询</a></li>
    </ul>
</div>
<div class="formtitle"><span>基本信息</span></div>
<form action="addResult" method="post">
    <ul class="forminfo">
        <li>咨询类别：<input class="dfinput" type="text" name="resulttype" value=""/></li>
    <input class="btn" type="submit" value="提交"/>
    </ul>
</form>
</body>
</html>
