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
    
.btn-group.bootstrap-select.select.school{
    width: 500px;
    margin-left: 5px;
}    
.dropdown-menu.open{
overflow: auto!important;
}

.btn-group.bootstrap-select.select.college{
    width: 500px;
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
	              url: "../Activity_user/delete_json?id="+id,//url
	              success: function (result) {
	            	  fresh();
	              },
	          });
	});
}

</script>


	<!-- Table Striped -->
	<div class="block-area" id="tableStriped">
		<div class="table-responsive">
		<form action="../Activity_user/index" class="form1" method="post">
		<input type="hidden" name="nowid" value="${requestScope.activity_id}">
		<label>学校名称</label>
		    <select class="select school" id="school" name="school_id">
		    <option value="0">--请选择--</option>
		      <c:forEach items="${requestScope.school}" var="r">	    
			    <option value="${r.id}">${r.name}</option>	
		      </c:forEach>
			</select>
		<label id="lcollege" style="margin-left:-345px;margin-top: -25px">学院名称</label>
		<select name="college_id" id="college" class="select college" style="display: inline;"></select>
		<button class="btn btn-sm btn-alt m-r-5" type="button"
				onclick="openwin('../Activity_user/add?activity_id=${requestScope.activity_id}','610','400')">新增</button>
		<button class="btn btn-sm btn-alt m-r-5" style="position: absolute;left: 443px;top: 15px"><i class="glyphicon glyphicon-search"></i>搜索</button>
		
		</form>		
				
			<div>
			<c:if test="${fn:length(requestScope.list1)==0}">暂无数据</c:if>
			</div>
			<c:if test="${fn:length(requestScope.list1)!=0}">
			<table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>性别</th>
						<th>Type</th>
						<th>手机</th>
						<th>QQ</th>
						<th>学校</th>
						<th>学院</th>
						<th>专业班级</th>
						<th>意向</th>
						<th>关注</th>
						<th>状态等级</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.list1}" var="r">
						<tr>
							<td>${r.niki}</td>
							<td>${r.name}</td>
							<td>${r.sex_name}</td>
							<td>${r.type_name}</td>
							<td>${r.tel}</td>
							<td>${r.qq}</td>
							<td>${r.sname}</td>
							<td>${r.cname}</td>
							<td>${r.classinfo}</td>
							<td>${r.ylevel_name}</td>
							<td>${r.glevel_name}</td>
							<td>${r.slevel_name}</td>
							<td>${r.status_name}</td>
							<td><a class="glyphicon glyphicon-pencil"
								href="javascript:;"
								onclick="openwin('../Activity_user/edit?id=${r.id}&activity_id=${requestScope.activity_id}','610','400')">修改</a>
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
				    ,layout: [ 'prev', 'page', 'next', 'count','skip']
				    ,jump: function(obj,first){
				      if(!first){
				    	  location.href="../Activity_user/index?pageno="+obj.curr+"&activity_id="+${requestScope.activity_id};
				        } 
				    }
				  });
			});
		$(function() {
			//$(".btn-group.bootstrap-select.select.college").css("display","none");
			$("#school").on("change",function(){
				$(".btn-group.bootstrap-select.select.college ul li").empty();
				$.ajax({
                     type: "POST",
                     dataType: "json",
                     url: "../Activity_user/select?school_id="+$(".school").val(),//url
                     success: function (result) {
              	        $.each(result,function(val,item){
              	          if(val==0){
              	        	  $(".btn-group.bootstrap-select.select.college").find(".filter-option.pull-left").text(item.name);
              	        	  $(".college").append("<option value='"+item.id+"' style='display:none'>"+item.name+"</option>");
              	        	  $(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"' class='selected'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");}	
              	          else{$(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");
              	               $(".college").append("<option value='"+item.id+"' style='display:none'>"+item.name+"</option>");
              	               
              	          }
              	        })
                      },
                 });
			})
				$("#school").val(${requestScope.svalue});
				$(".btn-group.bootstrap-select.select.school").find(".filter-option.pull-left").text('${requestScope.sname.name}');
				
				$("#college").val(${requestScope.cvalue});
				$(".btn-group.bootstrap-select.select.college").find(".filter-option.pull-left").text('${requestScope.cname.name}');
        	
			
			if(${fn:length(requestScope.list)==0&&requestScope.count!=0}){ 
				 var pageno = ${requestScope.page-1} 
				 location.href="../Activity_user/index?pageno="+pageno+"&activity_id="+${requestScope.activity_id};
			}
		});
		
		
        </script>
</body>
</html>

