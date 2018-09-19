<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="../admin-static/css/form.css" rel="stylesheet"><!-- button -->
<style type="text/css">
.one.select.bootstrap-select.btn-group{
margin-left: 42px;
margin-top: -49px
}

.two.select.bootstrap-select.btn-group{
position:absolute;
top:-7px;
left:220px
}
.btn-alt{
    margin-left: 100px;
    margin-top: 56px
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		<h6>新增操作员<i class="glyphicon glyphicon-remove" style="margin-left: 273px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
		  <c:if test="${requestScope.subinfo!=null}">
		   <form class="row form-columned" id="form1" role="form" method="post" action="../Activity_college/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		  </c:if>
		  <c:if test="${requestScope.subinfo==null}">
		   <form class="row form-columned" id="form1" role="form" method="post" action="../Activity_college/insert_json" autocomplete="off">
	      </c:if>
			<div class="col-md-4" style="margin-left: 50px;margin-top: 20px">
				<input type="hidden" name="school_id" value="${requestScope.schoolid}">
				<label>学院名称</label>
				<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.name}"
					placeholder="学院名称" id="name" name="name" style="width: 130px;display: inline;">
			</div>
			<div class="col-md-10">
				<button type="button" class="btn btn-alt m-r-5" onclick="save()">保存</button>
				<button type="button" class="btn btn-alt m-r-5" onclick="closewin()">返回</button>
			</div>
		  </form> 
		</div>
		<!-- Javascript Libraries -->
		<!-- jQuery -->
		<script src="../admin-static/js/jquery.min.js"></script>
		<!-- jQuery Library -->
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
		<script src="../admin-static/js/select.min.js"></script> <!-- Custom Select -->
		<script type="text/javascript" src="../component/layer-v3.0.3/layer/layer.js"></script>
		<script type="text/javascript">
function closewin() {
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}
function save() {
	  $.ajax({
          //几个参数需要注意一下
              type: "POST",//方法类型
              dataType: "json",//预期服务器返回的数据类型
              url: $('#form1').attr("action"),//url
              data: $('#form1').serialize(),
              success: function (result) {
            	  parent.fresh();
            	  var index = parent.layer.getFrameIndex(window.name);
            	  parent.layer.close(index);
              },
          });
}



</script>
</body>
</html>

