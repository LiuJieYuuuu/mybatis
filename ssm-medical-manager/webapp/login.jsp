<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html locale="true">
  <head>
    <title>用户登录</title>
	<style type="text/css">
		<!--
		body{
			margin: 0px;
			font-size: 12px;
			background-color: #4C8C1C;
		}
		.tb1{
			position: relative;
			top: -355;
			left: 280;
		}
		.it{
			background-color: #E1FFC1;
			height: 20px;
			width: 150px;
		}
		-->
	</style>
	<script language="javaScript">
		if(self != top){
			//alert("用户登录超时");
			top.location = self.location;
		}
		function login(){
			var form = document.forms["userForm"];
			if(form.elements["username"].value == ""){
				alert("用户名为空");
				form.elements["username"].focus();
				return;
			}
			if(form.elements["password"].value == ""){
				alert("密码为空");
				form.elements["password"].focus();
				return;
			}
			form.submit();
		}
	</script>
  </head>
  <body>
  <html:errors/>
  <%
  	session.removeAttribute("adminuser");
  %>
  <table border="0" width="990" height="600" align="center" cellpadding="0" cellspacing="0">
      	
      	<tr>
          <td colspan="2" align="left" valign="top">
         		<img src="images/login_zh.jpg" border="0" usemap="#Map">
         		<form action = "/login" method="post" focus="username">
		    	<table border="0" class="tb1">
						
			        <tr>
			          <td align="right">用户名：</td>
			          <td><input name="auname" type="text" property="username"  styleClass="it"/></td>
			        </tr>
			        <tr>
			          <td align="right">密码 ：</td>
			          <td><input name="aupwd" type="password" property="password"  styleClass="it"/></td>
			        </tr>
			        <tr>
			          <td colspan="2" align="center" height="30">
			         	 <input type="submit" value="登录" property="lgoin" onclick="login()">
			         		
               <input type="reset" class="button" value="重置" />

			          </td>
			        </tr>
			      </table>
		    </form>
          </td>
        </tr>
  </table>
  
<map name="Map"><area shape="rect" coords="265,140,323,154" href="<html:rewrite page="/language.do?lan=zh"/>">
<area shape="rect" coords="335,138,406,153" href="<html:rewrite page="/language.do?lan=en"/>">
</map></body>
</html>
