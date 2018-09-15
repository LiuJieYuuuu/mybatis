<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

    
    <form action="/classManage/update_score?reviewId=${reviewId}" method="post">
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>评分id</th>
        <th>学员姓名</th>
        <th>评审老师</th>
        <th>评审时间</th>
        <th>分数</th>


        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="temp">
            <c:choose>
                <c:when test="${temp.score != null}">
                    <tr>
                        <td>${temp.scoreId}</td>
                        <td>${temp.tname}</td>
                        <td>${temp.teaName}</td>
                        <td><fmt:formatDate value="${temp.reviewTime }" type="both"/></td>
                        <td>${temp.score}</td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr>

                        <td>${temp.scoreId}</td>
                        <td>${temp.tname}</td>
                        <td>${temp.teaName}</td>
                        <td><fmt:formatDate value="${temp.reviewTime }" type="both"/></td>
                        <td><input type="text" name="score"/> </td>
                        <input type="hidden" name="scoreid" value="${temp.scoreId}"/>
                    </tr>
                </c:otherwise>
            </c:choose>

        </c:forEach>

        </tbody>
        <input  type="submit" class="btn" value="提交分数"/>
    </table>
    </form>
    
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
