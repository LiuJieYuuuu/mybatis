<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>所有药品</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function blurQuery(){
			var form = document.forms["queryForm"];
			if(form.elements["keyWord"].value == ""){
				alert("查询内容为空");
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
					·当前位置：进货/需求管理&gt;&gt; 查看进货
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="50">
					<br>
      <table border="1" align="center" width="700" cellpadding="1" cellspacing="1" bgcolor="#036500" bordercolor="#FFFFF">
        <tr bgcolor="#FFFFFF">
          <td colspan="9" align="center">
          		<table border="0" width="100%">
          			<tr>
          				<td align="left">
          					<form name="queryForm" action="" method="post" onsubmit="return blurQuery();" class="blur_form">
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
          <td class="tb_tl">删除</td>
          <td class="tb_tl">药品ID</td>
          <td class="tb_tl">药品编码</td>
          <td class="tb_tl">药品名称</td>
          <td class="tb_tl">单价</td>
          <td class="tb_tl">库存数量</td>
          <td class="tb_tl">需求数量</td>
          <td class="tb_tl">出厂地址</td>
          <td class="tb_tl">操作</td>
        </tr>
        
        	
       		<form action="" method='post'>
        	<iterate id="ele" name="list" scope="request">
        		<tr bgcolor="#FFFFFF" >
        			<td>
        				<input type="hidden" name="allId" value='<bean:write name="ele" property="id" />'>
						<input type="checkbox" name="selectedId" value='<bean:write name="ele" property="id" />'>
					</td>
        			<td>1</td>
        			<td>abc001</td>
        			<td>
        				<a href="../baseData/med_view.jsp">感冒胶囊A</a>
        			</td>
        			<td>2.5元</td>
        			<td>3</td>
        			<td>5</td>
        			<td>制药一厂</td>
        			<td>
        				<a href="req_save.jsp">修改</a>
        				<a href="req_list.jsp">进货完成</a>
        			</td>
        		</tr>
        	</iterate>
        	<tr bgcolor="#FFFFFF" >
	        
	          <td colspan="9" align="right">
	          	<table border="0" width="100%">
	          		<tr>
	          			<td>
	          				<input type="button" name="command" value="删除所选"/>
		      				<input type="button" name="command" value="删除全部"/>
	          			</td>
	          			</form>
	          			<td align="right">
		          			总记录数8 共 3 页 <a href="#">首页</a> <a href="#">上一页 1</a> 
       						<a href="#">下一页</a> <a href="#">尾页  </a>
       						<input type="text" name="" style=" width: 35px;"/><input type="button" value="Go"/>
						    
	          			</td>
	          		</tr>
	          	</table>
		      </td>
		    </tr>
       	
        	<logic:empty name="list" scope="request">
        	<tr bgcolor="#FFFFFF" >
	          <td colspan="9" align="center">
				没有找到信息
			  </td>
	        </tr>
        	</logic:empty>
       
       
      </table>
      <br>
      </td>
			</tr>
		</table>
	</div>
  </body>
</html>
