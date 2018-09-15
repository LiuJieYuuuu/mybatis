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
    <li><a href="#">公告管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">公告管理</a></li>
    <li><a href="#tab2">发布公告</a></li>
  	</ul>
    </div> 
    
  	<div id="tab2" class="tabson">
    
    <div class="formtext">Hi，<b>admin</b>请编辑您要发布的公告！</div>
    <form action="/classManage/addNotice?" method="post">
    <ul class="forminfo">
    <li><label>公告标题<b>*</b></label><input name="ntitle" type="text" class="dfinput"  style="width:518px;"/></li>
    <li><label>通知内容<b>*</b></label>
    <textarea id="content7" name="ncontent" style="width:700px;height:250px;visibility:hidden;"></textarea>
    </li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="马上发布"/></li>
    </ul>
    </form>
    </div> 
    
    
  	<div id="tab1" class="tabson">
    
    <form action="/classManage/crm_notice?pageNum=${pageInfo.pageNum }" method="post">
    <ul class="seachform">
    
    <%--<li><label>综合查询</label><input name="" type="text" class="scinput" /></li>--%>
    <li><label>标题</label>
    <div class="vocation">
        <input class="dfinput" type="text" name="ntitle" style="width: 200px" value="${ntitle}"/>
    </div>
    </li>
    
    <li><label>内容</label>
    <div class="vocation">
        <input class="dfinput" type="text" name="ncontent" style="width: 200px" value="${ncontent}"/>
    </div>
    </li>
    
    <li><label>发布人</label>
    <div class="vocation">
        <input class="dfinput" type="text" name="npublisher" style="width: 200px" value="${npublisher}"/>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input  type="submit" class="scbtn" value="查询"/></li>
    
    </ul>
    </form>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>

        <th>标题</th>
        <th>发布人</th>
        <th>内容</th>
        <th>发布时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${pageInfo.list}" var="temp">
            <tr>
                <td>${temp.ntitle}</td>
                <td>${temp.npublisher}</td>
                <td>${temp.ncontent}</td>
                <td><fmt:formatDate value="${temp.ntime }" type="both"/></td>
                <td>
                    <a href="/classManage/look_notice?nid=${temp.nid}" class="tablelink">查看</a>
                    <a href="/classManage/delNotice?nid=${temp.nid}&pageNum=${pageInfo.pageNum }&ntitle=${ntitle}&ncontent=${ncontent}&npublisher=${npublisher}" class="tablelink"> 删除</a>
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
                        <li class="paginItem"><a href="/classManage/crm_notice?pageNum=${pageInfo.prePage }&ntitle=${title}&ncontent=${content}&npublisher=${npublisher}"><span class="pagepre"></span></a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="i" begin="1" end="${pageInfo.pages }" step="1">
                    <li class="paginItem"><a href="/classManage/crm_notice?pageNum=${i }&ntitle=${title}&ncontent=${content}&npublisher=${npublisher}">${i }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${pageInfo.isLastPage }">
                        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="paginItem"><a href="/classManage/crm_notice?pageNum=${pageInfo.nextPage }&ntitle=${title}&ncontent=${content}&npublisher=${npublisher}"><span class="pagenxt"></span></a></li>
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
