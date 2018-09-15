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
      location.replace("/user/Tempform")
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
    <li><a href="#">角色管理</a></li>
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
    <th>角色名称</th>
    <th>角色状态</th>
    <th>修改权限</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    <c:forEach items="${pageInfo.list}" var="temp" varStatus="status">
    <tr>
    <td height="40px" class="imgtd">${status.index+1}</td>
    <td>${temp.rname}</td>
    <td>
        <c:choose>
            <c:when test="${temp.rstate==1}">
                可用
            </c:when>
            <c:otherwise>禁用</c:otherwise>
        </c:choose>
    </td>
    <td><a href="/user/updateRole?rid=${temp.roleid}">修改权限</a></td>
    <td>
        <a href="/user/updateState?rid=${temp.roleid}&rstate=2&cpage=${pageInfo.pageNum}">禁用</a>
        <a href="/user/updateState?rid=${temp.roleid}&rstate=1&cpage=${pageInfo.pageNum}">启用</a>
    </td>
    </tr>
    </c:forEach>
    </tbody>
    
    </table>
    
    
    
    
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum}&nbsp;</i>页:,总共${pageInfo.pages}页</div>
        <ul class="paginList">
        <li class="paginItem">
            <c:choose>
                <c:when test="${pageInfo.pageNum==1}">
                    <a href="javascript:;"><span class="pagepre"></span></a>
                </c:when>
                <c:otherwise>
                    <a href="/user/allRoles?cpage=${pageInfo.pageNum-1}"><span class="pagepre"></span></a>
                </c:otherwise>
            </c:choose>
        </li>
        <li class="paginItem">
            <c:choose>
                <c:when test="${pageInfo.pageNum==pageInfo.pages}">
                    <a href="javascript:;"><span class="pagenxt"></span></a>
                </c:when>
                <c:otherwise>
                    <a href="/user/allRoles?cpage=${pageInfo.pageNum+1}"><span class="pagenxt"></span></a>
                </c:otherwise>
            </c:choose>

        </li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    <%
        session.removeAttribute("pageInfo");
    %>
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
