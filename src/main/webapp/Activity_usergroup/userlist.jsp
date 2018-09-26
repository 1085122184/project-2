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
margin-left: 49px;
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
#xing{
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

</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>新增用户<i class="glyphicon glyphicon-remove" style="margin-left: 543px" onclick="closewin()"></i></h6> 
              <div style="overflow:auto;height: 306px">
				<form class="form1" autocomplete="off" action="../Activity_usergroup/update_json?id=${requestScope.id}">
					<input type="hidden" class="form-control ids" name="ids">
					<table class="tile table table-bordered table-striped"
						style="width: 100%">
						<thead>
							<tr>
								<th>全选<input type="checkbox"></th>
								<th>姓名</th>
								<th>性别</th>
								<th>手机</th>
								<th>QQ</th>
								<th>学校</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.user2}" var="r">
								<tr>
									<td><input type="checkbox" class="ch" checked="checked" myid="${r.id}"></td>
									<td>${r.name}</td>
									<td>${r.sex_name}</td>
									<td>${r.tel}</td>
									<td>${r.qq}</td>
									<td>${r.sname}</td>
								</tr>
							</c:forEach>
							<c:forEach items="${requestScope.user1}" var="r">
								<tr>
									<td><input type="checkbox" class="ch" myid="${r.id}"></td>
									<td>${r.name}</td>
									<td>${r.sex_name}</td>
									<td>${r.tel}</td>
									<td>${r.qq}</td>
									<td>${r.sname}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-10">
			 <button type="button" class="btn btn-alt m-r-5" onclick="save()" style="position: absolute;left: 239px;top: -55px">保存</button>
			 <button type="button" class="btn btn-alt m-r-5" onclick="closewin()" style="position: absolute;left: 298px;top: -55px">返回</button>
		           </div>
				</form>
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
		<script src="../admin-static/js/select.min.js"></script> <!-- Custom Select -->
		<script type="text/javascript" src="../component/layer-v3.0.3/layer/layer.js"></script>
		 <script src="../admin-static/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->
		<script type="text/javascript">
		$(function() {
			var ids=[];
			   $(".ch").each(function(){
				   if($(this).prop("checked")){
					   ids.push($(this).attr("myid"));
				   }
			   }); 
			   $(".ids").val(ids);
			
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
			$(".btn-group.bootstrap-select.select.sex").append($("<label class='Type'><a id='xing'>*</a>类型</label>"));
			$(".btn-group.bootstrap-select.select.school").append($("<label class='Type'><a id='xing'>*</a>学院</label>"));
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

