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
<link href="../admin-static/css/form.css" rel="stylesheet">
<link href="../css/swiper.min.css" rel="stylesheet">
<style type="text/css">
.name{
position: absolute;
top: 8px;
left: 66px
}
.swiper-container {
	width: 100%;
	height: 100%;
	background-color: red;
}

</style>
</head>
<body style="color: black;">
		
		<div class="erer" style="height: 100%">
        <h6 class="dateinfo"></h6> 
        </div>
		
		
		
		<script src="../admin-static/js/jquery.min.js"></script>
		<script src="../admin-static/js/bootstrap.min.js"></script>
		<script src="../admin-static/js/scroll.min.js"></script>
		<script src="../admin-static/js/feeds.min.js"></script>
		<script src="../admin-static/js/functions.js"></script>
		<script src="../admin-static/js/select.min.js"></script>
		<script src="../js/swiper.min.js"></script> 
		<script type="text/javascript" src="../component/layer-v3.0.3/layer/layer.js"></script>
		<script type="text/javascript">
		var info = ${requestScope.info};
		var date = "${requestScope.dateinfo}"
		var group = ${requestScope.group};
		var user = ${requestScope.user};
		$(function() {
			$(".erer").append("<div class='swiper-container'><div class='swiper-wrapper'></div></div>");
			$(".dateinfo").append(date+"日程安排");
			$(".dateinfo").append("<i class='glyphicon glyphicon-remove' style='margin-left: 618px' onclick='closewin()'></i>");
			if(info.length==0){
				$(".swiper-wrapper").append("<div class='swiper-slide'><h1>暂无安排</h1></div>");
			}
			else {
					for (var i = 0; i < info.length; i++) {
						$(".swiper-wrapper")
								.append(
										"<div class='swiper-slide'><h1>"
												+ info[i].aname
												+ "</h1><br><h6 class='group"+i+"' id='group'></h6><br><h6>活动地点："
												+ info[i].roominfo
												+ "</h6><br><h6>第一场："
												+ info[i].time1 + "</h6><h6>第二场："
												+ info[i].time2 + "</h6><h6>第三场："
												+ info[i].time3 + "</h6><h6>第四场："
												+ info[i].time4 + "</h6><h6>第五场："
												+ info[i].time5 + "</h6><h6>第六场："
												+ info[i].time6 + "</h6></div>");
						if(group.length==0){
							  $("#group").html("暂无参赛小组")
						  }else{
						for (var j = 0; j < group.length; j++) {
							if (group[j].activity_id == info[i].activity_id) {
								$(".group" + i + "").append(
										"<br>参赛成员：" + group[j].uname + "<br>")
							}else{
								$(".group" + i + "").html("暂无参赛小组")
							}
							for(var m=0;m<user.length;m++){
								if(group[j].activity_id == info[i].activity_id&&group[j].uid==user[m].group_id){
									$(".group" + i + "").append(
											"" + user[m].name + "&nbsp;&nbsp;&nbsp;")
								}
							}
						}
					  }
					}
				}
				var mySwiper = new Swiper('.swiper-container', {})
			})
			function closewin() {
				var index = parent.layer.getFrameIndex(window.name);
				parent.layer.close(index);
			}
		</script>
</body>
</html>

