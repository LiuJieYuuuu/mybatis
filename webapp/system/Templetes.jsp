<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
      location.replace("/templete/addTemp");
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">模块管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="/images/t01.png" /></span>添加</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="imgtable">
    
    <thead>
    <tr>
        <th width="100px;">序列号</th>
        <th>父模块</th>
        <th>操作(父模块)</th>
        <th>子模块</th>
        <th>操作(子模块)</th>
    </tr>
    </thead>
    
    <tbody>
    <c:forEach items="${temps}" var="temp" varStatus="status">
    <tr>
        <td class="imgtd" style="height: 40px;line-height: 40px;">${status.index+1}</td>
        <td>${temp.tpname}</td>
        <td>
            <a href="/templete/updateFtemp?tpid=${temp.tpid}">修改(父模块)</a>&nbsp;&nbsp;
            <a href="/templete/deleteFtemp?tpid=${temp.tpid}">删除(父模块)</a>
        </td>
        <td style="height: 40px;line-height: 40px;outline: 1px #ddd solid;">
            <c:forEach items="${temp.list}" var="t">
                <div style="height: 40px;line-height: 40px;outline: 0.5px #ddd solid;">${t.etpname}</div>
            </c:forEach>
        </td>
        <td style="height: 40px;line-height: 40px;">
            <c:forEach items="${temp.list}" var="t">
                <div style="height: 40px;line-height: 40px;outline: 0.5px #ddd solid;">
                    <a href="/templete/updateTemp?etpid=${t.etpid}">修改(子模块)</a>&nbsp;&nbsp;
                    <a href="/templete/deleteEtemp?etpid=${t.etpid}">删除(子模块)</a>
                </div>
            </c:forEach>
        </td>
    </tr>
    </c:forEach>
    </tbody>
    <%
        session.removeAttribute("temps");
    %>
    </table>
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
