<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>所有药品</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
</head>
<body>
	<div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					当前位置：类别管理&gt;&gt;查看类别&gt;&gt;所有药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
					<table border="1" align="center" width="700" cellpadding="1"
						cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
						<tr bgcolor="#FFFFFF">
							<td class="tb_tl">
								类别编号
							</td>
							<td class="tb_tl">
								类别名称
							</td>
							<td class="tb_tl">
								类别描述
							</td>
							<td class="tb_tl">
								创建名称
							</td>
							<td class="tb_tl">
								操作
							</td>
						</tr>
							<c:forEach items="${list}" var="temp">
								<tr bgcolor="#FFFFFF">
									<td>
										${temp.mcid}
									</td>
									<td>
										<a href="#">${temp.mcname}</a>
									</td>
									<td>
										${temp.mcdes}
									</td>
									<td>
										${temp.mctime}
									</td>
									<td>
										<a href="/medical/updatemClassify?mcid=${temp.mcid}">修改</a>
										<a href="/medical/deletemClassify?mcid=${temp.mcid}">删除</a>
									</td>
								</tr>
							</c:forEach>
							<tr bgcolor="#FFFFFF">
								<td colspan="5" align="right">
									总记录数 6 共 2 页  <a href="#">首页 </a> <a href="#">上一页</a>
									 <a href="#">下一页</a> <a href="#">尾页</a>
									 <input type="text" name="" style=" width: 35px;"/>
									 <input type="submit" value="Go"/>
								</td>
							</tr>
					</table>
					<br>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
