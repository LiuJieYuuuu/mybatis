<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                var auname=$("input[name='auname']").val();
                var str="";
                $("input[type='checkbox']:checked").each(function(){
                    str+=$(this).val()+",";
                });
                window.location.href="/user/TempSuccess?rname="+auname+"&auper=" + str;
            });
        })
    </script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">添加角色</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
        <li><label>角色名称</label><input name="auname" type="text" class="dfinput" /></li>
        <li>
            <label>权限：</label>
            <c:forEach items="${list}" var="te">
                <input type="checkbox" value=${te.tpid}>${te.tpname}
            </c:forEach>
        </li>

    <li><label>&nbsp;</label><input name="success" type="button" class="btn" value="确认保存"/></li>
    </ul>
    
    
    </div>
</body>
</html>
