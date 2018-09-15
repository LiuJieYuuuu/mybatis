<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery.js"></script>

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
        <li><a href="#">客户管理</a></li>
    </ul>
</div>



<div class="formbody">
`
<div id="usual1" class="usual">
<div id="tab2" class="tabson">


        <ul class="seachform">
            <form action="client" method="post">
            <li><label>姓名</label><input name="cliname" type="text" class="scinput" /></li>
            <li>
                <label style="display: inline-block">所属分公司:</label>
                <div class="vocation" style="display: inline-block;margin-top: 5px">
                    <select class="select3" name="center" style="height: 20px">
                        <option value="上海分公司">上海分公司</option>
                        <option value="北京分公司">北京分公司</option>
                    </select>
                </div>
            </li>

            <li><label>状态：</label>
                <div class="vocation" style="display: inline-block;margin-top: 10px">
                    <select class="select3" name="clistatus" style="height: 20px">
                        <option value="1">未报名</option>
                        <option value="2">跟进已报名</option>
                    </select>
                </div>
            </li>


            <li><label>&nbsp;</label><input type="submit" class="scbtn" value="查询"/></li>
            </form>

            <li class="click"><span><img src="../images/t01.png" /></span><a href="/hc/addClient">添加</a></li>
        </ul>


        <table class="tablelist">
            <thead>
            <tr>
                <th>姓名</th>
                <th>电话</th>
                <th>院校</th>
                <th>创建人</th>
                <th>咨询师</th>
                <th>所在城市</th>
                <th>中心</th>
                <th>渠道</th>
                <th>状态</th>
                <th>意向</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="temp" items="${pageInfo.list}" varStatus="status">
                <tr>
                    <td>${temp.cliname}</td>
                    <td>${temp.clitel}</td>
                    <td>${temp.clischool}</td>
                    <td>${temp.clicreater}</td>
                    <td>${temp.cliresultor}</td>
                    <td>${temp.clicity}</td>
                    <td>${temp.center}</td>
                    <td>${temp.cliway}</td>
                    <c:choose>
                        <c:when test="${temp.clistatus == 1}"><td>未报名</td></c:when>
                        <c:otherwise>
                            <td>跟进报名</td>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${temp.cliattitude == 1}"><td>积极</td></c:when>
                        <c:otherwise>
                            <td>犹豫</td>
                        </c:otherwise>
                    </c:choose>
                    <td><a href="/hc/change3?cliid=${temp.cliid}&cliname=${temp.cliname}&clitel=${temp.clitel}&clischool=${temp.clischool}&clicreater=${temp.clicreater}&cliresultor=${temp.cliresultor}&clicity=${temp.clicity}&center=${temp.center}&cliway=${temp.cliway}&clistatus=${temp.clistatus}&cliattitude=${temp.cliattitude}&cliqq=${temp.cliqq}&clisex=${temp.clisex}">修改</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>




    </div>
</div>
</div>



    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum}&nbsp;</i>页</div>
        <ul class="paginList">
            <c:choose>
                <c:when test="${pageInfo.isFirstPage }">
                    <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
                </c:when>
                <c:otherwise>
                    <li class="paginItem"><a href="/hc/client?curPage=${pageInfo.prePage }"><span class="pagepre"></span></a></li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="i" begin="1" end="${pageInfo.pages }" step="1">
                <li class="paginItem"><a href="/hc/client?curPage=${i }">${i }</a></li>
            </c:forEach>

            <c:choose>
                <c:when test="${pageInfo.isLastPage }">
                    <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
                </c:when>
                <c:otherwise>
                    <li class="paginItem"><a href="/hc/client?curPage=${pageInfo.nextPage }"><span class="pagenxt"></span></a></li>
                </c:otherwise>
            </c:choose>

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
