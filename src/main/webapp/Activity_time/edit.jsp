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
<link href="../admin-static/date/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="../admin-static/css/animate.min.css" rel="stylesheet">
<link href="../admin-static/css/font-awesome.min.css" rel="stylesheet">
<link href="../admin-static/css/style.css" rel="stylesheet">
<link href="../admin-static/css/icons.css" rel="stylesheet">
<link href="../admin-static/css/form.css" rel="stylesheet"><!-- button -->
<link href="../css/mydate.css" rel="stylesheet">
<style type="text/css">
.bootstrap-select{
    width: 65%;
}
.one.select.bootstrap-select.btn-group{
    margin-left: 384px;
    margin-top: -48px;
}
.btn-alt{
    margin-left: 220px;
    margin-top: -23px;
}
</style>
</head>
<body id="skin-blur-black">
		 <h6>时间安排<i class="glyphicon glyphicon-remove" style="margin-left: 584px" onclick="closewin()"></i></h6> 
		<div class="modal-footer">
		           <c:if test="${requestScope.subinfo!=null}">
		                <form class="row form-columned" id="form1" role="form" method="post" action="../Activity_time/update_json?id=${requestScope.date[0].id}" autocomplete="off">
		              </c:if>
		             <c:if test="${requestScope.subinfo==null}">
						<form class="row form-columned" id="form1" role="form" method="post" action="../Activity_time/insert_json1" autocomplete="off">
					  </c:if>
					       <input type="hidden" name="operator_id" value="${sessionScope.niki.id}">
					       <input type="hidden" name="activity_id" value="${requestScope.activity_id }">
					       
                           <div class="input-append date form_date end_date" >
					       <label style="margin-top: 29px;margin-left: 100px">时间信息</label>
					       <input type="text" id="mirror_field" class="form-control enddate" readonly name="dateinfo" data-date-format="yyyy-mm-dd" value="${requestScope.subinfo.dateinfo}"/>
                            <span class="col-md-10 add-on end"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
                           <label style="margin-left: 344px">状&nbsp;&nbsp;&nbsp;&nbsp;态</label>
                              <select name="status" class="select one" style="display: inline;">
                                 <c:forEach items="${requestScope.status}" var="r" varStatus="v">
                                   <c:if test="${requestScope.subinfo.status==v.index}">
                                    <option value="${v.index}" selected="selected">${r}</option>
                                   </c:if>
                                   <c:if test="${requestScope.subinfo.status!=v.index}">
                                    <option value="${v.index}">${r}</option>
                                   </c:if>
                                 </c:forEach>
                               </select>
                           <div class="input-append date form_time time1">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px">第一场</label>
					       <input type="text" id="mirror_field" class="form-control itime1" readonly name="time1" value="${requestScope.subinfo.time1}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
                           <div class="input-append date form_time time2">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px" data-date="T05.25.07Z">第二场</label>
					       <input type="text" id="mirror_field"  class="form-control itime1" readonly name="time2" value="${requestScope.subinfo.time2}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
                           <div class="input-append date form_time time3">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px">第三场</label>
					       <input type="text" id="mirror_field"  class="form-control itime1" readonly name="time3" value="${requestScope.subinfo.time3}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
                           <div class="input-append date form_time time4">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px">第四场</label> 
					       <input type="text" id="mirror_field"  class="form-control itime1" readonly name="time4" value="${requestScope.subinfo.time4}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
 							<div class="input-append date form_time time5">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px">第五场</label>
					       <input type="text" id="mirror_field" class="form-control itime1" readonly name="time5" value="${requestScope.subinfo.time5}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
                           <div class="input-append date form_time time6">
					       <label  style="text-align:center;margin-top: 29px;margin-left: 100px">第六场</label>
					       <input type="text" id="mirror_field" class="form-control itime1" readonly name="time6" value="${requestScope.subinfo.time6}"/>
                            <span class="col-md-10 add-on stime1"><i class="glyphicon glyphicon-th icon-th" style="font-size: 24px"></i></span>
                           </div>
 							<div class="roominfo">
					       <label  style="text-align:center;margin-top: 29px;margin-left: -106px">地点信息</label>
					       <input type="text"class="form-control iroominfo" name="roominfo" value="${requestScope.subinfo.roominfo}"/>
                           </div>
                           <div class="comments">
					       <label  style="text-align:center;margin-top: 37px;margin-left: -82px">备注</label>
					       <textarea name="comments" class="form-control m-b-10 com" placeholder="说点什么吧">${requestScope.subinfo.comments}</textarea>
                           </div>
                           
 							
 							
 							
 							<div class="col-md-10" style="margin-left: 166px;margin-top: 238px">
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
            	  if(result.status==1){
            		  parent.fresh();
                	  var index = parent.layer.getFrameIndex(window.name);
                	  parent.layer.close(index);
            	  }
            	  if(result.status==0){
            		  alert("暂无人员参赛，无法安排时间")
            	  }
              },
          });
}

$(".form_date").datetimepicker({
	language:'zh-CN',
	format: 'yyyy-m-d',
	 autoclose: true,
     todayBtn: true,
     minView: 2,
	});
$(".form_time").datetimepicker({
	language:'zh-CN',
        format: "hh时ii分",
        startView:1,
        autoclose: true,
 	});

</script>
</body>
</html>

