<%-- 
    Document   : index.jsp
    Created on : Apr 28, 2018, 12:05:12 AM
    Author     : Zatil Imani Ahwan
--%>

<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Notify | Event Announcement</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/one-page-wonder.css" rel="stylesheet">
        <link rel='stylesheet' href='css/fullcalendar.css' />

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Notify</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="masthead text-center text-black">
            <div class="masthead-content">
                <div class="container">
                    <div id='calendar'class="fc fc-bootstrap4 fc-ltr"></div>
                </div>
            </div>

        </header>

        <!-- Footer -->
        <footer class="py-5 bg-black">
            <div class="container">
                <p class="m-0 text-center text-white small">   
                    <%
                        Date date = new Date();
                        SimpleDateFormat ft = new SimpleDateFormat("yyyy");
                        out.print(" Copyright © Notify " + ft.format(date) + "</small>");
                    %>
                </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src='js/moment.min.js'></script>
        <script src='js/fullcalendar.js'></script>
        <script type="text/javascript">
            $(function () {

                // page is now ready, initialize the calendar...

                $('#calendar').fullCalendar({
                    eventSources: [

                        // your event source
                        {
                            events: [// put the array in the `events` property
                                {
                                    title: 'event1',
                                    start: '2010-01-01'
                                },
                                {
                                    title: 'event2',
                                    start: '2010-01-05',
                                    end: '2010-01-07'
                                },
                                {
                                    title: 'event3',
                                    start: '2010-01-09T12:30:00',
                                }
                            ],
                            color: 'black', // an option!
                            textColor: 'yellow' // an option!
                        }

                        // any other event sources...

                    ]

                })

            });
        </script>

    </body>

</html>

