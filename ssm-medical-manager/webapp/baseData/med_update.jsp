<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>更新药品</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function save(){
			var form = document.forms["medForm"];
			if(form.elements["medCount"].value == "" || form.elements["medCount"].value <= 0){
				alert("<bean:message key="medicine.storage.count.null" />");
				form.elements["medCount"].focus();
				return false;
			}
			if(isNaN(form.elements["medCount"].value)){
				alert("<bean:message key="medicine.storage.count.format" />");
				form.elements["medCount"].focus();
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
					当前位置： 医药管理 &gt;&gt;更新药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="baseData/med.do" method="post" focus="medCount" onsubmit="return save();">
    	<input type="hidden" name="command" value="update" />
    	<input type="hidden" name="id"/>
    	<input type="hidden" name="photoPath"/>
    	<input type="hidden" name="categoryId"/>
    	<input type="hidden" name="reqCount"/>
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">药品编码：</td>
          <td align="left"><input type="text" name="medNo" readonly="true"/></td>
        </tr>
        <tr>
          <td align="right">药品名称：</td>
          <td align="left"><input type="text" name="name"  readonly="true"/></td>
        </tr>
        <tr>
          <td align="right">单价：</td>
          <td align="left"><input type="text" name="price" readonly="true"/></td>
        </tr>
        <tr>
          <td align="right">药品数量：</td>
          <td align="left">
          	<input type="text" name="medCount" value=""/>
          	<font color="red">
          		<bean:message key="system.current" />：
          		${medForm.medCount}
          	</font>
          </td>
        </tr>
        <tr>
          <td align="right">出厂地址：</td>
          <td align="left"><textarea name="factoryAdd" cols="30" rows="3" readonly="true"></textarea></td>
        </tr>
        <tr>
          <td align="right">描述：</td>
          <td align="left"><textarea name="description" cols="30" rows="3" readonly="true"></textarea></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" name="button.submit" value="提交"/></td>
        </tr>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
