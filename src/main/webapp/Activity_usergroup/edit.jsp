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
lable{

}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>新增用户<i class="glyphicon glyphicon-remove" style="margin-left: 530px" onclick="closewin()"></i></h6> 
		<div class="tab-container tile">
		   <ul class="nav tab nav-tabs">
               <li class="active"><a href="#home-b">小组信息</a></li>
               <li><a href="#profile-b">小组成员</a></li>
           </ul>
           <div class="tab-content">
              <div class="tab-pane active" id="home-b">
                <c:if test="${requestScope.subinfo!=null}">
		          <form class="row form-columned form1" id="form1" role="form" method="post" action="../Activity_user/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		        </c:if>
		        <c:if test="${requestScope.subinfo==null}">
				  <form class="row form-columned form1" id="form1" role="form" method="post" action="../Activity_user/insert_json" autocomplete="off">
				  <input type="hidden" name="operator_id" value="${sessionScope.niki.id}">
				</c:if>
                   <div class="col-md-4" style="margin-left: 90px">
					<label><a id="xing">*</a>小组名称</label>
					<input type="hidden" name="creatdate" value="${requestScope.date}">
					<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.niki}"
					    placeholder="你的登录名" id="one" name="niki" style="width: 130px;display: inline;">&nbsp;&nbsp;&nbsp;
					<label><a id="xing">*</a>姓名</label>
					<input type="text" class="form-control input-sm m-b-10" value="${requestScope.subinfo.name}"
						placeholder="你的姓名" id="one" name="name" style="width: 130px;display: inline;">
					</div>
                 <div class="clearfix"></div>
			     <br>
			       <div class="col-md-4 m-b-10" style="margin-left: 90px">
				     <label><a id="xing">*</a>性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
                     <select name="sex" class="select sex" id="one" style="display: inline;">
                       <c:forEach items="${requestScope.sex}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>
                     </select>
                     <select name="type" class="select type" id="one" style="display: inline;">
                       <c:forEach items="${requestScope.type}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>
                     </select>
                   </div>
                   <div class="col-md-12" style="margin-left: 95px">
					 <label style="position: absolute;left: 8px;top: 0px">备&nbsp;&nbsp;&nbsp;&nbsp;注</label>
					 <textarea id="one" name="comments" class="form-control m-b-10" placeholder="说点什么吧" style="width: 301px;margin-left: 43px">${requestScope.subinfo.comments}</textarea>
		    	   </div>
                  </form>
              </div>
              <div class="tab-pane" id="profile-b">
                 <form class="form1" autocomplete="off">
                  <input type="text" class="form-control ids">
                    <c:forEach items="${requestScope.user}" var="r">
                       <input type="checkbox" class="ch" myid="${r.id}">
                    </c:forEach>
                 </form>
              </div>
             </div>
         </div>
         <div class="col-md-10">
			 <button type="button" class="btn btn-alt m-r-5" onclick="save()" style="position: absolute;left: 133px;top: -62px">保存</button>
			 <button type="button" class="btn btn-alt m-r-5" onclick="closewin()" style="position: absolute;left: 194px;top: -62px">返回</button>
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
			$(".iCheck-helper").on("click",function(){
				var ids=[];
				   $(".ch").each(function(){
					   if($(this).prop("checked")){
						   ids.push($(this).attr("myid"));
					   }
				   }); 
				   $(".ids").val(ids);
			 }) 
			
			$(".btn-group.bootstrap-select.select.sex").append($("<label class='Type'><a id='xing'>*</a>类型</label>"));
			$(".btn-group.bootstrap-select.select.school").append($("<label class='Type'><a id='xing'>*</a>学院</label>"));
			 
			 
		})

		
		function closewin() {
	          var index = parent.layer.getFrameIndex(window.name);
	          parent.layer.close(index);
         }
         function save() {
	         if($("#one").val()==''){
		        layer.msg("请完善个人信息",{icon:2,time:1000});
	         }else if($("#two").val()==''){
		        layer.msg("请完善联系方式",{icon:2,time:1000});
	         }else if($("#three").val()==''){
		        layer.msg("请完善等级",{icon:2,time:1000});
	         }else if($("#four").val()==''){
		        layer.msg("请完善其他",{icon:2,time:1000});
	         }else if($("#search").val()==''){
		        layer.msg("请完善联系方式",{icon:2,time:1000});
	         }
	         
	         else{
	            $.ajax({
                  //几个参数需要注意一下
                   type: "POST",//方法类型
                   dataType: "json",//预期服务器返回的数据类型
                   url: $('#form1').attr("action"),//url
                   data: $('.form1').serialize(),
                   success: function (result) {
            	        parent.fresh();
            	        var index = parent.layer.getFrameIndex(window.name);
            	        parent.layer.close(index);
                    },
               });
	        }
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

