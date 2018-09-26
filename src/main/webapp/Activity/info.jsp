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
.name{
position: absolute;
top: 8px;
left: 66px
}

</style>
</head>
<body style="color: black;">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6 ><i class="glyphicon glyphicon-remove" style="margin-left: 736px" onclick="closewin()"></i></h6> 
		
		<div>
		<h1>${requestScope.time.name}</h1>
		<h4>活动时间：${requestScope.time.start_date}————${requestScope.time.end_date}</h4>
		<h4>参赛人员：<br>
		<c:forEach items="${requestScope.group}" var="r">
		                  ${r.uname}:
		                 <c:forEach items="${requestScope.user}" var="rr">
		                 <c:if test="${r.uid==rr.group_id}">${rr.name}</c:if>
		                 </c:forEach> <br>
		              </c:forEach>  </h4>
		<h4>注意事项：${requestScope.time.attention}</h4>
		<h4>详细时间安排：<br>
		第一场：${requestScope.time.time1} &nbsp;&nbsp;&nbsp;&nbsp;第二场：${requestScope.time.time2}<br>
		第三场：${requestScope.time.time3} &nbsp;&nbsp;&nbsp;&nbsp;第四场：${requestScope.time.time4}<br>
		第五场：${requestScope.time.time5} &nbsp;&nbsp;&nbsp;&nbsp;第六场：${requestScope.time.time6}
		</h4>
		<h4>活动地点：${requestScope.time.roominfo}</h4>
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
</script>
</body>
</html>

