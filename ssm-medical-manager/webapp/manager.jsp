<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>医疗后台管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
	</head>
	
	
		<frameset rows="180,*" cols="*" framespacing="0" frameborder="no"
			border="0">
			<frame src="top.jsp" name="top" scrolling="NO">
			<frameset rows="*" cols="223,*" framespacing="0" frameborder="no"
				border="0">
				<frame src="left.jsp" name="left">
				<frame src="baseData/med_list.jsp" name="main">
			</frameset>
		</frameset>
		<noframes>
			<body>
			</body>
		</noframes>
	
</html>
