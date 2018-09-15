<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/format+zh_CN,default,corechart.I.js"></script>		
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>

<script type="text/javascript">
		gvChartInit();
		jQuery(document).ready(function(){

		jQuery('#myTable5').gvChart({
				chartType: 'PieChart',
				gvSettings: {
					vAxis: {title: 'No of players'},
					hAxis: {title: 'Month'},
					width: 650,
					height: 250
					}
			});
		});



		function paging1(num) {
            var cPages = $("input[name='page1']").val();
            if(num == 1){
                cPages = 1;
            }else
            if(num == 0){
                cPages--;
            }else
            if(num == 2){
                cPages++;
            }else{
                cPages = num;
            }
            $.ajax({
                url:"/homePagePaging",
                type:"post",
                data:{cPage:cPages,x:"w"},
                dataType:"json",
                success:function(data){
                    if(data.length != 0){
                        $("#wthings  tr").remove();
                        $(data).each(function (index,element) {
                            var str = "<tr><th>" + element.cliname + "</th><th>"+element.clitel;
                                str += "</th><th>"+element.clischool + "</th><th>未报名</th><th><a href='/hc/change3?cliid="
                                str += element.cliid;
                                str += "&cliname=";
                                str += element.cliname;
                                str += "&clitel=";
                                str += element.clitel;
                                str += "&clischool=";
                                str += element.clischool;
                                str += "&clicreater=";
                                str += element.clicreater;
                                str += "&cliresultor=";
                                str += element.cliresultor;
                                str += "&clicity=";
                                str += element.clicity;
                                str += "&center=";
                                str += element.center;
                                str += "&cliway=";
                                str += element.cliway;
                                str += "&clistatus=";
                                str += element.clistatus;
                                str += "&cliattitude=";
                                str += element.cliattitude;
                                str += "'>操作</a></th>";

                            $("#wthings").append(str);
                        })
                        var str1 = "<input type='hidden'name='page1' value="+cPages;
                        str1 += "/>";
                        $("input[name='page1']").val(cPages);
                        $("#wthings").append(str1);
                        $("#wthings1").html(cPages);
                    }
                }
            })
        }
        function paging2(num) {
            var cPages = $("input[name='page2']").val()
            if(num == 1){
                cPages = 1;
            }else
            if(num == 0){
                cPages--;
            }else
            if(num == 2){
                cPages++;
            }else{
                cPages = num;
            }
            $.ajax({
                url:"/homePagePaging",
                type:"post",
                data:{cPage:cPages,x:"y"},
                dataType:"json",
                success:function(data){
                    if(data.length != 0){
                        $("#ythings  tr").remove();
                        $(data).each(function (index,element) {
                            var str = "<tr><th>" + element.cliname + "</th><th>"+element.clitel;
                            str += "</th><th>"+element.clischool + "</th><th>已报名</th><th>";

                            $("#ythings").append(str);
                        })
                        var str1 = "<input type='hidden'name='page2' value="+cPages;
                        str1 += "/>";
                        $("input[name='page2']").val(cPages);
                        $("#ythings").append(str1);
                        $("#ythings1").html(cPages);
                    }
                }
            })
        }

