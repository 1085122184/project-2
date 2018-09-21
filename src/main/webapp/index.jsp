<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <title>WIN10-UI</title>
    <link rel='Shortcut Icon' type='image/x-icon' href='../img/windows.ico'>
    <script type="text/javascript" src="../js/jquery-2.2.4.min.js"></script>
    <link href="../css/animate.css" rel="stylesheet">
    <script type="text/javascript" src="../component/layer-v3.0.3/layer/layer.js"></script>
    <link rel="stylesheet" href="../component/font-awesome-4.7.0/css/font-awesome.min.css">
    <link href="../css/default.css" rel="stylesheet">
    <script type="text/javascript" src="../js/win10.js"></script>
    <style>
    .win10-btn-change-url{
    display: none!important;
    }
        * {
            font-family: "Microsoft YaHei", 微软雅黑, "MicrosoftJhengHei", 华文细黑, STHeiti, MingLiu
        }

        /*磁贴自定义样式*/
         .win10-block-content-text {
             line-height: 44px;
             text-align: center;
             font-size: 16px;
         }
    </style>
    <script>
        Win10.onReady(function () {

            //设置壁纸
            Win10.setBgUrl({
                main: '../admin-static/img/beijing.jpg',
                mobile: '../admin-static/img/beijing.jpg',
            });

            Win10.setAnimated([
                'animated flip',
                'animated bounceIn',
            ], 0.01);
        });
    </script>
</head>
<body>
<div id="win10">
    <div class="desktop">
        <div id="win10-shortcuts" class="shortcuts-hidden">
            <!-- 桌面图标 -->
				<div class="shortcut" onclick="Win10.openUrl('../Activity_admin/index','<img class=\'icon\' src=\'../img/icon/admin.png\'></img>管理员列表',[['47%','60%'],['100px','380px']])">
					<img class="icon"
						src="../img/icon/admin.png" />
					<div class="title">管理员</div>
				</div>
				
				<div class="shortcut" onclick="Win10.openUrl('../Activity_user/index','<img class=\'icon\' src=\'../img/icon/admin.png\'></img>用户列表')">
					<img class="icon"
						src="../img/icon/admin.png" />
					<div class="title">用户</div>
				</div>
				
				<div class="shortcut" onclick="Win10.openUrl('../Activity_school/index','<img class=\'icon\' src=\'../img/icon/admin.png\'></img>学校列表',[['55%','58%'],['100px','480px']])">
					<img class="icon"
						src="../img/icon/admin.png" />
					<div class="title">学校</div>
				</div>

                <div class="shortcut" onclick="Win10.openUrl('../Activity/index','<img class=\'icon\' src=\'../img/icon/admin.png\'></img>活动列表',[['47%','60%'],['100px','380px']])">
					<img class="icon"
						src="../img/icon/admin.png" />
					<div class="title">活动</div>
				</div>

			</div>
        <div id="win10-desktop-scene"></div>
    </div>
    <div id="win10-menu" class="hidden" style="width: 300px">
        <div class="list win10-menu-hidden animated animated-slideOutLeft">
            <div class="item" onclick="Win10.exit()">
                <i class="black icon fa fa-power-off fa-fw"></i><span class="title">关闭</span>
            </div>
        </div>
        <div id="win10-menu-switcher"></div>
    </div>
    <div id="win10_command_center" class="hidden_right">
        <div class="title">
            <h4 style="float: left">消息中心 </h4>
            <span id="win10_btn_command_center_clean_all">全部清除</span>
        </div>
        <div class="msgs"></div>
    </div>
    <div id="win10_task_bar">
        <div id="win10_btn_group_left" class="btn_group">
            <div id="win10_btn_win" class="btn"><span class="fa fa-windows"></span></div>
            <div class="btn" id="win10-btn-browser"><span class="fa fa-internet-explorer"></span></div>
        </div>
        <div id="win10_btn_group_middle" class="btn_group"></div>
        <div id="win10_btn_group_right" class="btn_group">
            <div class="btn" id="win10_btn_time"></div>
            <div class="btn" id="win10_btn_command"><span id="win10-msg-nof" class="fa fa-comment-o"></span></div>
            <div class="btn" id="win10_btn_show_desktop"></div>
        </div>
    </div>
</div>
</body>
</html>