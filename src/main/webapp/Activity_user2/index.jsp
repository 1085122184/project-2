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
    </head>
    <body id="skin-blur-violate">
            <!-- Content -->
            <section id="content" class="container">
                <div class="col-md-8 clearfix">
                    <div id="calendar" class="p-relative p-10 m-b-20">
                        <!-- Calendar Views -->
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
                <div class="modal fade" id="addNew-event">
                     <div class="modal-dialog">
                          <div class="modal-content">
                               <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Add an Event</h4>
                               </div>
                               <div class="modal-body">
                                    <form class="form-validation" role="form">
                                         <div class="form-group">
                                              <label for="eventName">Event Name</label>
                                              <input type="text" class="input-sm form-control validate[required]" id="eventName" placeholder="...">
                                         </div>
                                         
                                         <input type="hidden" id="getStart" />
                                         <input type="hidden" id="getEnd" />
                                    </form>
                               </div>
                               
                               <div class="modal-footer">
                                    <input type="submit" class="btn btn-info btn-sm" id="addEvent" value="Add Event">
                                    <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">Close</button>
                               </div>
                          </div>
                     </div>
                </div>
                
                <!-- Modal Resize alert -->
                <div class="modal fade" id="editEvent">
                     <div class="modal-dialog">
                          <div class="modal-content">
                               <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Edit Event</h4>
                               </div>
                               <div class="modal-body">
                                    <div id="eventInfo"></div>
                               </div>
                               
                               <div class="modal-footer">
                                    <button type="button" class="btn btn-info btn-sm" data-dismiss="modal">Okay</button>
                                    <button type="button" class="btn btn-info btn-sm" id="editCancel" data-dismiss="modal">Cancel</button>
                               </div>
                          </div>
                     </div>
                </div>
                
                <br/><br/>
            </section>
        
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="../admin-static/js/jquery.min.js"></script> <!-- jQuery Library -->

        <!-- Bootstrap -->
        <script src="../admin-static/js/bootstrap.min.js"></script>
        
        <!-- UX -->
        <script src="../admin-static/js/scroll.min.js"></script> <!-- Custom Scrollbar -->
        
        <!--  Form Related -->
        <script src="../admin-static/js/validation/validate.min.js"></script> <!-- jQuery Form Validation Library -->
        <script src="../admin-static/js/validation/validationEngine.min.js"></script> <!-- jQuery Form Validation Library - requirred with above js -->
        
        <!-- Other -->
        <script src="../admin-static/js/calendar.min.js"></script> <!-- Calendar -->
        
        
        <!-- All JS functions -->
        <script src="../admin-static/js/functions.js"></script>
        
        <script type="text/javascript">
            $(document).ready(function() {
                var date = new Date();
                var d = date.getDate();
                var m = date.getMonth();
                var y = date.getFullYear();
                $('#calendar').fullCalendar({
                    header: {
                         center: 'title',
                         left: 'prev, next',
                         right: ''
                    },

                    selectable: true,
                    selectHelper: true,
                    editable: true,
                    events: [
                        {
                            title: '的地方地方',//值
                            start: new Date(2018,08, 01),
                        },
                        {
                            title: 'dddddd',
                            start: new Date(y, m, 10),
                            allDay: true
                        },
                        {
                            title: 'Repeat Event',
                            start: new Date(y, m, 18),
                            allDay: true
                        },
                        {
                            title: 'Semester Exam',
                            start: new Date(y, m, 20),
                            end: new Date(y, m, 23)
                        },
                        {
                            title: 'Soccor match',
                            start: new Date(y, m, 5),
                            end: new Date(y, m, 6)
                        },
                        {
                            title: 'Coffee time',
                            start: new Date(y, m, 21),
                        },
                        {
                            title: 'Job Interview',
                            start: new Date(y, m, 5),
                        }
                    ],
                     
                    //On Day Select
                    select: function(start, end, allDay) {
                        $('#addNew-event').modal('show');   
                        $('#addNew-event input:text').val('');
                        $('#getStart').val(start);
                        $('#getEnd').val(end);
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



