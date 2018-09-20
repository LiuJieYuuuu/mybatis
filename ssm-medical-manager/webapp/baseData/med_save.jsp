<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加药品</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function save(){
			var form = document.forms["medForm"];
			if(form.elements["medNo"].value == ""){
				alert("<bean:message key="medicine.medNo.null" />");
				form.elements["medNo"].focus();
				return false;
			}
			if(form.elements["name"].value == ""){
				alert("<bean:message key="medicine.name.null" />");
				form.elements["name"].focus();
				return false;
			}
			if(form.elements["price"].value == "" || form.elements["price"].value <= 0){
				alert("<bean:message key="medicine.price.null" />");
				form.elements["price"].focus();
				return false;
			}
			if(isNaN(form.elements["price"].value)){
				alert("<bean:message key="medicine.price.count.format" />");
				form.elements["price"].focus();
				return false;
			}
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
					当前位置：医药管理&gt;&gt; 添加药品 
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
    <form action="/medical/addmedicalInfo" method="post" focus="name" enctype="multipart/form-data" onsubmit="return save();">
    	<input type="hidden" name="command" value="add" />
    	<input type="hidden" name="id"/>
      <table border="0" align="center" width="450">
        <tr>
          <td align="right">药品编码：</td>
          <td align="left"><input type="text" name="mino" /></td>
        </tr>
        <tr>
          <td align="right">药品名称：</td>
          <td align="left"><input type="text" name="miname" /></td>
        </tr>
        <tr>
          <td align="right">单价：</td>
          <td align="left"><input type="text" name="miprice" /></td>
        </tr>
        <tr>
          <td align="right">库存数量：</td>
          <td align="left"><input type="text" name="mireport"/></td>
        </tr>
        <tr>
          <td align="right">所属类别：</td>
          <td align="left">
              <select name="mcid" id="categoryId">
                <c:forEach var="temp" items="${list}">
                    <option value="${temp.mcid}">${temp.mcname}</option>
                </c:forEach>
              </select>
          </td>
        </tr>
        <tr>
          <td align="right">图片：</td>
          <td align="left">
          	<input type="file" name="img" />
          	<input type="hidden" name="photoPath"/>
          </td>
        </tr>
        <tr>
          <td align="right">出场地址：</td>
          <td align="left"><textarea name="miaddress" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
          <td align="right">描述：</td>
          <td align="left"><textarea name="mides" cols="30" rows="3"></textarea></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" value="提交"/></td>
        </tr>
      </table>
    </form>
    </td>
			</tr>
		</table>
	</div>
  </body>
</html>
