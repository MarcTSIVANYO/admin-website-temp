<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Manwin24 | Espace de travail</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/bootstrap/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/font-awesome/4.5.0/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/ionicons/2.0.1/css/ionicons.min.css') }}">
    <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/plugins/datatables/dataTables.bootstrap.css') }}">
    <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/plugins/select2/select2.min.css') }}">
  <!-- Theme style -->
   <link rel="stylesheet" href="{{ asset('/resources/assets/dist/css/AdminLTE.min.css') }}"> 
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/plugins/datepicker/datepicker3.css') }}">

  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/plugins/colorpicker/bootstrap-colorpicker.min.css') }}"> 
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="{{ asset('/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css') }}"> 
   
   <link rel="stylesheet" href="{{ asset('/resources/assets/dist/css/skins/_all-skins.min.css') }}">  
   <link rel="stylesheet" href="{{ asset('/resources/assets/jasny/css/jasny-bootstrap.min.css') }}"> 
 
  <link rel="shortcut icon" href="{{ asset('/resources/assets/img/M24.png') }}"  />
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="javascript:void(0)" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">M<b>24</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Manwin</b>24</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">MENU</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
         @if(Auth::check())
                <img src="{{  url(Auth::user()->logo_users) }}" class="user-image" alt="User Image">
                
            @else
                <p></p>
            @endif
              <!-- <img src="{{ asset('/resources/assets/dist/img/user2-160x160.jpg')}}" class="user-image" alt="User Image"> -->
              <span class="hidden-xs">@if(Auth::check())
                   {{Auth::user()->login_users}} 
                                @endif</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <!-- <img src="{{ asset('/resources/assets/dist/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image"> -->

         @if(Auth::check())
                <img src="{{  url(Auth::user()->logo_users) }}" class="user-circle" alt="User Image">
            @else
                <p></p>
            @endif
                <p>
                  @if(Auth::check())
                   {{Auth::user()->login_users}}
                  <small>
                  </small>
                  @endif
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs- text-center">
                    <!-- <a href="#">Followers</a> -->
                    <a href="javascript:openwindows('{{url('password_edit/'.Auth::user()->id_users)}}',500,400,true)" class="btn btn-success btn-flat">Changer mot de passe</a>
                 <!--  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div> -->
                  <!-- <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div> -->
                </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="javascript:openwindows('{{route('utilisateurs.edit',Auth::user()->id_users)}}',990,550,true)" class="btn btn-default btn-flat">Profil</a>
                </div>
                <div class="pull-right">
                  <a href="{{url('/logout')}}" class="btn btn-default btn-flat">Logout</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->

  @include('includes.navigation')

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <!-- Blank page -->
        <!-- <small>it all starts here</small> -->
      </h1>
      <ol class="breadcrumb">
        <!-- <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li> -->
        <!-- <li><a href="#">Examples</a></li> -->
        <!-- <li class="active">Blank page</li> -->
      </ol>
    </section>
    <br> 
    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <!-- <div class="box"> -->
       <!--  <div class="box-header with-border">
          <h3 class="box-title">Title</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
          <br>
        </div>
 -->      
        <!-- <div class="box-body"> -->
           @yield('content')
          <!-- </div> -->
        <!-- /.box-body -->
        <!-- <div class="box-footer">
          Footer
        </div> -->
        <!-- /.box-footer-->
      <!-- </div> -->
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Powered by </b> <a href="www.mastersolut.com">MasterSolut</a>
    </div>
    <strong>Copyright &copy; 2017 <a href="http://www.manwin24.com" target="_blank">Manwin24</a>.</strong> All rights
    reserved.
  </footer>

  <aside class="control-sidebar control-sidebar-dark">
        
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane" id="control-sidebar-home-tab">
            <ul class="control-sidebar-menu">
            </ul><!-- /.control-sidebar-menu -->

            <ul class="control-sidebar-menu">
            </ul><!-- /.control-sidebar-menu --> 
          </div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">
            
          </div><!-- /.tab-pane -->
        </div>
      </aside><!-- /.control-sidebar -->
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- Add fancyBox main JS and CSS files -->
<!-- <script type="text/javascript" src="{{asset('/resources/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5')}}"></script> -->

