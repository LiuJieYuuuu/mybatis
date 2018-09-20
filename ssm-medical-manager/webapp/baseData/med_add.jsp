<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>添加药品</title>
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function add(){
			var form = document.forms["medForm"];
			if(form.elements["medNo"].value == ""){
				alert("<bean:message key="medicine.medNo.null" />");
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
					当前位置：医药管理&gt;&gt;添加药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
					<form action="baseData/med.do" method="post" focus="medNo"
						onsubmit="return add();">
						<input type="hidden" name="command" value="findMedicineByMedNo" />
						<input type="hidden"  name="id" />
						<table border="0" align="center" width="500" cellpadding="0"  cellspacing="0">
							<tr>
								<td align="right">
									药品编码：
								</td>
								<td align="left">
									<input type="text" name="medNo" />
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
