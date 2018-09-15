<%--
Created by IntelliJ IDEA.
User: LJY
Date: 2018/9/6
Time: 16:05
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
    <link rel="icon" href="images/2017.png" type="image/x-icon">
</head>
<c:if test="${adminuser==null}">
    <script>window.parent.location.replace("login.jsp");</script>
</c:if>
<c:if test="${k!=null}">
    <%session.removeAttribute("k");%>
    <script>window.parent.location.replace("main.jsp");</script>
</c:if>
<frameset rows="88,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
    <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
        <frame src="left.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
        <frame src="/HomePage" name="rightFrame" id="rightFrame" title="rightFrame" />
    </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
