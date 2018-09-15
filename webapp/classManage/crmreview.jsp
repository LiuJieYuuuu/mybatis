<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
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
    <li><a href="#">评审管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">评审管理</a></li>
    <li><a href="#tab2">添加评审</a></li>
  	</ul>
    </div> 
    
  	<div id="tab2" class="tabson">
    
    <div class="formtext">Hi，评审来临，躁动起来吧！</div>
    <form action="/classManage/addReview" method="post">
    <ul class="forminfo">
        <li><label>评审名称</label><input name="reviewName" type="text" class="dfinput"  style="width:518px;"/></li>
        <li><label>评审时间</label><input name="reviewTime" type="text" class="dfinput"  style="width:518px;" onClick="WdatePicker()"/></li>
        <li><label>评审老师</label>
            <div class="vocation">
                <select class="select3" name="reviewTeaId">
                    <option value="">请选择</option>
                    <c:forEach items="${tlist}" var="temp" varStatus="status">
                        <option value="${temp.teaId }" >${temp.teaName }</option>
                    </c:forEach>
                </select>
            </div>
        </li>
        <li><label>评审班级</label>
            <div class="vocation">
                <select class="select3" name="reviewClassId">
                    <option value="">请选择</option>
                    <c:forEach items="${clist}" var="temp" varStatus="status">
                        <option value="${temp.classNo }" >${temp.className }</option>
                    </c:forEach>
                </select>
            </div>
        </li>

        <li><label>&nbsp;</label><input type="submit" class="btn" value="评审！"/></li>
    </ul>
    </form>
    </div> 
    
    
  	<div id="tab1" class="tabson">
    
    <form action="/classManage/crm_review?pageNum=${pageInfo.pageNum }" method="post">
    <ul class="seachform">
    
    <%--<li><label>综合查询</label><input name="" type="text" class="scinput" /></li>--%>
    <li><label>评审班级</label>
    <div class="vocation">
        <select class="select3" name="reviewClassId">
            <option value="">请选择</option>
            <c:forEach items="${clist}" var="temp" varStatus="status">
                <c:choose>
                    <c:when test="${cid == temp.classNo}">
                        <option value="${temp.classNo }" selected="selected">${temp.className }</option>
                    </c:when>
                    <c:otherwise >
                        <option value="${temp.classNo }" >${temp.className }</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
    </div>
    </li>
    
    <li><label>评审老师</label>
    <div class="vocation">
        <select class="select3" name="reviewTeaId">
            <option value="">请选择</option>
            <c:forEach items="${tlist}" var="temp" varStatus="status">
                <c:choose>
                    <c:when test="${tid == temp.teaId}">
                        <option value="${temp.teaId }" selected="selected">${temp.teaName }</option>
                    </c:when>
                    <c:otherwise >
                        <option value="${temp.teaId }" >${temp.teaName }</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input  type="submit" class="scbtn" value="查询"/></li>
    
    </ul>
    </form>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>评审Id<i class="sort"></i></th>
        <th>评审名称</th>
        <th>班级</th>
        <th>评审时间</th>
        <th>评审老师</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${pageInfo.list}" var="temp">
            <tr>
                <td>${temp.reviewId}</td>
                <td>${temp.reviewName}</td>
                <td>${temp.className}</td>
                <td><fmt:formatDate value="${temp.reviewTime }" type="both"/></td>
                <td>${temp.teaName}</td>
                <td>
                    <a href="/classManage/crm_score?reviewId=${temp.reviewId}" class="tablelink">打分</a>
                    <a href="/classManage/del_review?reviewId=${temp.reviewId}&pageNum=${pageInfo.pageNum }" class="tablelink"> 删除</a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
        <%--翻页部分--%>
        <div class="pagin">
            <div class="message">共<i class="blue">${pageInfo.total }</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum }&nbsp;</i>页</div>
            <ul class="paginList">
                <c:choose>
                    <c:when test="${pageInfo.isFirstPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/crm_review?pageNum=${pageInfo.prePage }&reviewClassId=${cid}&reviewTeaId=${tid}"><span class="pagepre"></span></a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="i" begin="1" end="${pageInfo.pages }" step="1">
                    <li class="paginItem"><a href="/classManage/crm_review?pageNum=${i }&reviewClassId=${cid}&reviewTeaId=${tid}">${i }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${pageInfo.isLastPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/crm_review?pageNum=${pageInfo.nextPage }&reviewClassId=${cid}&reviewTeaId=${tid}"><span class="pagenxt"></span></a></li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>
   
  
    
    </div>  
       
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>

</body>
</html>
