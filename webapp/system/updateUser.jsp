<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery.js"></script>
    <script>
        $(function(){

        })
    </script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">修改用户</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="/user/updateUser" method="post">
    <ul class="forminfo">
        <input type="hidden" name="auid" value="${user.auid}">
        <li><label>角色名称：</label><input name="auname" type="text" class="dfinput" value="${user.auname}" /></li>
        <li><label>角色密码：</label><input name="aupwd" type="text" class="dfinput" value="${user.aupwd}" /></li>
        <li>
            <label>选择角色：</label>
            <select name="roleid" id="roleid">
                <c:forEach items="${roles}" var="r">
                    <option value="${r.roleid}">${r.rname}</option>
                </c:forEach>
            </select>
        </li>
    <li><label>&nbsp;</label><input name="success" type="submit" class="btn" value="确认修改"/></li>
    </ul>

    </form>
    </div>
</body>
</html>
