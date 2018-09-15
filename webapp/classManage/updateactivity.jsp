<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
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
        <li><a href="#">活动管理</a></li>
        <li><a href="#">计划有变</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>修改活动</span></div>
    <form action="/classManage/updateActivity?actId=${activity.actId}&pageNum=${pageNum}" method="post">
    <ul class="forminfo">
        <li><label>活动名称</label><input name="actName" type="text" class="dfinput" value="${activity.actName}"/></li>
        <li><label>活动地点</label><input name="actPlace" type="text" class="dfinput" value="${activity.actPlace}"/></li>
        <li><label>活动时间</label><input name="actTime" type="text" class="dfinput" value="${activity.actTime}" onClick="WdatePicker()"/></li>
        <li><label>活动班级</label>
            <div class="vocation">
                <select class="select3" name="actClassId" style="border:1px !important;">
                    <option value="">请选择</option>
                    <c:forEach items="${clist}" var="temp" varStatus="status">
                        <c:choose>
                            <c:when test="${activity.actClassId == temp.classNo}">
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
                            <c:when test="${activity.actTeacherId == temp.teaId}">
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
        <li><label>&nbsp;</label>
            <input type="submit" class="btn" value="确认修改"/></li>
    </ul>
    </form>

</div>
</body>
</html>
