<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 韩琛
  Date: 2018/9/10
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>增加客户信息</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">客户管理</a></li>
        <li><a href="#">增加客户信息</a></li>
    </ul>
</div>
<div class="formtitle"><span>添加客户信息</span></div>
<form action="addClientSuccess" method="post">
    <ul class="forminfo">
    <li>姓名：<input type="text" name="cliname" class="dfinput"  value=""/></li>
    <li>手机号码：<input type="text" name="clitel" class="dfinput"  value=""/></li>
    <li>性别：<select name="clisex">
                <option value="0">男</option>
                <option value="1">女</option>
            </select><br/>
    </li>
    <li>QQ:<input name="cliqq" class="dfinput"  value=""/></li>
    <li>咨询类别：<select name="cliresulttype">
                <c:forEach items="${resultList}" var="temp">
                    <option value="${temp.resulttype}">${temp.resulttype}</option>
                </c:forEach>
                </select></li>
    <li>渠道：<select name="cliway">
                <c:forEach items="${wayList}" var="temp">
                    <option value="${temp.wayname}">${temp.wayname}</option>
                </c:forEach>
            </select></li>
    <li>毕业院校：<input class="dfinput"  name="clischool" value=""/></li>
    <li>所在城市：<input class="dfinput"  name="clicity" value=""/></li>
    <li>所属分公司：<select name="center">
                    <option value="上海分公司">上海分公司</option>
                    <option value="北京分公司">北京分公司</option>
                </select></li>
    <li>咨询师：<select name="cliresultor">
                <option value="七大姑">七大姑</option>
                <option value="八大姨">八大姨</option>
            </select></li>
    <li>创建人：<input class="dfinput"  name="clicreater" value=""/></li>
    <li>客户意向：<select name="cliattitude">
                <option value="1">积极</option>
                <option value="2">犹豫</option>
                </select></li>
    <li>咨询内容：<textarea class="dfinput"  name="cliconsultcontent" style="width:200px;height:200px;">

                </textarea></li>
    <li><input name="success" class="btn" type="submit" value="提交"/></li>
    </ul>
</form>
</body>
</html>
