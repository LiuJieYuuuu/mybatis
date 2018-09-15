<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery.js"></script>
    <script>
        $(function(){
            $("input[name='success']").click(function(){
                var auid=$("input[type=hidden]").val();
                var auname=$("input[name='auname']").val();
                var str="";
                $("input[type='checkbox']:checked").each(function(){
                    str+=$(this).val()+",";
                });
                window.location.href="/user/updateSuccess?rid="+auid+"&rname="+auname + "&auper=" + str;
            });
        })
    </script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">修改角色权限</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
        <input type="hidden" name="auid" value="${role.roleid}">
        <li><label>角色名称</label><input name="auname" type="text" class="dfinput" value="${role.rname}" /></li>
        <li>
            <label>权限：</label>
            <c:forEach items="${list}" var="te">
                <c:choose>
                    <c:when test="${fn:contains(role.auper, te.tpid)}">
                        <input type="checkbox" checked value=${te.tpid}>${te.tpname}
                    </c:when>
                    <c:otherwise>
                        <input type="checkbox" value=${te.tpid}>${te.tpname}
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </li>
        <input name="per" type="hidden" value=${role.auper}>
    <li><label>&nbsp;</label><input name="success" type="button" class="btn" value="确认保存"/></li>
    </ul>
    
    
    </div>
</body>
</html>
