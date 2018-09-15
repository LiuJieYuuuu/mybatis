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
            $("input[name='temp']").click(function(){
                if($("#fte").attr("checked")) {
                    $("#ftem").hide();
                    $("#tad").hide();
                }else {
                    $("#ftem").show();
                    $("#tad").show();
                }

            });
        })
    </script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">添加模块</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>模块信息</span></div>
    <form action="/templete/addTempSuccess" method="post">
    <ul class="forminfo">
        <li><label>模块名称</label><input name="tname" type="text" class="dfinput" /></li>
        <li id="tad" style="display: none">
            <label>访问地址</label><input name="address" type="text" class="dfinput" />
        </li>
        <li>
            <label>模块分类：</label>
            <input id="fte" type="radio" name="temp" value="templete" checked>父模块
            <input type="radio" name="temp" value="etemp" >子模块
        </li>
        <li id="ftem" style="display: none">
            <label>父模块选择：</label>
            <select name="ftemp">
                <c:forEach items="${temps}" var="t">
                    <option value="${t.tpid}">${t.tpname}</option>
                </c:forEach>
            </select>
        </li>
        <li>
            <label>&nbsp;</label>
            <input name="success" type="submit" class="btn" value="确认保存"/>
        </li>
    </ul>
    </form>
    
    </div>
</body>
</html>
