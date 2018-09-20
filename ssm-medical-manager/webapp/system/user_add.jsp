<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html locale="true">
  <head>
    <title>添加管理员</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function save(){
			var form = document.forms["userForm"];
			if(form.elements["username"].value == ""){
				alert("用户名为空");
				form.elements["username"].focus();
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
  <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					·当前位置：
					系统管理
					&gt;&gt; 添加管理员
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="/system/useradd" method="post" focus="username" onsubmit="return save();">
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">用户名：</td>
          <td align="left">
          	<input type="hidden" name="command" value="userAdd" />
          	<input type="hidden" name="id"/>
          	<input type="text" name="auname" />
          </td>
        </tr>
        <tr>
          <td align="right">密码 ：</td>
          <td align="left"><input name="aupwd" type="password" property="password" /></td>
        </tr>
        <tr>
          <td align="right">确认密码：</td>
          <td align="left"><input type="password" property="rePassword" /></td>
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
  </body>
</html>
