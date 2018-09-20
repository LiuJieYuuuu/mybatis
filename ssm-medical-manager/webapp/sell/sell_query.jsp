<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>按销售日期查询</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function query(){
			var form = document.forms["queryForm"];
			var v1 = form.elements["begin"].value;
			var v2 = form.elements["end"].value;
			var reg = /^[1-9]\d{3}\-\d{1,2}-\d{1,2}$/;
			if(v1 == ""){
				alert("<bean:message key="sell.time.start.null"/>");
				form.elements["begin"].focus();
				return false;
			}
			if(v2 == ""){
				alert("<bean:message key="sell.time.end.null"/>");
				form.elements["end"].focus();
				return false;
			}
			if(!reg.test(v1)){
				alert("<bean:message key="sell.time.start.error"/>");
				form.elements["begin"].focus();
				return false;
			}
			if(!reg.test(v2)){
				alert("<bean:message key="sell.time.end.error"/>");
				form.elements["begin"].focus();
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
					当前位置： 销售管理 &gt;&gt; 按销售日期查询
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form name="queryForm" action="sell.do" method="post" onsubmit="return query();">
    	<input type="hidden" name="command" value="today" />
      <table border="0" align="center" width="500">
        <tr>
          <td align="right">起始日期：</td>
          <td align="left">
          	<input name="begin" type="text" />
          		格式：yyyy-mm-dd
          </td>
        </tr>
        <tr>
          <td align="right">结束日期：</td>
          <td align="left">
	          <input name="end" type="text" />
	         	 格式：yyyy-mm-dd
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
          	<input type="submit" value="查询">
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
