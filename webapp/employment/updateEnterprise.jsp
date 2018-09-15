<%--
  Created by IntelliJ IDEA.
  User: 象拔蚌
  Date: 2018/9/8
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改企业信息</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".btn").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                form1.submit();
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });
            $("input[name='cancel']").click(function () {
                window.location.href="Enterprise";
            })
        });
    </script>
</head>

<body>

<%--<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">表单</a></li>
    </ul>
</div>--%>

<div class="formbody" >
    <div class="formtitle"><span>修改企业信息</span></div>
    <form action="doUpdateEnterprise" method="post" name="form1">
    <ul class="forminfo">
        <li><label>企业名称</label><input name="name" type="text" class="dfinput" value="${Enterprise.name}"/></li>
        <li><label>企业地点</label><input name="loc" type="text" class="dfinput" value="${Enterprise.loc}"/></li>
        <li><label>电话</label><input name="tel" type="text" class="dfinput" value="${Enterprise.tel}"></li>
        <li><label>是否是合作企业</label>
            <select name="isPartner" id="isPartner" style="line-height: 40px;margin-top: 10px;margin-left: 20px;width: 50px;border: 1px solid #CCCCCC">
                <option value="是">是</option>
                <option value="否">否</option>
            </select>
        </li>
        <li>
            <input name="sb" type="button" class="btn" value="确认修改" style="width: 100px; border-radius: 5px;margin-left: 80px;"/>
            <input name="cancel" type="button" class="btn" value="取消" style="width: 100px;border-radius: 5px; margin-left: 50px"/>
        </li>
    </ul>
        <input type="hidden" name="id" value="${Enterprise.id}">
    </form>
</div>
<div class="tip">
    <div class="tiptop"><span>提示信息</span><a></a></div>

    <div class="tipinfo">
        <span><img src="../images/ticon.png" /></span>
        <div class="tipright">
            <p>是否确认对信息的修改 ？</p>
            <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
    </div>

    <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
    </div>

</div>
</body>
</html>

