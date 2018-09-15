<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/css/style.css" rel="stylesheet" type="text/css" />
    <style>
        #btn{
            cursor: pointer;
        }
    </style>
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
    $("#btn").click(function(){
        var gpage=$("input[name='getpage']").val();
        if(gpage=="")
            gpage=1;
        $("#pageNum").html(gpage-1);
        getObject(1);
    });

  $(".click").click(function(){
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

function getObject(n){
    var num=$("#pageNum").html();
    var pages=$("#pages").html();
    if(n==1){num++;}
    else if(n==-1){num=1;}
    else if(n==2){num=pages;}
    else{num--;}
    $.ajax({
        url:"/logj/getNextLogjs",
        type:"post",
        data:{cpage:num},
        dataType:"json",
        success:function(data){
            if(data.length!=0) {
                $("table tbody tr").remove();
                $(data).each(function (index, element) {
                    var t = new Date(element.ltime);
                    var time = t.getFullYear() + "-" + (t.getMonth() + 1) + "-" + t.getDate() + " " + t.getHours() + ":" + t.getMinutes() + ":" + t.getSeconds();
                    //alert(element.adminUser.auname+" "+element.incident+" "+time+" "+element.lip);
                    var str = "<tr><td class='imgtd'>";
                    str += (index + 1) + "</td><td style='height: 40px;line-height: 40px;'>" + element.adminUser.auname + "</td><td>";
                    str += element.incident + "</td><td>" + time + "</td><td>";
                    str += element.lip + "</td></tr>";
                    $("table tbody").append(str);
                    $("#pageNum").html(num);
                })
            }
        }
    });
}
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">日志管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <table class="imgtable">
    
    <thead>
    <tr>
        <th width="100px;">序号</th>
        <th>用户</th>
        <th>事件</th>
        <th>时间</th>
        <th>IP</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${pageInfo.list}" var="temp" varStatus="status">
    <tr>
        <td  class="imgtd">${status.index+1}</td>
        <td style="height: 40px;line-height: 40px;">${temp.adminUser.auname}</td>
        <td>${temp.incident}</td>
        <td>${temp.ltime}</td>
        <td>${temp.lip}</td>
    </tr>
    </c:forEach>

    </tbody>
    </table>
        <div style="display: inline-block">总记录数：${pageInfo.total}</div>
        <div style="display: inline-block">当前页数：<div id="pageNum" style="display: inline-block">${pageInfo.pageNum}</div></div>
        <div style="display: inline-block">总页数：<div id="pages" style="display: inline-block">${pageInfo.pages}</div></div>
        <div style="display: inline-block;margin-left: 650px">
            <a onclick="getObject(-1)" href="javascript:;">首页</a>
            <a onclick="getObject(0)" href="javascript:;">上一页</a>
            <input style="width: 30px;border:1px solid #e4efff ;" type="text" name="getpage"/><input type="button" id="btn" value="GO">
            <a onclick="getObject(1)" href="javascript:;">下一页</a>
            <a onclick="getObject(2)" href="javascript:;">末页</a>
        </div>

    <%
        session.removeAttribute("pageInfo");
    %>

<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
