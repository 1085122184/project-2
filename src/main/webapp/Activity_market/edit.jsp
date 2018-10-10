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
.status.select.bootstrap-select.btn-group{
margin-left: 31px;
margin-top: 4px
}

.btn-alt{
    margin-left: 100px;
    margin-top: 56px
}
.bootstrap-select > .btn {
    width: 45%;
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>添加学生<i class="glyphicon glyphicon-remove" style="margin-left: 273px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
						<form class="row form-columned" id="form1" role="form" method="post" action="../Activity_market/insert_json1" autocomplete="off">
							<div class="col-md-4" style="margin-left: 80px;margin-top: -6px">
								<label>姓名</label>
								<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.name}"
									placeholder="姓名" id="name" name="name" style="width: 130px;display: inline;">
							<label style="position: absolute;left: 6px;top: 39px">状态</label>
                              <select name="level" class="select status" style="display: inline;">
                                 <c:forEach items="${requestScope.level}" var="r" varStatus="v">
                                    <option value="${v.index}">${r}</option>
                                 </c:forEach>
                               </select>
							  <div class="col-md-12" style="margin-left: 0px;margin-top: 20px">
					          <label style="position: absolute;left: -26px;top: -10px">相关信息</label>
					          <textarea name="info" id="four" class="form-control m-b-10 info" placeholder="说点什么吧" style="width:131px;height: 62px;position: absolute;left: 30px;top: -11px;z-index: 100 ">${requestScope.subinfo.comments}</textarea>
		    	            </div>
							
							</div>
							
							<div class="col-md-10" style="position: absolute;left: 100px">
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
	var name=$('#name').val();
	var level=$(".status").val();
	var levelname=$('.status option:selected').text();
	var info = $(".info").val();
	var s={"name":""+name+"","level":""+level+"","stuinfo":""+info+""};
	parent.json.push(s);
	parent.fresh2(name,level,levelname,info);
	closewin();
}



</script>
</body>
</html>

