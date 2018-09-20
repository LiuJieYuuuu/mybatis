<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <title>所有用户</title>

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
					·当前位置：
					系统管理
					&gt;&gt; 查看所有管理员
					&gt;&gt; 所有用户
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="500" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td class="tb_tl">ID</td>
          <td class="tb_tl">用户名</td>
          <td class="tb_tl">创建时间</td>
          <td class="tb_tl">操作</td>
        </tr>
        <logic:present name="list" scope="request">
        	<logic:notEmpty name="list" scope="request">
	        	<logic:iterate id="ele" name="list" scope="request">
					<c:forEach items="${list}" var="temp">
	        		<tr bgcolor="#FFFFFF">
	        			<td>${temp.auid}</td>
	        			<td>
	        				${temp.auname}
	        			</td>
	        			<td>${temp.ctime}</td>
	        			<td>
							<a href="/system/deleteUser?auid=${temp.auid}">删除</a>
	        			</td>
	        		</tr>
					</c:forEach>
	        	</logic:iterate>
        	</logic:notEmpty>
        	<logic:empty name="list" scope="request">
        	<tr bgcolor="#FFFFFF">
	          <td colspan="7" align="center">
				没有找到信息
			  </td>
	        </tr>
        	</logic:empty>
        </logic:present>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  <%
  	session.removeAttribute("list");
  %>
  </body>
</html>
