<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改密码</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function save(){
			var form = document.forms["userForm"];
			if(form.elements["oldPassword"].value == ""){
				alert("原密码为空");
				form.elements["oldPassword"].focus();
				return false;
			}
			if(form.elements["password"].value == ""){
				alert("密码为空");
				form.elements["password"].focus();
				return false;
			}
			if(form.elements["rePassword"].value == ""){
				alert("确认密码为空");
				form.elements["rePassword"].focus();
				return false;
			}
			if(form.elements["rePassword"].value != form.elements["password"].value){
				alert("两次密码不一致");
				return false;
			}
		}
	</script>
  </head>
  <body>
  <c:if test="${error!=null}">
      <script>alert("原密码错误！！");</script>
  </c:if>
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					系统管理
					&gt;&gt; 修改密码
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="/system/updatePwd" method="post" focus="oldPassword">
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">原密码：</td>
          <td align="left">
          	<input type="hidden" name="command" value="modifyPassword" />
          	<input type="hidden" name="id"/>
          	<input type="password" name="old_pwd" />
          </td>
        </tr>
        <tr>
          <td align="right">密码 ：</td>
          <td align="left"><input type="password" name="new_pwd" /></td>
        </tr>
         <tr>
          <td align="right">确认密码：</td>
          <td align="left"><input type="password" name="rePassword" /></td>
        </tr>
        <tr>
          <td align="center" colspan="2">
			<input type="submit" value="提交"/>
		  </td>
        </tr>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  <%
    session.removeAttribute("error");
  %>
  </body>
</html>
