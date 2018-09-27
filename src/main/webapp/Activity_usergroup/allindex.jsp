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
.dropdown-menu.open{
max-height: 100px!important; 
overflow: auto!important;
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
	              url: "../Activity_usergroup/delete_json?id="+id,//url
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
 			<label>当前活动</label> <select class="select one" id="select" myid="0"
				style="display: inline;">
				<c:forEach items="${requestScope.activity}" var="r" varStatus="v">
					<option value="${r.id}" >${r.name}</option>
				</c:forEach>
			</select>
			<div style="margin-top: 20px">
			<input type="button" class="form-control input-sm m-b-10" value="学生信息" style="width: 50%" id="user">
			<input type="button" class="form-control input-sm m-b-10" value="小组信息" id="group" style="width: 50%;margin-left:50%;margin-top: -30px">
			</div>
		</div>
	</div>
	<div style="height: calc(100% - 98px);">
	 <c:if test="${requestScope.myid==0}">
			<iframe src="../Activity_user/index?nowid=${requestScope.activity_id}" style="height: 100%;width: 100%;border: 0" id="iframe"></iframe>
	 </c:if>
	 <c:if test="${requestScope.myid==1}">
			<iframe src="../Activity_usergroup/index?nowid=${requestScope.activity_id}" style="height: 100%;width: 100%;border: 0" id="iframe"></iframe>
	 </c:if>
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
		
		$(function() {
			$("#select").on("change",function(){
				location.href="../Activity_usergroup/allindex?nowid="+$(this).val()+"&myid="+$(this).attr("myid")
			})
			
			$("#user").on("click",function(){
				$("#user").css("border","1px solid rgba(255, 255, 255, 1)");
				$("#group").css("border","1px solid rgba(255, 255, 255, 0.3)");
				$("#iframe").attr("src","../Activity_user/index?nowid=${requestScope.activity_id}");
				$("#select").attr("myid","0");
			})
			$("#group").on("click",function(){
				$("#user").css("border","1px solid rgba(255, 255, 255, 0.3)");
				$("#group").css("border","1px solid rgba(255, 255, 255, 1)");
				$("#iframe").attr("src","../Activity_usergroup/index?nowid=${requestScope.activity_id}");
				$("#select").attr("myid","1");
			})
			
			$(".filter-option.pull-left").text('${requestScope.activity_name.name}');
			$("#select").val(${requestScope.activity_id});
			$("#select").attr("myid","${requestScope.myid}")
			if(${requestScope.myid}==0){
				$("#user").css("border","1px solid rgba(255, 255, 255, 1)");
			}
			if(${requestScope.myid}==1){
				$("#group").css("border","1px solid rgba(255, 255, 255, 1)");
			}
			
			
		});
		
		
        </script>
</body>
</html>

