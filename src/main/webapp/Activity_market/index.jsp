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
width: 57%
}
.search{
position: absolute;
left: 230px;
top: 15px;
}
.comments{
position: absolute;
left: 212px;
top: 79px
}.info{
position: absolute;
left: 212px;
top:-18px
}.com{
position: absolute;
left: -52px;
top: 36px;
width: 357px;
height: 80px!important;
}
</style>
</head>
<body id="skin-blur-ocean">
	<script type="text/javascript">
	function closewin() {
		var index = parent.layer.getFrameIndex(window.name);
		parent.layer.close(index);
	}
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
var json=[];
function fresh2(name,info,levelname,info) {
	$(".sinfos").append("<tr><td width='120'>"+name+"</td><td width='120'>"+levelname+"</td><td width='120'>"+info+"</td></tr>");
    $(".ss").val(JSON.stringify(json))
}
function save() {
	$.ajax({
        //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            data: $('.form1').serialize(),		
            url: "../Activity_market/insert_json",//url
            success: function (result) {
            	closewin()
            },
        });
}
function del(id) {
	layer.confirm('确认删除吗？删除后不能恢复，谨慎操作',function(){
		$.ajax({
	          //几个参数需要注意一下
	              type: "POST",//方法类型
	              dataType: "json",//预期服务器返回的数据类型
	              url: "../Activity_market/delete_json?id="+id,//url
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
			<i class="glyphicon glyphicon-remove" style="margin-left: 654px" onclick="closewin()"></i>
			<form class="form1">
			<input type="hidden" class="ss" name="json">
			<input type="hidden" name="operator_id" value="${sessionScope.niki.id}">
			<input type="hidden" name="activity_id" value="${requestScope.activity_id}">
			<input type="hidden" name="date" value="${requestScope.date}">
			<div class="info">
			<label  style="text-align:center;margin-top: 37px;margin-left: -82px">详情</label>
			<textarea name="info" class="form-control m-b-10 com" placeholder="说点什么吧">${requestScope.list1.info}</textarea>
			</div>
			<div class="comments">
			<label  style="text-align:center;margin-top: 37px;margin-left: -82px">总结</label>
			<textarea name="comments" class="form-control m-b-10 com" placeholder="说点什么吧">${requestScope.list1.comments}</textarea>
			</div>
			<div style="position: absolute;top: 200px;left: 103px;">
			<label>学生信息</label> <button class="btn btn-sm btn-alt m-r-5" type="button" style="position: absolute;left: 57px;top:-3px; height: 23px;"
				onclick="openwin('../Activity_market/add1','400','250')">添加</button>
			</div>
			<div style="position: absolute;top: 225px;left: 103px;width: 60%;height:100px;  overflow: auto;">
			<table class="tile table table-bordered table-striped" id="user">
			<thead>
			<tr>
			<th>姓名</th>
			<th>等级</th>
			<th>详细信息</th>
			</tr>
			</thead>
			<tbody class="sinfos" >
			<c:forEach items="${requestScope.user}" var="r">
			<tr>
			<td>${r.name}</td>
			<td>${r.level_name}</td>
			<td>${r.stuinfo}</td>
			</tr>
			</c:forEach>
			</tbody>
			</table>
			</div>
			<div class="col-md-10" style="position: absolute;left: 401px;top: 330px">
				<button type="button" class="btn btn-alt m-r-5" onclick="save()">保存</button>
				<button type="button" class="btn btn-alt m-r-5" onclick="closewin()">返回</button>
			</div>
			</form>
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
</body>
</html>

