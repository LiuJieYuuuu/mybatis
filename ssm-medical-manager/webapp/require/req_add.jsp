<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加进货</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function add(){
			var form = document.forms["medForm"];
			if(form.elements["medNo"].value == ""){
				alert("药品编码为空");
				form.elements["medNo"].focus();
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
					进货/需求管理
					&gt;&gt; 添加进货
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
   <form action="req_update.jsp" method="post" focus="medNo" onsubmit="return add()">
    	 <input type="hidden" name="command" value="findMedicineByMedNo" />
    	<!--<input tpye="hidden" name="id"/> -->
      <table border="0" align="center" width="300">
        <tr>
          <td align="right">药品编码：</td>
          <td align="left"><input type="text" name="medNo" /></td>
          <td align="left"><input type="submit" value="提交"/></td>
        </tr>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
