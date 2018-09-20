<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script type="text/javascript">
			var m = "";
			function menu(num){
				sub = eval("sub_"+num+".style");
				if(m != sub){
					if(m != ""){
						m.display = "none";
					}
					sub.display='block';
					m = sub;
				}else{
					sub.display = "none";
					m = "";
				}
			}
		</script>
		<link rel="stylesheet" type="text/css" href="images/styles.css">
	    <style type="text/css">
<!--
.m1 {
	font-size: 12px;
	font-weight: bold;
	margin-left: 60px;
	text-align: center;
	vertical-align: sub;
}
.sub1 {
	margin-left: 40px;
}
-->
        </style>
</head>
  <body>
    <table border="0" width="200" height="100%" align="right" cellSpacing="0" cellPadding="0" bgcolor="#E0FBC4">
    	<!-- 药品管理 -->
    	<tr>
			<td onClick="menu(0)" height="33" background="images/m1.jpg">
				<font class="m1">
				分类
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_0" style="display: none;">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/med_add.jsp" target="main" class="sub1">添加药品</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/med_list.jsp" target="main" class="sub1">
								查看药品
							</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/med_query.jsp" target="main" class="sub1">高级查询</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/med_count.jsp" target="main" class="sub1">查看库存</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
    	<!-- 类别管理 -->
    	<tr>
			<td onClick="menu(1)" height="33" background="images/m1.jpg">
				<font class="m1">
					类别管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_1" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/category_add.jsp" target="main" class="sub1">添加类别</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="/medical/MedClassify" target="main" class="sub1">查看类别</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/category_graph.jsp" target="main" class="sub1">
								类别统计
							</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 购买药品 -->
    	<tr>
			<td onClick="menu(2)" height="33" background="images/m1.jpg">
				<font class="m1">
				购买药品
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_2" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="/medical/addmedical" target="main" class="sub1">添加药品</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="baseData/med_sell.jsp" target="main" class="sub1">选购药品</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="sell/sell_order.jsp" target="main" class="sub1">查看选购</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 销售管理 -->
    	<tr>
			<td onClick="menu(3)" height="33" background="images/m1.jpg">
				<font class="m1">
				销售管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_3" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="sell/sell_list.jsp" target="main" class="sub1">查看明细</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="sell/sell_list.jsp" target="main" class="sub1">今日明细</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="sell/sell_query.jsp" target="main" class="sub1">日期查询</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="sell/sell_seq_list.jsp" target="main" class="sub1">销售排行</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- 进货/需求管理 -->
    	<tr>
			<td onClick="menu(4)" height="33" background="images/m1.jpg">
				<font class="m1">
				进货/需求管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_4" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="require/req_add.jsp" target="main" class="sub1">添加进货</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="require/req_list.jsp" target="main" class="sub1">查看进货</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<!-- 系统管理 -->
    	<tr>
			<td onClick="menu(5)" height="33" background="images/m1.jpg">
				<font class="m1">
				系统管理
				</font>
			</td>
		</tr>
		<tr bgcolor="#E0FBC4">
			<td id="sub_5" style="display: none">
				<table width="80%" align="center">
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="system/user_add.jsp" target="main" class="sub1">添加管理员</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="system/getUsers" target="main" class="sub1">查看所有管理员</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="system/user_password.jsp" target="main" class="sub1">修改密码</a>
						</td>
					</tr>
					<tr>
						<td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
							<a href="login.jsp" class="sub1" target="_top">系统初始化</a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="100%"></td>
		</tr>
	</table>
  </body>
</html>