</script>
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">工作台</a></li>
    </ul>
    </div>
    <div class="mainbox">
    <div class="mainleft">
    <div class="leftinfo">
    <div class="listtitle">数据统计</div>
    <div class="maintj">  
    <table id='myTable5'>
				<caption>近一年入学人数统计</caption>
				<thead>
					<tr>
						<th></th>
                        <c:forEach items="${homePage.cookiesList}" var="homePageCook">
                            <th>${homePageCook.months}</th>
                        </c:forEach>
                    </tr>
				</thead>
					<tbody>
					<tr>
						<th>2010</th>
                        <c:forEach items="${homePage.cookiesList}" var="homePageCook">
                            <td>${homePageCook.numbers}</td>
                        </c:forEach>
                    </tr>
				</tbody>
			</table>  
    </div>
    </div>
    <!--leftinfo end-->
    <div class="leftinfos">
    <div class="infoleft">
    
    <div class="listtitle">待办事项</div>
        <table class="tablelist" style="background-color: #FF6600">
            <thead>
            <tr>
                <th>姓名 </th>
                <th>联系电话</th>
                <th>毕业院校</th>
                <th>客户状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="wthings">
            <c:forEach items="${homePage.pageInfoBad.list}" var="client">
                <tr>
                    <th>${client.cliname}</th>
                    <th>${client.clitel}</th>
                    <th>${client.clischool}</th>
                    <th>未报名</th>
                    <th><a href="/hc/change3?cliid=${client.cliid}&cliname=${client.cliname}&clitel=${client.clitel}&clischool=${client.clischool}&clicreater=${client.clicreater}&cliresultor=${client.cliresultor}&clicity=${client.clicity}&center=${client.center}&cliway=${client.cliway}&clistatus=${client.clistatus}&cliattitude=${client.cliattitude}">操作</a></th>
                </tr>
                <input type="hidden" name="page1" value="${homePage.pageInfoBad.pageNum}"/>
            </c:forEach>
            </tbody>
        </table>
        <div style="float: left">
            共有${homePage.pageInfoBad.total}条记录
            第<div style="display:inline-block" id="wthings1">${homePage.pageInfoBad.pageNum}</div>/${homePage.pageInfoBad.pages}
        </div>
        <div style="float: right;">
            <a onclick="paging1(1)" href="javascript:;">首页</a>&nbsp;
            <a onclick="paging1(0)" href="javascript:;">上一页</a>&nbsp;
            <a onclick="paging1(2)" href="javascript:;">下一页</a>&nbsp;
            <a onclick="paging1(${homePage.pageInfoBad.pages})" href="javascript:;">尾页</a>&nbsp;

        </div>
    </div>
    <div class="inforight" style="margin-left: 7px">
    <div class="listtitle">已办事项</div>
        <table class="tablelist">
            <thead>
            <tr>
                <th>姓名</th>
                <th>联系电话</th>
                <th>毕业院校</th>
                <th>客户状态</th>
            </tr>
            </thead>
            <tbody id="ythings">
            <c:forEach items="${homePage.pageInfoOk.list}" var="client">
                <tr>
                    <th>${client.cliname}</th>
                    <th>${client.clitel}</th>
                    <th>${client.clischool}</th>
                    <th>已报名</th>
                </tr>
                <input type="hidden" name="page2" value="${homePage.pageInfoBad.pageNum}"/>
            </c:forEach>
            </tbody>
        </table>
        <div style="float: left">
            共有${homePage.pageInfoOk.total}条记录
            第<div id="ythings1" style="display: inline-block">${homePage.pageInfoOk.pageNum}</div>/${homePage.pageInfoOk.pages}
        </div>
        <div style="float: right;">
            <a onclick="paging2(1)" href="javascript:;">首页</a>&nbsp;
            <a onclick="paging2(0)" href="javascript:;">上一页</a>&nbsp;
            <a onclick="paging2(2)" href="javascript:;">下一页</a>&nbsp;
            <a onclick="paging2(${homePage.pageInfoOk.pages})" href="javascript:;">尾页</a>&nbsp;
        </div>
    </div>
    </div>
    </div>
        <!--mainleft end-->
    <div class="mainright">
    <div class="dflist">
    <div class="listtitle"><a href="/classManage/crm_notice" class="more1">更多</a>公告</div>
    <ul class="newlist">
        <c:forEach items="${homePage.noticeList}" var="notice" varStatus="n">
            <li><a  href="/classManage/look_notice?nid=${notice.nid}">${notice.ntitle}</a><b>${homePage.nTimeList[n.count-1]}</b></li>
        </c:forEach>
    </ul>        
    </div>
    <div class="dflist1">
    <div class="listtitle">信息统计</div>
    <ul class="newlist">
    <li>待跟进：${homePage.clientFollUp}</li>
    <li>本月未报名量：${homePage.clientW}</li>
    <li>本月已报名量：${homePage.clientY}</li>
    <li>本月报名率：${homePage.clientL}</li>
    </ul>        
    </div>
    </div>
    <!--mainright end-->
    </div>
</body>
<script type="text/javascript">
	setWidth();
	$(window).resize(function(){
		setWidth();	
	});
	function setWidth(){
		var width = ($('.leftinfos').width()-12)/2;
		$('.infoleft,.inforight').width(width);
	}
</script>
</html>
