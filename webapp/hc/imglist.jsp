<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script language="javascript">
        function change(wayid){

        }
        $(function(){
            //导航切换
            $(".imglist li").click(function(){
                $(".imglist li.selected").removeClass("selected")
                $(this).addClass("selected");
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">营销管理</a></li>
        <li><a href="#">渠道管理</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <li class="click"><span><img src="../images/t01.png" /></span><a href="addWay.jsp">添加</a></li>
        </ul>




    </div>


    <table class="imgtable">

        <thead>
        <tr>
            <th width="100px;">编号</th>
            <th>渠道名称</th>
            <th>渠道状态</th>
            <th>操作</th>

        </tr>
        </thead>

        <tbody>
        <c:forEach varStatus="status" var="temp" items="${wayList}">
            <tr>
                <td style="height: 40px">${status.index + 1}</td>
                <td>${temp.wayname}</td>
                <c:choose>
                    <c:when test="${temp.waystatus == 1}">
                        <td> 激活</td>
                    </c:when>
                    <c:otherwise>
                        <td>冻结</td>
                    </c:otherwise>
                </c:choose>

                    <c:choose>
                    <c:when test="${temp.waystatus == 1}">
                        <td><a href="/hc/change?wayid=${temp.wayid}&wayname=${temp.wayname}&waystatus=1">修改</a>
                            <a href="/hc/updateStatus?wayid=${temp.wayid}&waystatus=2">冻结</a></td>
                </c:when>
                <c:otherwise>
                    <td><a href="/hc/change?wayid=${temp.wayid}&wayname=${temp.wayname}&waystatus=2">修改</a>
                        <a href="/hc/updateStatus?wayid=${temp.wayid}&waystatus=1">激活</a></td>
                </c:otherwise>
                </c:choose>
                </td>
            </tr>
        </c:forEach>

        </tbody>

    </table>






    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
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

<script type="text/javascript">
    $('.imgtable tbody tr:odd').addClass('odd');
</script>
</body>
</html>
