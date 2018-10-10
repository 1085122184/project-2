<%@ page language="java" contentType="text/html; charset=utf-8"
	isELIgnored="false" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="format-detection" content="telephone=no">
        <meta charset="UTF-8">

        <meta name="description" content="Violate Responsive Admin Template">
        <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">
        <!-- CSS -->
        <link href="../admin-static/css/bootstrap.min.css" rel="stylesheet">
        <link href="../admin-static/css/animate.min.css" rel="stylesheet">
        <link href="../admin-static/css/font-awesome.min.css" rel="stylesheet">
        <link href="../admin-static/css/form.css" rel="stylesheet">
        <link href="../admin-static/css/calendar.css" rel="stylesheet">
        <link href="../admin-static/css/style.css" rel="stylesheet">
        <link href="../admin-static/css/icons.css" rel="stylesheet">
        <link href="../admin-static/css/generics.css" rel="stylesheet"> 
        <link href="../css/swiper.min.css" rel="stylesheet">
        <style type="text/css">
.swiper-container {
	width: 400px;
	height: 300px;
	background-color: red;
}
</style>
    </head>
    <body id="skin-blur-violate">
        <!-- Content -->
        <div class="erer">
        
        </div>
            <section id="content" class="container">
                <div class="col-md-8 clearfix">
                    <div id="calendar" class="p-relative p-10 m-b-20">
                    <ul class="calendar-actions list-inline clearfix">
                            <li class="p-r-0">
                                <a data-view="month" href="#" class="tooltips" title="Month">
                                    <i class="sa-list-month"></i>
                                </a>
                            </li>
                            <li class="p-r-0">
                                <a data-view="agendaWeek" href="#" class="tooltips" title="Week">
                                    <i class="sa-list-week"></i>
                                </a>
                            </li>
                            <li class="p-r-0">
                                <a data-view="agendaDay" href="#" class="tooltips" title="Day">
                                    <i class="sa-list-day"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                
                

                <!-- Add event -->
                <div class="modal fade" id="addNew-event" style="height: 500px">
                </div>
            </section>
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="../admin-static/js/jquery.min.js"></script> <!-- jQuery Library -->
        <script src="../admin-static/js/jquery-ui.min.js"></script> <!-- jQuery UI -->
        <!-- Bootstrap -->
        <script src="../admin-static/js/bootstrap.min.js"></script>
        <script type="text/javascript"
		src="../component/layer-v3.0.3/layer/layer.js"></script>
	<script type="text/javascript" src="../component/layui/layui.js"></script>
        <!-- UX -->
        <script src="../admin-static/js/scroll.min.js"></script> <!-- Custom Scrollbar -->
        
        <!--  Form Related -->
        <script src="../admin-static/js/validation/validate.min.js"></script> <!-- jQuery Form Validation Library -->
        <script src="../admin-static/js/validation/validationEngine.min.js"></script> <!-- jQuery Form Validation Library - requirred with above js -->
        
        <!-- Other -->
        
        <script src="../js/swiper.min.js"></script> <!-- 轮播 -->
        
        <!-- All JS functions -->
        <script src="../admin-static/js/functions.js"></script>
        <script src="../admin-static/js/calendar.min.js"></script> <!-- Calendar -->
        <script type="text/javascript">
        function openwin(url,w,h) {
		    layer.open({
		      type: 2,
		      shadeClose: false,
		      title:false,
		      closeBtn :0,
		      shade: false,
		      area: [w+'px', h+'px'],
		      content: [url , 'no']
		    });
		  }
        
        
        
             $(document).ready(function() {
                $('#calendar').fullCalendar({
                    header: {
                         center: 'title',
                         left: 'prev, next',
                         right: ''
                    },

                    selectable: true,
                    selectHelper: true,
                    editable: true,
                    allDayText:true,
                    events:${requestScope.list1},
                    
                    //On Day Select
                    select: function(start, end, allDay) {
                    	var month=parseInt(start.getMonth())+1;
                    	var dateinfo = start.getFullYear()+"-"+month+"-"+start.getDate();
                    	openwin("info?dateinfo="+dateinfo,'760','485')
                    },
                     
                    eventResize: function(event,dayDelta,minuteDelta,revertFunc) {
                        $('#editEvent').modal('show');

                        var info =
                            "The end date of " + event.title + "has been moved " +
                            dayDelta + " days and " +
                            minuteDelta + " minutes."
                        ;
                        
                        $('#eventInfo').html(info);
                
                
                        $('#editEvent #editCancel').click(function(){
                             revertFunc();
                        }) 
                    }
                });
                
                $('body').on('click', '#addEvent', function(){
                     var eventForm =  $(this).closest('.modal').find('.form-validation');
                     eventForm.validationEngine('validate');
                     
                     if (!(eventForm).find('.formErrorContent')[0]) {
                          
                          //Event Name
                          var eventName = $('#eventName').val();

                          //Render Event
                          $('#calendar').fullCalendar('renderEvent',{
                               title: eventName,
                               start: $('#getStart').val(),
                               end:  $('#getEnd').val(),
                               allDay: true,
                          },true ); //Stick the event
                          
                          $('#addNew-event form')[0].reset()
                          $('#addNew-event').modal('hide');
                     } 
                });   
            });    
            
            //Calendar views
            $('body').on('click', '.calendar-actions > li > a', function(e){
                e.preventDefault();
                var dataView = $(this).attr('data-view');
                $('#calendar').fullCalendar('changeView', dataView);
                
                //Custom scrollbar
                var overflowRegular, overflowInvisible = false;
                overflowRegular = $('.overflow').niceScroll();     
            });                    
            
       </script>
    </body>
</html>



