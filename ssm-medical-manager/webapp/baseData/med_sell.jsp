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
					当前位置： 购买药品 &gt;&gt; 选购药品
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
     <table border="1" align="center" width="600" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td colspan="7" align="center">
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
          <td class="tb_tl">药品ID</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">单价</td>
          <td class="tb_tl">库存数量</td>
          <td class="tb_tl">出厂地址</td>
          <td class="tb_tl">操作</td>
        </tr>
       
        	<logic:notEmpty name="list" scope="request">
	        	<iterate id="ele" name="list" scope="request">
	        		<tr bgcolor="#FFFFFF" >
	        			<td>1</td>
	        			<td>
	        				<a href="med_view.jsp">感冒胶囊A</a>
	        			</td>
	        			<td>2.5元</td>
	        			<td>3</td>
	        			<td>制药一厂</td>
	        			<td><a href="../sell/sell_add.jsp">购买</a></td>
	        		</tr>
	        	</iterate>
	        	<tr bgcolor="#FFFFFF" >
		        
		          <td colspan="7" align="right">
		          	<table border="0" width="100%">
		          		<tr>
		          			<td align="right">
			          			总记录数4 共 2 页  <a href="#">首页</a> <a href="#">上一页</a>
			          			1 <a href="#">下一页</a> <a href="#">尾页</a>
			          			<input type="text" name="" /><input type="submit" value="Go"/>
		          			</td>
		          		</tr>
		          	</table>
			      </td>
			    </tr>
        	</logic:notEmpty>
        	
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
