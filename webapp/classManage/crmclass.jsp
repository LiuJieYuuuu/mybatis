<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="../js/select-ui.min.js"></script>
    <script type="text/javascript" src="../editor/kindeditor.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
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
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">

    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>班级id</th>
        <th>班级名称</th>
        <th>授课老师</th>
        <th>职业素养老师</th>


        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="temp">
            <tr>
                <td>${temp.classNo}</td>
                <td>${temp.className}</td>
                <td>
                    <c:forEach items="${tlist}" var="temp2">
                        <c:if test="${temp.javaTeaId==temp2.teaId}">
                            ${temp2.teaName}
                        </c:if>
                    </c:forEach>
                </td>
                <td>
                    <c:forEach items="${tlist}" var="temp2">
                        <c:if test="${temp.mindTeaId==temp2.teaId}">
                            ${temp2.teaName}
                        </c:if>
                    </c:forEach>
                </td>

            </tr>

        </c:forEach>

        </tbody>
    </table>

        <div class="pagin">
            <div class="message">共<i class="blue">${pageInfo.total }</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum }&nbsp;</i>页</div>
            <ul class="paginList">
                <c:choose>
                    <c:when test="${pageInfo.isFirstPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/my_class?pageNum=${pageInfo.prePage }"><span class="pagepre"></span></a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="i" begin="1" end="${pageInfo.pages }" step="1">
                    <li class="paginItem"><a href="/classManage/my_class?pageNum=${i }">${i }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${pageInfo.isLastPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/my_class?pageNum=${pageInfo.nextPage }"><span class="pagenxt"></span></a></li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>

    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
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
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
