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
    <li><a href="#">添加用户</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="/user/addUserSuccess" method="post">
    <ul class="forminfo">
        <li><label>用户名称</label><input name="auname" type="text" class="dfinput" /></li>
        <li><label>用户密码</label><input name="aupwd" type="text" class="dfinput" /></li>
        <li>
            <label>选择角色：</label>
            <select name="roleid" id="roleid">
                <c:forEach items="${list}" var="te">
                    <option value="${te.roleid}">${te.rname}</option>
                </c:forEach>
            </select>
        </li>

    <li><label>&nbsp;</label><input name="submit" type="submit" class="btn" value="确认添加"/></li>
    </ul>
    </form>
    
    </div>
</body>
</html>
