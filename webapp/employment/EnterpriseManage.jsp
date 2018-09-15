
<%--
  Created by IntelliJ IDEA.
  User: 象拔蚌
  Date: 2018/9/8
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>企业管理</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("input[name='select']").click(function () {
                window.location.href="Enterprise?name="+$("input[name='selectinfo']").val();
            })
        });
    </script>

</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">就业管理</a></li>
        <li><a href="#">企业管理</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <%--<li class="click"><span><img src="../images/t01.png" /></span>添加</li>--%>
            <a href="addEnterprise.jsp"><span><img src="../images/t01.png" /></span>添加</a>
            <%--<li class="click"><span><img src="images/t02.png" /></span>修改</li>
            <li><span><img src="images/t03.png" /></span>删除</li>
            <li><span><img src="images/t04.png" /></span>统计</li>--%>
        </ul>
        <input type="text" class="dfinput" placeholder="请输入企业名称关键字" name="selectinfo" style="height: 20px;margin-left: 40px;width: 200px;"><input name="select" class="btn" type="button" value="查询" style="height: 30px;width:100px;margin-left: 20px;border-radius: 5px;">

        <ul class="toolbar1">
            <%--<li><span><img src="images/t05.png" /></span>设置</li>--%>
        </ul>

    </div>


    <table class="tablelist">
        <thead>
        <tr>
            <th>编号<i class="sort"><img src="../images/px.gif" /></i></th>
            <th>企业名称</th>
            <th>企业地点</th>
            <th>电话</th>
            <th>是否有合作</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="temp">
            <tr>
                <td>${temp.id}</td>
                <td>${temp.name}</td>
                <td>${temp.loc}</td>
                <td>${temp.tel}</td>
                <td>${temp.isPartner}</td>
                <td><a href="updateEnterprise?id=${temp.id}" class="tablelink"> 修改</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum}&nbsp;</i>页</div>
        <ul class="paginList">
            <c:choose>
                <c:when test="${pageInfo.pageNum>1}">
                    <li class="paginItem"><a href="/employment/Enterprise?name=${name}&cPage=${pageInfo.prePage}"><span class="pagepre"></span></a></li>
                </c:when>
                <c:otherwise><li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li></c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${pageInfo.pageNum<pageInfo.pages}">
                    <li class="paginItem"><a href="/employment/Enterprise?name=${name}&cPage=${pageInfo.nextPage}"><span class="pagenxt"></span></a></li>
                </c:when>
                <c:otherwise><li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li></span></a></li></c:otherwise>
            </c:choose>
        </ul>
    </div>







</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>

