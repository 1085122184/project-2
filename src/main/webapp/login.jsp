﻿<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="../login/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="../login/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="../login/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="../login/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
if(self!=top){  
    //不是顶层页面  
      alert("您的登陆已超时，请重新登陆！");  
      top.location.href="../login.jsp";  
}
var a=0;
</script>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
  <div id="loginform" class="loginBox">
    <form class="form form-horizontal" action="../Activity_admin/login" method="post">
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
        <div class="formControls col-xs-8">
          <input id="" name="niki" type="text" placeholder="账户" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
        <div class="formControls col-xs-8">
          <input id="" name="pass" type="password" placeholder="密码" class="input-text size-L">
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input class="input-text size-L" name="code" type="text" placeholder="验证码" style="width:150px;">
          <img src="img/img.png" onclick="this.src='img/img.png?a='+(a++);"> </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <label for="online">
            <input type="checkbox" name="online" id="online" value="">
            使我保持登录状态</label>
        </div>
      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
        </div>
      </div>
    </form>
    <font color="red" size="2"> ${msg}</font>
  </div>
</div>
<div class="footer">Copyright 你的公司名称 by H-ui.admin v3.1</div>


<script>

</script>

</body>
</html>