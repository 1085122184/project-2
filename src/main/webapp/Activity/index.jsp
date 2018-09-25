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
	location.replace(location.href);
}
function del(id) {
	layer.confirm('确认删除吗？删除后不能恢复，谨慎操作',function(){
		$.ajax({
	          //几个参数需要注意一下
	              type: "POST",//方法类型
	              dataType: "json",//预期服务器返回的数据类型
	              url: "../Activity/delete_json?id="+id,//url
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
		<!--  <form action="../Activity/index" method="post">	
			<button class="btn btn-sm btn-alt m-r-5" type="button"
				onclick="openwin('../Activity/add','500','300')">新增</button>
			<select class="select search" id="sselect" name="select">
				<option value="0">姓名查询</option>
				<option value="1">类型查询</option>
				<option value="2">权限查询</option>
				<option value="3">状态查询</option>
			</select> 
			<input class="btn btn-sm btn-alt sinput" type="text" id="search" name="txt">
			<select
				class="select search sinput1" id="search" name="txt"
				style="display: none; width: 100px" disabled="disabled">
				<option value="0">讲师</option>
				<option value="1">其他</option>
			</select>
		    <select
				class="select search sinput" id="search" name="txt"
				style="display: none; width: 100px" disabled="disabled">
				<option value="0">操作员</option>
				<option value="1">管理员</option>
			</select>
			<select
				class="select search sinput2" id="search" name="txt"
				style="display: none; width: 100px" disabled="disabled">
				<option value="0">在职</option>
				<option value="1">离职</option>
			</select>
			<button class="btn btn-sm btn-alt m-r-5" style="position: absolute;left: 380px"><i class="glyphicon glyphicon-search"></i>搜索</button>
			</form>
			-->	<button class="btn btn-sm btn-alt m-r-5" type="button"
				onclick="openwin('../Activity/add','500','300')">新增</button>
			<c:if test="${fn:length(requestScope.list)==0}"><div style="height: 100px">暂无数据</div></c:if>
			<c:if test="${fn:length(requestScope.list)!=0}">
			<table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th style="width: 20%">活动名称</th>
						<th style="width: 10%">活动时间</th>
						<th style="width: 18%">活动类型</th>
						<th style="width: 10%">小组数量</th>
						<th style="width: 15%">参赛人数</th>
						<th style="width: 10%">注意事项</th>
						<th style="width: 20%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.list}" var="r">
						<tr>
							<td>${r.name}</td>
							<td>${r.dateinfo}</td>
							<td>${r.type}</td>
							<td>${fn:length(r.groupidlist)-1}</td>
							<td>${r.count}</td>
							<td>${r.attention}</td>
							<td><a class="glyphicon glyphicon-pencil"
								href="javascript:;"
								onclick="openwin('../Activity/edit?id=${r.id}','500','300')">修改</a>
								<a class="glyphicon glyphicon-pencil"
								href="javascript:;"
								onclick="openwin('../Activity_time/add?activity_id=${r.id}','660','385')">时间安排</a>
								<a class="glyphicon glyphicon-trash" href="javascript:;"
								onclick="del(${r.id})">删除</a></td>
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
				    ,layout: [ 'prev', 'page', 'next', 'count',, 'skip']
				    ,jump: function(obj,first){
				      if(!first){
				    	  location.href="../Activity/index?pageno="+obj.curr;
				        } 
				    }
				  });
			});
		$(function(){
			$("#sselect").on("change",function(){
				$(".sinput").css("display","none").attr("disabled","disabled");
				$(".sinput1").css("display","none").attr("disabled","disabled");
				$(".sinput2").css("display","none").attr("disabled","disabled");
				if($("#sselect").val()==0){
					$(".sinput").eq(0).css("display","inline").removeAttr("disabled");
				}
				else if($("#sselect").val()==1){
					$(".sinput1").removeAttr("disabled");
					$(".sinput1").siblings('div.btn-group.bootstrap-select.select.search.sinput1').css("display","inline-block");
				}
				else if($("#sselect").val()==2){
					$(".sinput").eq(1).removeAttr("disabled");
					$(".sinput").eq(1).siblings('div.btn-group.bootstrap-select.select.search.sinput').css("display","inline-block");
				}
				else if($("#sselect").val()==3){
					$(".sinput2").removeAttr("disabled");
					$(".sinput2").siblings('div.btn-group.bootstrap-select.select.search.sinput2').css("display","inline-block");
				}
			});
			//var txt=${requestScope.txt};
			//var select=${requestScope.select};
			//$(".select.search").val(select);
			
			
			
			
    //	    $(".sselect").val(select);
	//		$($(".sinput")[select]).css("display","inline").removeAttr("disabled").val(txt);

			
			
			});
		
		$(function() {
			if(${fn:length(requestScope.list)==0&&requestScope.count!=0}){ 
				 var pageno = ${requestScope.page-1} 
				 location.href="../Activity/index?pageno="+pageno;
			}
		});
		
		
        </script>
</body>
</html>

