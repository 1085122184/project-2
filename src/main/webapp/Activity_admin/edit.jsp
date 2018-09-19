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
		 <h6>新增操作员<i class="glyphicon glyphicon-remove" style="margin-left: 420px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
		              <c:if test="${requestScope.subinfo!=null}">
		                <form class="row form-columned" id="form1" role="form" method="post" action="../Activity_admin/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		              </c:if>
		              <c:if test="${requestScope.subinfo==null}">
						<form class="row form-columned" id="form1" role="form" method="post" action="../Activity_admin/insert_json" autocomplete="off">
					  </c:if>
							<div class="col-md-4" style="margin-left: 50px">
							    <label>用户名</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.niki}"
									placeholder="你的登录名" id="niki" name="niki" style="width: 130px;display: inline;">&nbsp;&nbsp;&nbsp;
								<label>姓名</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.name}"
									placeholder="你的姓名" id="name" name="name" style="width: 130px;display: inline;">
							</div>
							<div class="clearfix"></div>
							<br>
							
							<div class="col-md-4" style="margin-left: 50px">
							    <label>手机号</label>
								<input type="tel" name="tel" class="form-control input-sm m-b-10" value="${requestScope.subinfo.tel}"
									placeholder="你的手机号码" style="width: 301px;display: inline;">
							</div>
							<br>
							<div class="col-md-4 m-b-10" style="margin-left: 50px">
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
                                <label style="position: absolute;left: 190px;top: 0px">权限</label>
                               <select name="power" class="select two" style="display: inline;">
                                 <c:forEach items="${requestScope.powers}" var="r" varStatus="v"> 
                                   <c:if test="${requestScope.subinfo.power==v.index}">
                                    <option value="${v.index}" selected="selected">${r}</option>
                                   </c:if>
                                   <c:if test="${requestScope.subinfo.power!=v.index}">
                                    <option value="${v.index}">${r}</option>
                                   </c:if>
                                 </c:forEach>  
                               </select>
                            </div>
 							<div class="col-md-12" style="margin-left: 50px">
							    <label style="position: absolute;left: 8px;top: 0px">备&nbsp;&nbsp;&nbsp;&nbsp;注</label>
								<textarea name="comments" class="form-control m-b-10" placeholder="说点什么吧" style="width: 301px;margin-left: 43px">${requestScope.subinfo.comments}</textarea>
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

