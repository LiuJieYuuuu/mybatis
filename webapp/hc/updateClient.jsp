<%--
  Created by IntelliJ IDEA.
  User: 韩琛
  Date: 2018/9/11
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">客户管理</a></li>
        <li><a href="#">修改客户信息</a></li>
    </ul>
</div>
<div class="formtitle"><span>修改客户信息</span></div>
<form action="updateClient" method="post">
    <ul class="forminfo">
    <li><input type="hidden" name="clisex" class="dfinput" value="${client.clisex}"/></li>
    <li><input type="hidden" name="cliqq" class="dfinput" value="${client.cliqq}"/></li>
    <li><input type="hidden" name="cliid" class="dfinput" value="${client.cliid}"/></li>
    <li>姓名：<input name="cliname" class="dfinput" type="text" value="${client.cliname}"/></li>
    <li>电话：<input name="clitel" class="dfinput" type="text" value="${client.clitel}"/></li>
    <li>院校：<input name="clischool" class="dfinput" type="text" value="${client.clischool}"/></li>
    <li>创建人：<input name="clicreater" class="dfinput" value="${client.clicreater}" type="text"/></li>
    <li>咨询师：<input name="cliresultor" class="dfinput" value="${client.cliresultor}" type="text"/></li>
        <li>所在城市：<input name="clicity" class="dfinput" value="${client.clicity}" type="text"/></li>
        <li>中心：<input type="text" class="dfinput" value="${client.center}" name="center"></li>
        <li>渠道：<input name="cliway" class="dfinput" value="${client.cliway}" type="text"/></li>
        <li>状态：<select name="clistatus">
            <c:choose>
                <c:when test="${client.clistatus == 1}">
                    <option value="1" checked="checked">未报名</option>
                    <option value="2">跟进并报名</option>
                </c:when>
                <c:when test="${client.clistatus == 2}">

                    <option value="2"  checked="checked">跟进并报名</option>
                    <option value="1">未报名</option>
                </c:when>
                <c:otherwise>
                    <option value="1">未报名</option>
                    <option value="2"  checked="checked">跟进并报名</option>

                </c:otherwise>
            </c:choose>

        </select></li>
        <li>意向：<select name="cliattitude">
    <c:choose>
        <c:when test="${client.cliattitude == 1}">
            <option value="1" checked="checked">积极</option>
            <option value="2">犹豫</option>
        </c:when>
        <c:otherwise>
            <option value="1">积极</option>
            <option value="2"  checked="checked">犹豫</option>
        </c:otherwise>
    </c:choose>
        </select></li>
    </ul>
    <input class="btn" type="submit" value="提交"/>
</form>
</body>
</html>
