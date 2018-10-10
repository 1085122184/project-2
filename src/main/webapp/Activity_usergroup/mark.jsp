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
<link href="../admin-static/css/form.css" rel="stylesheet"><!-- button -->
<style type="text/css">
.sex.select.bootstrap-select.btn-group{
margin-left: 55px;
margin-top: -49px
}
.school.select.bootstrap-select.btn-group{
margin-left: 49px;
margin-top: -49px
}
.type.select.bootstrap-select.btn-group{
margin-left: 228px;
margin-top: -86px
}
.college.select.bootstrap-select.btn-group{
margin-left: 228px;
margin-top: -86px
}
.btn.btn-sm.form-control.dropdown-toggle{
width: 26.4%
}
.one.select.bootstrap-select.btn-group{
margin-left: 37px;
margin-top: -49px
}
.two.select.bootstrap-select.btn-group{
position:absolute;
top:-7px;
left:228px
}
.btn-alt{
margin-left: 220px;
margin-top: 55px
}
.layui-layer-content.layui-layer-padding{
color: red;
}

.Type{
margin-top: 6px;
margin-left: 13px
}
.dropdown-menu.inner{
width: 143px
}
.btn.btn-sm.btn-alt{
margin-left: 1px;
margin-top: -10px
}
label{
display:inline-block;
width: 52px
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>评分<i class="glyphicon glyphicon-remove" style="margin-left: 530px" onclick="closewin()"></i></h6> 
		<div class="table-responsive overflow">
           <div class="tab-content">
              <div class="tab-pane active" id="home-b">
              <form action="../Activity_usergroup/updatemark" class="form1">
              <input type="hidden" name="id" value="${requestScope.point[0].id}">
				  <table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
					    <th>分数一</th>
					    <th>分数二</th>
					    <th>分数三</th>
					    <th>分数四</th>
					    <th>分数五</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.point}" var="r">
						<tr>
						    <td><input class="form-control" value="${r.point1}" name="point1"></td>
						    <td><input class="form-control" value="${r.point2}" name="point2"></td>
						    <td><input class="form-control" value="${r.point3}" name="point3"></td>
						    <td><input class="form-control" value="${r.point4}" name="point4"></td>
						    <td><input class="form-control" value="${r.point5}" name="point5"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<table class="tile table table-bordered table-striped"
				style="width: 100%">
				<thead>
					<tr>
					    <th>分数六</th>
					    <th>分数七</th>
					    <th>分数八</th>
					    <th>分数九</th>
					    <th>分数十</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.point}" var="r">
						<tr>
						    <td><input class="form-control" value="${r.point6}" name="point6"></td>
						    <td><input class="form-control" value="${r.point7}" name="point7"></td>
						    <td><input class="form-control" value="${r.point8}" name="point8"></td>
						    <td><input class="form-control" value="${r.point9}" name="point9"></td>
						    <td><input class="form-control" value="${r.point10}" name="point10"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</form>
              </div>
             </div>
         </div>
         <div class="col-md-10">
			 <button type="button" class="btn btn-alt m-r-5" onclick="save()" style="position: absolute;left: 239px;top: -71px">保存</button>
			 <button type="button" class="btn btn-alt m-r-5" onclick="closewin()" style="position: absolute;left: 298px;top: -71px">返回</button>
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
		<script src="../admin-static/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
		<script type="text/javascript">
		$(function() {
			$(".iCheck-helper").eq(0).on("click",function(){
				if($(".icheckbox_minimal").attr("class")=='icheckbox_minimal hover checked'){
				    $(".icheckbox_minimal").addClass("checked");
					$(".ch").prop("checked","checked")
				}else{
					 $(".icheckbox_minimal").removeClass("checked");
					$(".ch").prop("checked","")
				}
				
			});
			$(".iCheck-helper").on("click",function(){
				var ids=[];
				   $(".ch").each(function(){
					   if($(this).prop("checked")){
						   ids.push($(this).attr("myid"));
					   }
				   }); 
				   $(".ids").val(ids);
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
                   url: $('.form1').attr("action"),//url
                   data: $('.form1').serialize(),
                   success: function (result) {
            	        parent.fresh();
            	        var index = parent.layer.getFrameIndex(window.name);
            	        parent.layer.close(index);
                    },
               });
         }
        $(function() {
        	$(".school").on("change",function(){
        		$(".btn-group.bootstrap-select.select.college ul li").empty();
        		$.ajax({
                    //几个参数需要注意一下
                     type: "POST",//方法类型
                     dataType: "json",//预期服务器返回的数据类型
                     url: "../Activity_user/select?school_id="+$(".school").val(),//url
                     success: function (result) {
              	        $.each(result,function(val,item){
              	          if(val==0){
              	        	  $(".college").append("<option value='"+item.id+"' style='display:none'>"+item.name+"</option>");
              	        	  $(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"' class='selected'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");}	
              	          else{$(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");
              	              $(".college").append("<option value='"+item.id+"' style='display:none'>"+item.name+"</option>")
              	          }
              	        })
                      },
                 });
        		
        	});
        	$(".btn-group.bootstrap-select.select.college  ul").on("click",function(){
       		var $txt=$("#s").text();
        	$(this).parents('.dropdown-menu').siblings('button').find('.pull-left').text($txt);
        	})
		})


</script>
</html>

