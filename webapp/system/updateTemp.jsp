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
    <li><a href="#">修改子模块</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>模块信息</span></div>
    <form action="/templete/updateTempSuccess" method="post">
        <input type="hidden" name="etpid" value="${etemp.etpid}">
    <ul class="forminfo">
        <li>
            <label>模块名称:</label>
            <input name="etpname" type="text" class="dfinput" value="${etemp.etpname}" />
        </li>
        <li>
            <label>访问地址:</label>
            <input name="etpaddress" type="text" class="dfinput" value="${etemp.etpaddress}" />
        </li>
        <li>
            <label>父模块选择：</label>
            <select name="tpid">
                <c:forEach items="${temps}" var="t">
                    <option value="${t.tpid}">${t.tpname}</option>
                </c:forEach>
            </select>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="success" type="submit" class="btn" value="确认修改"/>
        </li>
    </ul>
    </form>
    
    </div>
</body>
</html>
