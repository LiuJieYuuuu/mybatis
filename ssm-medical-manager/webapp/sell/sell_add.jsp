<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>选购药品</title>

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
					当前位置： 进货/需求管理 &gt;&gt;选购药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="sell_order.jsp" method="post" focus="sellCount">
      <table border="0" align="center" width="500">
        <tr>
          <td align="right">药品名称：</td>
          <td align="left">
          	<input type="hidden" name="command" value="order" />
          	<input type="hidden" name="medId"/>
          	<input type="text" name="sellName" readonly="true"/>
          </td>
        </tr>
        <tr>
          <td align="right">药品单价：</td>
          <td align="left"><input type="text" name="sellPrice" readonly="true"/></td>
        </tr>
        <tr>
          <td align="right">数量：</td>
          <td align="left"><input type="text" name="sellCount"/></td>
        </tr>
        <tr>
          <td align="right">出厂地址：</td>
          <td align="left"><input type="text" name="factoryAdd" readonly="true"/></td>
        </tr>
        <tr>
          <td align="center" colspan="2">
			<input type="submit" value="提交" />
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