<script src=" {{asset('/resources/assets/js/custom.js')}}"></script>
<!-- jQuery 2.2.3 -->
<script src=" {{asset('/resources/assets/plugins/jQuery/jquery-2.2.3.min.js')}}"></script>
<!-- Bootstrap 3.3.6 -->
<script src=" {{asset('/resources/assets/bootstrap/js/bootstrap.min.js')}}"></script>

<!-- DataTables -->
<script src="{{asset('/resources/assets/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('/resources/assets/plugins/datatables/dataTables.bootstrap.min.js')}}"></script>
<!-- SlimScroll -->
<script src=" {{ asset('/resources/assets/plugins/slimScroll/jquery.slimscroll.min.js') }}"></script> 
<!-- FastClick -->
<script src=" {{ asset('/resources/assets/plugins/fastclick/fastclick.js') }}"></script>  
<!-- AdminLTE App -->
<script src=" {{ asset('/resources/assets/dist/js/app.min.js') }}"></script>  
<!-- AdminLTE for demo purposes -->
<script src=" {{ asset('/resources/assets/dist/js/demo.js') }}"></script>  

<script src=" {{ asset('/resources/assets/jasny/js/jasny-bootstrap.min.js') }}"></script>  
<!-- bootstrap datepicker -->

<script src=" {{ asset('/resources/assets/plugins/datepicker/bootstrap-datepicker.js') }}"></script>  

<!-- date-range-picker -->

<script src=" {{ asset('/resources/assets/ajax/libs/moment.js/2.11.2/moment.min.js') }}"></script>  

<script src=" {{ asset('/resources/assets/plugins/daterangepicker/daterangepicker.js') }}"></script> 

<!-- Select2 -->

<script src="{{ asset('/resources/assets/plugins/select2/select2.full.min.js') }}"></script>  

<!-- InputMask -->

<script src="{{ asset('/resources/assets/plugins/input-mask/jquery.inputmask.js') }}"></script>  

<script src="{{ asset('/resources/assets/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>  

<script src="{{ asset('/resources/assets/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script> 



<!-- bootstrap datepicker -->

<script src="{{ asset('/resources/assets/plugins/datepicker/bootstrap-datepicker.js') }}"></script> 

<!-- bootstrap color picker -->

<script src="{{ asset('/resources/assets/plugins/colorpicker/bootstrap-colorpicker.min.js') }}"></script> 

<!-- bootstrap time picker -->

<script src="{{ asset('/resources/assets/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script> 

<!-- SlimScroll 1.3.0 -->

<!-- iCheck 1.0.1 -->

<script src="{{ asset('/resources/assets/plugins/iCheck/icheck.min.js') }}"></script>  

<script  src="{{ asset('/vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>

<script>
  $(function () {
    $("#example1").DataTable({ 
          "language": { "lengthMenu": "Afficher _MENU_ entrées", 
          "zeroRecords": "Aucune ligne trouvée - ", 
          "info": "Page _PAGE_ sur _PAGES_", 
          "infoEmpty": "Aucun enregistrement disponible",
          "sSearch": "Chercher:",
          "oPaginate": {
            "sNext":    "Suivant",
            "sPrevious": "Précedent"
          },
          "infoFiltered": "(filtered from _MAX_ total records)" } });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
    
  function openwindows(page,w,h)
  {
    window.open(page, "same",
      "width="+w+",height="+h+",menubar=no,scrollbars=0,left=" +
      ((screen.width - w)/2) + ",top=" + ((screen.height - h)/2));
  };

  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

    //Datemask dd/mm/yyyy
    $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
    //Datemask2 mm/dd/yyyy
    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
    //Money Euro
    $("[data-mask]").inputmask();

    //Date range picker
    $('#reservation').daterangepicker();
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
    //Date range as a button
    $('#daterange-btn').daterangepicker(
        {
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function (start, end) {
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });

    //Colorpicker
    $(".my-colorpicker1").colorpicker();
    //color picker with addon
    $(".my-colorpicker2").colorpicker();

    //Timepicker
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
// $('textarea').ckeditor();

CKEDITOR.replace( 'article-ckeditor' );
</script>
</body>
</html>
