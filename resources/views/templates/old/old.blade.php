<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Manwin24</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/bootstrap/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/font-awesome/4.5.0/css/font-awesome.min.css') }}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/ionicons/2.0.1/css/ionicons.min.css') }}">
    <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/plugins/datatables/dataTables.bootstrap.css') }}">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/plugins/datepicker/datepicker3.css') }}">
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/plugins/select2/select2.min.css') }}">
  <!-- Theme style -->
   <link rel="stylesheet" href="{{ asset('../resources/assets/dist/css/AdminLTE.min.css') }}"> 
     <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/plugins/colorpicker/bootstrap-colorpicker.min.css') }}"> 
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="{{ asset('../resources/assets/plugins/timepicker/bootstrap-timepicker.min.css') }}"> 
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
       <link rel="stylesheet" href="{{ asset('../resources/assets/dist/css/skins/_all-skins.min.css') }}">  

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
       <link rel="stylesheet" href="{{ asset('../resources/assets/jasny/css/jasny-bootstrap.min.css') }}">  

</head>
<body class=" register-page ">
<!-- Site wrapper -->

    <!-- Main content -->
    <section class="content skin-blue col-xs-12" >

      <!-- Default box -->
      <div class="box  skin-blue">
        <div class="box-header with-border">
          <!-- <h3 class="box-title">Title</h3> -->
<!-- 
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div> -->
          <br>
        </div>
        <div class="box-body">
         @yield('content')
        </div>
        <!-- /.box-body -->
      <!--   <div class="box-footer">
          Footer
        </div> -->
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->

  <!-- /.content-wrapper -->

  <!-- <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.8
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer> -->

  <!-- Control Sidebar -->
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <!-- <div class="control-sidebar-bg"></div> -->
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src=" {{asset('../resources/assets/plugins/jQuery/jquery-2.2.3.min.js')}}"></script>
<!-- Bootstrap 3.3.6 -->
<script src=" {{asset('../resources/assets/bootstrap/js/bootstrap.min.js')}}"></script>
<!-- DataTables -->
<script src="{{asset('../resources/assets/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('../resources/assets/plugins/datatables/dataTables.bootstrap.min.js')}}"></script>
<!-- SlimScroll -->
<script src=" {{ asset('../resources/assets/plugins/slimScroll/jquery.slimscroll.min.js') }}"></script> 
<!-- FastClick -->
<script src=" {{ asset('../resources/assets/plugins/fastclick/fastclick.js') }}"></script>  
<!-- bootstrap datepicker -->
<script src=" {{ asset('../resources/assets/plugins/datepicker/bootstrap-datepicker.js') }}"></script>  
<!-- date-range-picker -->
<script src=" {{ asset('../resources/assets/ajax/libs/moment.js/2.11.2/moment.min.js') }}"></script>  
<script src=" {{ asset('../resources/assets/plugins/daterangepicker/daterangepicker.js') }}"></script> 
<!-- Select2 -->
<script src="{{ asset('../resources/assets/plugins/select2/select2.full.min.js') }}"></script>  
<!-- InputMask -->
<script src="{{ asset('../resources/assets/plugins/input-mask/jquery.inputmask.js') }}"></script>  
<script src="{{ asset('../resources/assets/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>  
<script src="{{ asset('../resources/assets/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script> 

<!-- bootstrap datepicker -->
<script src="{{ asset('../resources/assets/plugins/datepicker/bootstrap-datepicker.js') }}"></script> 
<!-- bootstrap color picker -->
<script src="{{ asset('../resources/assets/plugins/colorpicker/bootstrap-colorpicker.min.js') }}"></script> 
<!-- bootstrap time picker -->
<script src="{{ asset('../resources/assets/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script> 
<!-- SlimScroll 1.3.0 -->

<!-- iCheck 1.0.1 -->
<script src="{{ asset('../resources/assets/plugins/iCheck/icheck.min.js') }}"></script>  
<!-- AdminLTE App -->
<script src=" {{ asset('../resources/assets/dist/js/app.min.js') }}"></script>  
<!-- AdminLTE for demo purposes -->
<script src=" {{ asset('../resources/assets/dist/js/demo.js') }}"></script> 
 
<script>
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
</script>
</body>
</html>
