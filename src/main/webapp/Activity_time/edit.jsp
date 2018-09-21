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
<link href="../admin-static/date/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
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
margin-left: 220px;
margin-top: 55px
}
.startdate{
width: 30%;
height: 28px
}
.add-on{
position: absolute;
left: 147px;
top: 49px;
width: 34px;
height: 28px
}
.datetimepicker.datetimepicker-dropdown-bottom-right.dropdown-menu{
background-color: gray;
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>新增操作员<i class="glyphicon glyphicon-remove" style="margin-left: 420px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
		              <c:if test="${requestScope.subinfo!=null}">
		                <form class="row form-columned" id="form1" role="form" method="post" action="../Activity_time/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		              </c:if>
		              <c:if test="${requestScope.subinfo==null}">
						<form class="row form-columned" id="form1" role="form" method="post" action="../Activity_time/insert_json" autocomplete="off">
					  </c:if>
					       <div class="input-append date form_datetime" data-date="2012-12-21T15:25:00Z" style="height: 200px">
					       <label>开始时间</label>
					       <input type="text" id="mirror_field" value="" class="form-control startdate" readonly />
                            <span class="col-md-10 add-on"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                          </div>
							<div class="col-md-10" style="margin-left: 57px;margin-top: -40px">
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

$(".form_datetime").datetimepicker({language:'zh-CN',format: 'yyyy-mm-dd hh:ii'});
   

</script>
</body>
</html>

