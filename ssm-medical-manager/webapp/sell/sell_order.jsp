<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>结账</title>

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
					当前位置： 购买药品 &gt;&gt; 已购买药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
       <table border="1" align="center" width="600" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
        	<td class="tb_tl">药品名称</td>
        	<td class="tb_tl">单价</td>
        	<td class="tb_tl">数量</td>
        	<td class="tb_tl">金额</td>
        	<td class="tb_tl">操作</td>
        </tr>
        <logic:present name="order" scope="session">
        	<logic:iterate id="ele" name="order" scope="session">
        		<tr bgcolor="#FFFFFF">
        		<td>感冒胶囊A</td>
        		<td>2.5</td>
        		<td>1</td>
        		<td>2.5元</td>
				<td>
					<a href="#">删除</a>
				</td>
				</tr>
        	</logic:iterate>
        	<tr bgcolor="#FFFFFF">
        		<td colspan="5" align="center">
        			<a href="../baseData/med_sell.jsp">继续</a>
        			<a href="#">清除</a>
        			<a href="#">结账</a>
        			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        			共5元
				</td>
        	</tr>
        </logic:present>
        <logic:notPresent name="order" scope="session">
        	<tr bgcolor="#FFFFFF">
        		<td colspan="5" align="center"><bean:message key="system.message.null"/></td>
        	</tr>
        </logic:notPresent>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
