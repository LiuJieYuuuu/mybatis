<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="../js/select-ui.min.js"></script>
    <script type="text/javascript" src="../editor/kindeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            $(".select1").uedSelect({
                width : 345
            });
            $(".select2").uedSelect({
                width : 167
            });
            $(".select3").uedSelect({
                width : 100
            });
        });
    </script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">班级管理</a></li>
    <li><a href="#">增加班级</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>开班啦！</span></div>
    <form action="/classManage/addc" method="post">
    <ul class="forminfo">
    <li><label>班级名称</label><input name="className" type="text" class="dfinput" /></li>
    <li><label>主授课老师</label>
        <div class="vocation">
            <select class="select3" name="javaTeaId">
                <option value="">请选择</option>
                <c:forEach items="${tlist}" var="temp" varStatus="status">
                    <option value="${temp.teaId }" >${temp.teaName }</option>
                </c:forEach>
            </select>
        </div>
    </li><li><label>职业素养老师</label>
        <div class="vocation">
            <select class="select3" name="mindTeaId">
                <option value="">请选择</option>
                <c:forEach items="${tlist}" var="temp" varStatus="status">
                    <option value="${temp.teaId }" >${temp.teaName }</option>
                </c:forEach>
            </select>
        </div>
    </li>

    <li><label>&nbsp;</label><input  type="submit" class="btn" value="又双叒开班啦"/></li>
    </ul>
    </form>
    
    
    </div>
</body>
</html>
