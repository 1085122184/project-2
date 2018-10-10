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
<link href="../admin-static/date/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
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
    .select.checkwork{
    width: 100%
    }
    .bootstrap-select > .btn {
    width: 100%
    }
    .dropdown-menu{
    width: 100%
    }
    .btn-group.bootstrap-select.select.one{
width: 34%
}
.end_date{
position: absolute;
left: 240px;
top: -37px
}
.enddate{
    width: 300%;
    height: 31px;
    position: absolute;
    left: 47px;
    top: 53px;
}
.add-on.end{
    position: absolute;
    left: 140px;
    top: 57px;
}
.bootstrap-select > .btn {
    width: 46%;
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
	              url: "../Activity_checkwork/delete_json?id="+id,//url
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
		<form action="">
		<label>当前活动</label> <select class="select one" name="activity_id" id="select"
				style="display: inline;">
				<c:forEach items="${requestScope.activity}" var="r" varStatus="v">
					<option value="${r.id}">${r.name}</option>
				</c:forEach>
			</select>
			<!--  <div class="input-append date form_date end_date" >
					       <label style="margin-top: 56px;margin-left: -12px">时间信息</label>
					       <input type="text" id="mirror_field" class="form-control enddate" readonly name="date" data-date-format="yyyy-mm-dd"/>
                            <span class="col-md-10 add-on end"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>-->
                           
                           			<!-- <button class="btn btn-sm btn-alt m-r-5" type="button"
				onclick="search()" style="margin-left: 20px">查询</button> -->
				<i class="glyphicon glyphicon-remove" style="margin-left: 534px" onclick="closewin()"></i>
                 </form>          
			<c:if test="${fn:length(requestScope.list1)==0}"><div style="height: 100px">暂无数据</div></c:if>
			<c:if test="${fn:length(requestScope.list1)!=0}">
			<table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
						<th>用户姓名</th>
						<th>时间</th>
						<th width="16%">早</th>
						<th width="16%">中</th>
						<th width="16%">晚</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<form class="form1" action="">
					<c:forEach items="${requestScope.list1}" var="r">
						<tr>
						    <input type="hidden" value="${r.activity_id}" name="activity_id">
						    <input type="hidden" value="${sessionScope.niki.id}" name="operator_id">
						    <input type="hidden" value="${requestScope.date}" name="date">
							<td>${r.uname}</td>
							<td>${r.date}</td>
							<td>
                              ${r.check1_name}
                            </td>
							<td>
							   ${r.check2_name}
							</td>
							<td>
							  ${r.check3_name}
							</td>
							<td><a class="glyphicon glyphicon-pencil"
								href="javascript:;"
								onclick="openwin('../Activity_checkwork/edit?id=${r.id}','500','300')">修改</a>
								</td>
						</tr>
					  </c:forEach>
					  </form>
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
	<script src="../admin-static/date/js/bootstrap-datetimepicker.min.js"></script>
		<script src="../admin-static/date/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
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
		function closewin() {
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index);
		}
		$("#select").on("change",function(){
			location.href="../Activity_checkwork/index?activity_id="+$(this).val()
		})
		$(".form_date").datetimepicker({
			language:'zh-CN',
			format: 'yyyy-m-d',
			 autoclose: true,
		     todayBtn: true,
		     minView: 2,
			});
		
		
		layui.use('laypage', function(){
			  var laypage = layui.laypage;
			  //执行一个laypage实例
			  laypage.render({ 
				    elem: 'demo1'
				    ,count: ${requestScope.count} 
			  		,curr: ${requestScope.page} 
				    ,layout: [ 'prev', 'page', 'next', 'count']
				    ,jump: function(obj,first){
				      if(!first){
				    	  location.href="../Activity_checkwork/index?pageno="+obj.curr;
				        } 
				    }
				  });
			});
		$(function() {
			//$("#select").on("change",function(){
			//	location.href="../Activity_checkwork/index?activity_id="+$(this).val()
			//})
			$(".filter-option.pull-left").text('${requestScope.activity_name.name}');
			$("#select").val(${requestScope.activity_id});
			
		});
		
		
        </script>
</body>
</html>

