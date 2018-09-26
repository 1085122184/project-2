<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="format-detection" content="telephone=no">
<meta charset="UTF-8">

<meta name="description" content="Violate Responsive Admin Template">
<meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

<title>Super Admin Responsive Template</title>

<!-- CSS -->
<link href="../admin-static/css/bootstrap.min.css" rel="stylesheet">
<link href="../admin-static/css/animate.min.css" rel="stylesheet">
<link href="../admin-static/css/font-awesome.min.css" rel="stylesheet">
<link href="../admin-static/css/style.css" rel="stylesheet">
<link href="../admin-static/css/icons.css" rel="stylesheet">
<link href="../admin-static/css/form.css" rel="stylesheet">
<link href="../css/my.css" rel="stylesheet">
<!-- button -->
<style type="text/css">
.layui-layer.layui-layer-iframe.layui-layer-border.layer-anim{
    border: 1px solid white;
    height: auto;
    }
.btn-group.bootstrap-select.select.one{
width: 34%
}
.search{
position: absolute;
left: 230px;
top: 15px;
}
</style>
</head>
<body id="skin-blur-ocean">

	<script type="text/javascript">
function openwin(url,w,h) {
		    layer.open({
		      type: 2,
		      shadeClose: false,
		      title:false,
		      closeBtn :0,
		      shade: false,
		      area: [w+'px', h+'px'],
		      content: [url , 'no']
		    });
		  }
function fresh() {
	location.href="../Activity_time/index?activity_id="+${requestScope.activity_id};
}
function del(id) {
	layer.confirm('确认删除吗？删除后不能恢复，谨慎操作',function(){
		$.ajax({
	          //几个参数需要注意一下
	              type: "POST",//方法类型
	              dataType: "json",//预期服务器返回的数据类型
	              url: "../Activity_time/delete_json?id="+id,//url
	              success: function (result) {
	            	  fresh();
	              },
	          });
	});
}

</script>


	<!-- Table Striped -->
	<div class="block-area" id="tableStriped">
		<div class="table-responsive overflow">
          <form action="../Activity_time/index" class="activity" method="post">
			<label>当前活动</label> <select name="activity_id" class="select one" id="select"
				style="display: inline;">
				<c:forEach items="${requestScope.activity}" var="r" varStatus="v">
					<option value="${r.id}">${r.name}</option>
				</c:forEach>
			</select>
            <button class="btn btn-sm btn-alt m-r-5 search" type="submit">查询</button>
         </form>
			<button class="btn btn-sm btn-alt m-r-5" type="button"
				onclick="openwin('../Activity_time/add?activity_id=${requestScope.activity_id}','660','385')">新增</button>
				
				
			<c:if test="${fn:length(requestScope.list1)==0}"><div style="height: 100px">暂无时间安排</div></c:if>
			<c:if test="${fn:length(requestScope.list1)!=0}">
			<table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th>时间信息</th>
						<th>time1</th>
						<th>time2</th>
						<th>time3</th>
						<th>time4</th>
						<th>time5</th>
						<th>time6</th>
						<th>地点信息</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.list1}" var="r">
					<tr>
							<td>${r.dateinfo}</td>
							<td>${r.time1}</td>
							<td>${r.time2}</td>
							<td>${r.time3}</td>
							<td>${r.time4}</td>
							<td>${r.time5}</td>
							<td>${r.time6}</td>
							<td>${r.roominfo}</td>
							<td><a class="glyphicon glyphicon-pencil"
								href="javascript:;"
								onclick="openwin('../Activity_time/edit?id=${r.id}','500','300')">修改</a>
								<a class="glyphicon glyphicon-trash" href="javascript:;"
								onclick="del(${r.id})">删除</a>
								<a class="glyphicon glyphicon-trash" href="javascript:;"
								onclick="openwin('../Activity_college/addid?school_id=${r.id}','350','200')">新增学院</a></td>
					</tr>
					 </c:forEach>
				</tbody>
			</table>
			</c:if>
			<div id="demo1" class="col-md-4 m-b-10"></div>
		</div>
	</div>
	<!-- Javascript Libraries -->
	<!-- jQuery -->
	<script src="../admin-static/js/jquery.min.js"></script>
	<!-- jQuery Library -->
	<script type="text/javascript"
		src="../component/layer-v3.0.3/layer/layer.js"></script>
	<script type="text/javascript" src="../component/layui/layui.js"></script>
	<!-- Bootstrap -->
	<script src="../admin-static/js/bootstrap.min.js"></script>
	<!-- UX -->
	<script src="../admin-static/js/scroll.min.js"></script>
	<!-- Custom Scrollbar -->
	<!-- Other -->
	<script src="../admin-static/js/feeds.min.js"></script>
	<!-- News Feeds -->
	<!-- All JS functions -->
	<script src="../admin-static/js/functions.js"></script>
	<script src="../admin-static/js/select.min.js"></script>
	<!-- Custom Select -->
		<script type="text/javascript">
		
		layui.use('laypage', function(){
			  var laypage = layui.laypage;
			  
			  //执行一个laypage实例
			  laypage.render({ 
				  
				    elem: 'demo1'
				    ,count: ${requestScope.count} 
			  		,curr: ${requestScope.page} 
			  		,limit:15
				    ,layout: [ 'prev', 'page', 'next', 'count',, 'skip']
				    ,jump: function(obj,first){
				      if(!first){  	  
				    	  location.href="../Activity_time/index?pageno="+obj.curr+"&activity_id="+${requestScope.activity_id};
				        } 
				    }
				  });
			});
		$(function() {
			if(${fn:length(requestScope.list)==0&&requestScope.count!=0}){ 
				 var pageno = ${requestScope.page-1} 
				 location.href="../Activity_time/index?pageno="+pageno;
			}
			$(".filter-option.pull-left").text('${requestScope.activity_name.name}');
			$("#select").val(${requestScope.activity_id});
		});
		
		
        </script>
</body>
</html>

