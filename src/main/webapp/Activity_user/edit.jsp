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
.dropdown-menu.open{
overflow: auto!important;
}
</style>
</head>
<body id="skin-blur-black">
        <!--<h6>修改信息<i class="glyphicon glyphicon-remove" style="margin-left: 430px" onclick="closewin()"></i></h6>-->
		 <h6>新增用户<i class="glyphicon glyphicon-remove" style="margin-left: 530px" onclick="closewin()"></i></h6> 
		<div class="tab-container tile">
		   <ul class="nav tab nav-tabs">
               <li class="active"><a href="#home-b">个人信息</a></li>
               <li><a href="#profile-b">联系方式</a></li>
               <li><a href="#messages-b">等级</a></li>
               <li><a href="#settings-b">其他</a></li>
           </ul>
           <div class="tab-content">
              <div class="tab-pane active" id="home-b">
                <c:if test="${requestScope.subinfo!=null}">
		          <form class="row form-columned form1" id="form1" role="form" method="post" action="../Activity_user/update_json?id=${requestScope.subinfo.id}" autocomplete="off">
		        </c:if>
		        <c:if test="${requestScope.subinfo==null}">
				  <form class="row form-columned form1" id="form1" role="form" method="post" action="../Activity_user/insert_json1" autocomplete="off">
				  <input type="hidden" name="operator_id" value="${sessionScope.niki.id}">
				</c:if>
                   <div class="col-md-4" style="margin-left: 90px">
					<label><a id="xing">*</a>用户名</label>
					<input type="hidden" name="creatdate" value="${requestScope.date}">
					<input type="hidden" name="activity_id" value="${requestScope.activity_id}">
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
                    <div class="col-md-4" style="margin-left: 90px">
						<label><a id="xing">*</a>手机号</label>
						<input type="text" id="two" name="tel" class="form-control input-sm m-b-10" value="${requestScope.subinfo.tel}"
							placeholder="你的手机号码" style="width: 308px;display: inline;">
					</div>
                    <div class="clearfix"></div>
			        <br>
                    <div class="col-md-4" style="margin-left: 95px">
						<label><a id="xing">*</a>QQ号</label>
						<input type="text" id="two" name="qq" class="form-control input-sm m-b-10" value="${requestScope.subinfo.qq}"
							placeholder="你的QQ号码" style="width: 309px;display: inline;">
					</div>
					<div class="clearfix"></div>
			     <br>
			       <div class="col-md-4 m-b-10" style="margin-left: 90px">
				     <label><a id="xing">*</a>学&nbsp;&nbsp;&nbsp;&nbsp;校</label>
                     <select name="school_id" id="two" class="select school" style="display: inline;">
                        <option value="0" selected="selected">--请选择--</option>
                        <c:forEach items="${requestScope.school}" var="r" > 
                        <c:if test="${requestScope.subinfo.sid==r.id}">
                        <option value="${r.id}" selected="selected">${r.name}</option>
                        </c:if>
                        <c:if test="${requestScope.subinfo.sid!=r.id}">
                        <option value="${r.id}">${r.name}</option>
                        </c:if>
                        </c:forEach>
                     </select>
                     
                     <select name="college_id" id="search" class="select college" style="display: inline;">
                       <c:forEach items="${requestScope.college}" var="r">
                          <option value="${r.id}">${r.name}</option>
                       </c:forEach>
                     
                     </select>
                   </div>
			        <br>
                    <div class="col-md-4" style="margin-left: 95px">
						<label><a id="xing">*</a>专业班级</label>
						<input type="text" id="two" name="classinfo" class="form-control input-sm m-b-10" value="${requestScope.subinfo.classinfo}"
							placeholder="你的专业班级" style="width: 290px;display: inline;">
					</div>
                 </form>
              </div>
              <div class="tab-pane" id="messages-b">
                  <form class="form1" autocomplete="off">
                   <div class="col-md-4 m-b-10" style="margin-left: 90px;margin-top: 65px">
                     <label>ylevel</label>
                     <select name="ylevel" id="three" class="select one" style="display: inline;">
                       <c:forEach items="${requestScope.ylevel}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>           
                     </select>
                     <label style="position: absolute;left: 193px;top: 0px">slevel</label>
                     <select name="slevel" id="three" class="select two" style="display: inline;">
                       <c:forEach items="${requestScope.slevel}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>
                     </select>
                   </div>
                   <div class="col-md-4 m-b-10" style="margin-left: 90px">
                     <label>glevel</label>
                     <select name="glevel" id="three" class="select one" style="display: inline;">
                       <c:forEach items="${requestScope.glevel}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>          
                     </select>
                     <label style="position: absolute;left: 193px;top: 0px">status</label>
                     <select name="status" id="three" class="select two" style="display: inline;">
                       <c:forEach items="${requestScope.status}" var="r" varStatus="v">
                         <option value="${v.index}">${r}</option>
                       </c:forEach>
                     </select>
                   </div>
                  </form>
              </div>
              <div class="tab-pane" id="settings-b">
                 <form class="form1" autocomplete="off">
                   <div class="col-md-12" style="margin-left: 95px;margin-top: 65px">
					 <label style="position: absolute;left: 8px;top: 0px">相关信息</label>
					 <textarea name="info" id="four" class="form-control m-b-10" placeholder="说点什么吧" style="width: 301px;margin-left: 55px;height:100px ">${requestScope.subinfo.comments}</textarea>
		    	   </div>
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
		<script type="text/javascript">
		function closewin(){
	          var index = parent.layer.getFrameIndex(window.name);
	          parent.layer.close(index);
         }
		$(function() {
			 $(".btn-group.bootstrap-select.select.sex").append($("<label class='Type'><a id='xing'>*</a>类型</label>"));
			 $(".btn-group.bootstrap-select.select.school").append($("<label class='Type'><a id='xing'>*</a>学院</label>"));
		})

		
		
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
              	        	  $(".btn-group.bootstrap-select.select.college").find(".filter-option.pull-left").text(item.name);
              	        	  $(".college").append("<option selected='selected' value='"+item.id+"' style='display:none'>"+item.name+"</option>");
              	        	  $(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"' class='selected'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");}	
              	          else{$(".btn-group.bootstrap-select.select.college ul").append("<li rel='"+val+"'><a tabindex='0' class style><span class='text' id='s'>"+item.name+"</span><i class='fa fa-check check-mark'></i></a></li>");
              	               $(".college").append("<option value='"+item.id+"' style='display:none'>"+item.name+"</option>");
              	               
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

