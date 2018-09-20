<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高级查询</title>

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
					当前位置： 医药管理 &gt;&gt; 高级查询
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="baseData/med.do" method="post" focus="name">
    	<input type="hidden" name="command" value="query" />
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">药品ID：</td>
          <td align="left"><input type="text" name="id" /></td>
        </tr>
        <tr>
          <td align="right">药品编码：</td>
          <td align="left"><input type="text" name="medNo" /></td>
        </tr>
        <tr>
          <td align="right">药品名称：</td>
          <td align="left"><input type="text" name="name" /></td>
        </tr>
        <tr>
          <td align="right">出厂地址：</td>
          <td align="left"><textarea name="factoryAdd" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
          <td align="right">描述：</td>
          <td align="left"><textarea property="description" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
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
