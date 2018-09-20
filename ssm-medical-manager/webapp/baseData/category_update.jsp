<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>修改类别</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function add(){
			var form = document.forms["categoryForm"];
			if(form.elements["name"].value == ""){
				alert("<bean:message key="category.name.null"/>");
				form.elements["name"].focus();
				return false;
			}
			if(form.elements["description"].value == ""){
				alert("<bean:message key="category.description.null"/>");
				form.elements["description"].focus();
				return false;
			}
		}
	</script>
</head>
<body>
	<div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					当前位置：类别管理&gt;&gt;修改类别
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
					<form action="/medical/mclassifyUpdate" method="post" focus="name"
						onsubmit="return add();">
						<input type="hidden" name="command" value="add" />
						<input type="hidden" name="mcid" value="${mc.mcid}" />
						<table border="0" align="center" width="500">
							<tr>
								<td align="right">
									类别名称：
								</td>
								<td align="left">
									<input type="text" name="mcname" value="${mc.mcname}" />
								</td>
							</tr>
							<tr>
								<td align="right">
									描述：
								</td>
								<td align="left">
									<textarea cols="30" rows="3" name="mcdes" >${mc.mcdes}</textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="submit"  value="确认修改"/>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>

