<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Calendar - T-Sync</title>

  <x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Calendar of Activities') }}
        </h2>
    </x-slot>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="../plugins/fullcalendar/main.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <style>
    /* Style the scrollbar */
    #external-events::-webkit-scrollbar {
        width: 4px; /* Width of the scrollbar */

    }

    /* Track */
    #external-events::-webkit-scrollbar-track {
        background: #f1f1f1; /* Color of the track */
    }

    /* Handle */
    #external-events::-webkit-scrollbar-thumb {
        background: #888; /* Color of the scroll thumb */
    }

    /* Handle on hover */
    #external-events::-webkit-scrollbar-thumb:hover {
        background: #555; /* Color of the scroll thumb on hover */
    }

</style>

</head>
<body>
<div class="wrapper">
    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/sync-removebg-preview.ico" alt="AdminLTELogo" height="200" width="200">
  </div>

  <!-- Content Wrapper. Contains page content -->
  <div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content" style="margin-left: 5%; margin-right: 5%; margin-top: 2%; background: white;">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="sticky-top mb-3">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Draggable Events</h4>
                </div>
                <div class="card-body">
                  <!-- the events -->
                  <div id="external-events" style="height: 100px; overflow-y: auto;">
                    @foreach($events as $event)
                    <div class="external-event" style="background-color: {{ $event->color }};">{{$event->event_title}}</div>
                    @endforeach
                  </div>
                    <div class="checkbox">
                      <label for="drop-remove">
                        <input type="checkbox" id="drop-remove">
                        remove after drop
                      </label>
                    </div>
                  
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Create Event</h3>
                </div>
                <div class="card-body">
                  <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                    <ul class="fc-color-picker" id="color-chooser">
                      <li><a class="text-primary" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-warning" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-success" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-danger" href="#"><i class="fas fa-square"></i></a></li>
                      <li><a class="text-muted" href="#"><i class="fas fa-square"></i></a></li>
                    </ul>
                  </div>
                  <!-- /btn-group -->
                  <div class="input-group">
                    <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                    <div class="input-group-append">
                      <button id="add-new-event" type="button" class="btn btn-primary">Add</button>
                    </div>
                    <!-- /btn-group -->
                  </div>
                  <!-- /input-group -->
                </div>
              </div>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary">
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
                <div id="calendar"></div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="background:#9c9a9a;">

    <div class="footer-legal">
    <div class="container">

    <div class="row justify-content-between">
    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
    <footer class="container">
    <p style="color: #3e556f;">&copy; 2024 T-Sync. &middot; <a href="#" style="color: #3e556f;">Privacy</a> &middot; <a href="#" style="color: #3e556f;">Terms</a></p>
    </footer>

    <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/herobiz-bootstrap-business-template/ -->
    </div>

    </div>

    <div class="col-md-6">
    <div class="social-links mb-3 mb-lg-0 text-center text-md-end">
    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
    <a href="#" class="github"><i class="bi bi-github"></i></a>
    </div>

    </div>

    </div>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- jQuery UI -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- fullCalendar 2.2.5 -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/fullcalendar/main.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {

    /* initialize the external events
     -----------------------------------------------------------------*/
    function ini_events(ele) {
      ele.each(function () {

        // create an Event Object (https://fullcalendar.io/docs/event-object)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    ini_events($('#external-events div.external-event'))

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()

    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendar.Draggable;

    var containerEl = document.getElementById('external-events');
    var checkbox = document.getElementById('drop-remove');
    var calendarEl = document.getElementById('calendar');

    // initialize the external events
    // -----------------------------------------------------------------

    new Draggable(containerEl, {
      itemSelector: '.external-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText,
          backgroundColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          borderColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          textColor: window.getComputedStyle( eventEl ,null).getPropertyValue('color'),
        };
      }
    });

    
    var calendar = new Calendar(calendarEl, {
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },
      themeSystem: 'bootstrap',
      // Fetch events from the database
      events: function (fetchInfo, successCallback, failureCallback) {
                $.ajax({
                    url: '{{ route('events') }}',
                    dataType: 'json',
                    
                    success: function (response) {
                        var events = response.map(function (event) {
                            return {
                                id: event.id,
                                title: event.event_title,
                                start: event.event_date,
                                backgroundColor: event.color
                            };
                        });
                        successCallback(events);
                    },
                    error: function (xhr, status, error) {
                        failureCallback(xhr);
                    }
                });
            },
      editable: true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
      drop: function(info) {
    // is the "remove after drop" checkbox checked?
    if (checkbox.checked) {
        // if so, remove the element from the "Draggable Events" list
        info.draggedEl.parentNode.removeChild(info.draggedEl);
        // Remove the event from the database
        removeEventFromDatabase(info.draggedEl.innerText);
    } else {
        // Event drop handling
        var droppedEventTitle = info.draggedEl.innerText;
        var eventDate = info.dateStr; // This gets the date where the event is dropped
        var eventData = {
            event_title: droppedEventTitle,
            event_date: eventDate,
            color: info.draggedEl.style.backgroundColor // Get background color of the dropped event
        };

        // Log the eventData to check if it's properly captured
        console.log(eventData);

        saveEventToDatabase(eventData);

    }
}

    });

    calendar.render();
    // $('#calendar').fullCalendar()

    // Your additional script
    $(document).ready(function() {
      // Color chooser button
     // Color chooser button
    $('#color-chooser > li > a').click(function (e) {
        e.preventDefault();
        // Get the background color of the clicked color picker
        var color = $(this).find('i').css('color');
        // Update currColor with the selected color
        currColor = color;
        // Add color effect to button
        $('#add-new-event').css({
            'background-color': currColor,
            'border-color': currColor
        });
    });

    // Fetch event titles from the database and populate #external-events container
    $.ajax({
        type: 'GET',
        url: '{{ route('events') }}',
        success: function(response) {
            response.forEach(function(event) {
                var eventDiv = $('<div />').addClass('external-event').text(event.event_title);
                if (event.color) {
                    eventDiv.css('background-color', event.color); // Set background color if available
                }
                $('#external-events').append(eventDiv);
            });
        },
        error: function(xhr, status, error) {
            console.error(xhr.responseText);
        }
    });
});

$('#add-new-event').click(function(e) {
    e.preventDefault();
    var val = $('#new-event').val();
    if (val.length == 0) {
        return;
    }

    var csrfToken = $('meta[name="csrf-token"]').attr('content');

    $.ajax({
        type: 'POST',
        url: '{{ route('calendar') }}',
        data: {
            event_title: val,
            color: currColor // Include the selected color in the data sent to the server
        },
        headers: {
            'X-CSRF-TOKEN': csrfToken
        },
        success: function(response) {
            if (response.success) {
                console.log("Event added successfully!");
            } else {
                console.error("Failed to add event.");
            }
        },
        error: function(xhr, status, error) {
            console.error(xhr.responseText);
        }
    });

    var event = $('<div />').addClass('external-event').text(val);
    if (currColor) {
        event.css('background-color', currColor); // Apply selected color to the event
    }
    $('#external-events').prepend(event);

    // Add draggable functionality
    ini_events(event);

    $('#new-event').val('');
});

// Function to save event data to the database
function saveEventToDatabase(eventData) {
            var csrfToken = $('meta[name="csrf-token"]').attr('content');

            $.ajax({
                type: 'POST',
                url: '{{ route('calendar') }}',
                data: eventData,
                headers: {
                    'X-CSRF-TOKEN': csrfToken
                },
                success: function (response) {
                    if (response.success) {
                        console.log("Event added successfully!");
                        
                        calendar.refetchEvents();
                    } else {
                        console.error("Failed to add event.");
                    }
                },
                error: function (xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        }
        // Function to remove event from the database
function removeEventFromDatabase(eventTitle) {
    var csrfToken = $('meta[name="csrf-token"]').attr('content');

    $.ajax({
        type: 'POST',
        url: '{{ route('remove_event') }}',
        data: { event_title: eventTitle },
        headers: {
            'X-CSRF-TOKEN': csrfToken
        },
        success: function(response) {
            if (response.success) {
                console.log("Event removed successfully!");
            } else {
                console.error("Failed to remove event.");
            }
        },
        error: function(xhr, status, error) {
            console.error(xhr.responseText);
        }
    });
}
});
</script>
</body>
</html>

</x-app-layout>
