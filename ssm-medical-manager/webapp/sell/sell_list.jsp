<%@ page language="java" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>销售明细</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function query(){
			var form = document.forms["queryForm"];
			if(form.elements["keyWord"].value == ""){
				alert("<bean:message key="query.keyWord.null" />");
				form.elements["keyWord"].focus();
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
					当前位置：销售管理&gt;&gt; 销售明细
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td colspan="8" align="center">
          		<table border="0" width="100%">
          			<tr>
          				<td align="left">
          					<form name="queryForm" action="" method="post" onsubmit="return query();" class="blur_form">
          						<input type="hidden" name="command" value="blurQuery"/>
          						模糊查询：<input name="keyWord" type="text" size="20"/>
          						<input type="submit" value="查询"/>
          					</form>
          				</td>
          			</tr>
          		</table>
          </td>
        </tr>
        <tr bgcolor="#FFFFFF" >
          <td class="tb_tl">销售编号</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">单价</td>
          <td class="tb_tl">数量</td>
          <td class="tb_tl">金额</td>
          <td class="tb_tl">销售时间</td>
          <td class="tb_tl">操作员</td>
        </tr>
        
       		<tr bgcolor="#FFFFFF">
       			<td>1</td>
       			<td>
       				<a href="../baseData/med_view.jsp">感冒胶囊</a>
       			</td>
       			<td>2.5元</td>
       			<td>10</td>
       			<td>25元</td>
       			<td>2017-2-8</td>
       			<td>销售员001</td>
       		</tr>
       	
       	<tr bgcolor="#FFFFFF">
        
          <td colspan="8" align="right">
          	<table border="0" width="100%">
          		<tr>
          			<td align="right">
	          			总记录数8 共 3 页 <a href="#">首页</a> <a href="#">上一页 1</a> 
        				<a href="#">下一页</a> <a href="#">尾页  </a>
        				<input type="text" name="" style=" width: 35px;"/><input type="button" value="Go"/>
          			</td>
          		</tr>
          	</table>
	      </td>
	    </tr>
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
