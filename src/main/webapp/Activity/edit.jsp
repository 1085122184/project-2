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
margin-left: 220px;
margin-top: 55px
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>新增活动<i class="glyphicon glyphicon-remove" style="margin-left: 414px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
		              <c:if test="${requestScope.subinfo!=null}">
		                <form class="row form-columned" id="form1" role="form" method="post" action="../Activity/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		              </c:if>
		              <c:if test="${requestScope.subinfo==null}">
						<form class="row form-columned" id="form1" role="form" method="post" action="../Activity/insert_json" autocomplete="off">
					  </c:if>
							<div class="col-md-4" style="margin-left: 50px">
							    <label>课程信息</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.classinfo}"
									placeholder="课程信息" id="niki" name="courseinfo" style="width: 130px;display: inline;">&nbsp;&nbsp;&nbsp;
								<label>计划安排</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.planinfo}"
									placeholder="计划安排" id="name" name="planinfo" style="width: 130px;display: inline;">
							</div>
							<div class="clearfix"></div>
							<br>
							
							<div class="col-md-4" style="margin-left: 50px">
							    <label>时间信息</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.dateinfo}"
									placeholder="时间信息" id="niki" name="dateinfo" style="width: 130px;display: inline;">&nbsp;&nbsp;&nbsp;
								<label>活动名称</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.name}"
									placeholder="计划安排" id="name" name="name" style="width: 130px;display: inline;">
							</div>
							<br>
							<div class="col-md-4 m-b-10" style="margin-left:64px">
							   <label>类&nbsp;&nbsp;&nbsp;&nbsp;型</label>
                              <select name="type" class="select one" style="display: inline;">
                                 <c:forEach items="${requestScope.types}" var="r" varStatus="v">
                                   <c:if test="${requestScope.subinfo.type==v.index}">
                                    <option value="${v.index}" selected="selected">${r}</option>
                                   </c:if>
                                   <c:if test="${requestScope.subinfo.type!=v.index}">
                                    <option value="${v.index}">${r}</option>
                                   </c:if>
                                 </c:forEach>
                               </select>
		                  </div>
		                  <div style="position: absolute;left: 79px;top: 191px;z-index: 100">
		                  <label>设&nbsp;&nbsp;&nbsp;&nbsp;施</label>
		                  
		                  
			<c:forEach items="${requestScope.option}" var="r" varStatus="v">
			<div style="display:inline-block; "><input type="checkbox" class="ch" myid="${v.index}"> ${r}</div>
			</c:forEach>
               <input type="hidden" name="optiones" class="form-control ids"> 
			
		</div>
		 <div class="col-md-12" style="margin-left: 50px;margin-top: 40px;z-index: 100">
							    <label style="position: absolute;left: 8px;top: 0px">注意事项</label>
								<textarea name="attention" class="form-control m-b-10" style="width: 301px;margin-left: 56px">${requestScope.subinfo.comments}</textarea>
							</div> 
							<div class="col-md-10" style="margin-left: 57px;margin-top: -34px">
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
		<script src="../admin-static/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
		<script type="text/javascript" src="../component/layer-v3.0.3/layer/layer.js"></script>
		<script type="text/javascript">
		$(function() {
			
			$(".iCheck-helper").on("click",function(){
				var ops=[];
				   $(".ch").each(function(){
					   if($(this).prop("checked")){
						   ops.push($(this).attr("myid"));
					   }
				   }); 
				   $(".ids").val(ops)
			 });
			
		})
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

