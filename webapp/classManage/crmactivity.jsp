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
<script type="text/javascript" src="/My97DatePicker/WdatePicker.js"></script>
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
    <li><a href="#">活动管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">活动管理</a></li>
    <li><a href="#tab2">添加活动</a></li>
  	</ul>
    </div> 
    
  	<div id="tab2" class="tabson">
    
    <div class="formtext">Hi，请愉快的带大家玩耍吧！</div>
    <form action="/classManage/addActivity" method="post">
    <ul class="forminfo">
        <li><label>活动名称</label><input name="actName" type="text" class="dfinput"  style="width:518px;"/></li>
        <li><label>活动地点</label><input name="actPlace" type="text" class="dfinput"  style="width:518px;"/></li>
        <li><label>活动时间</label><input name="actTime" type="text" class="dfinput"  style="width:518px;" onClick="WdatePicker()"/></li>
        <li><label>带队老师</label>
            <div class="vocation">
                <select class="select3" name="actTeacherId">
                    <option value="">请选择</option>
                    <c:forEach items="${tlist}" var="temp" varStatus="status">
                        <option value="${temp.teaId }" >${temp.teaName }</option>
                    </c:forEach>
                </select>
            </div>
        </li>
        <li><label>活动班级</label>
            <div class="vocation">
                <select class="select3" name="actClassId">
                    <option value="">请选择</option>
                    <c:forEach items="${clist}" var="temp" varStatus="status">
                        <option value="${temp.classNo }" >${temp.className }</option>
                    </c:forEach>
                </select>
            </div>
        </li>

        <li><label>&nbsp;</label><input type="submit" class="btn" value="High起来！"/></li>
    </ul>
    </form>
    </div> 
    
    
  	<div id="tab1" class="tabson">
    
    <form action="/classManage/crm_activity?pageNum=${pageInfo.pageNum }" method="post">
    <ul class="seachform">
    
    <%--<li><label>综合查询</label><input name="" type="text" class="scinput" /></li>--%>
    <li><label>班级</label>
    <div class="vocation">
        <select class="select3" name="actClassId">
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
    
    <li><label>带队老师</label>
    <div class="vocation">
        <select class="select3" name="actTeacherId">
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
        <th>活动Id<i class="sort"></i></th>
        <th>活动名称</th>
        <th>班级</th>
        <th>地点</th>
        <th>活动时间</th>
        <th>带队老师</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${pageInfo.list}" var="temp">
            <tr>
                <td>${temp.actId}</td>
                <td>${temp.actName}</td>
                <td>${temp.className}</td>
                <td>${temp.actPlace}</td>
                <td><fmt:formatDate value="${temp.actTime }" type="both"/></td>
                <td>${temp.teaName}</td>
                <td>
                    <a href="/classManage/updateAct?actId=${temp.actId}&pageNum=${pageInfo.pageNum}" class="tablelink">计划有变</a>
                    <a href="/classManage/deleteAct?actId=${temp.actId}&pageNum=${pageInfo.pageNum}&actClassId=${temp.actClassId}&actTeacherId=${temp.actTeacherId}" class="tablelink">活动取消</a>

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
                        <li class="paginItem"><a href="/classManage/crm_activity?pageNum=${pageInfo.prePage }&actClassId=${cid}&actTeacherId=${tid}"><span class="pagepre"></span></a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="i" begin="1" end="${pageInfo.pages }" step="1">
                    <li class="paginItem"><a href="/classManage/crm_activity?pageNum=${i }&actClassId=${cid}&actTeacherId=${tid}">${i }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${pageInfo.isLastPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/crm_activity?pageNum=${pageInfo.nextPage }&actClassId=${cid}&actTeacherId=${tid}"><span class="pagenxt"></span></a></li>
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
