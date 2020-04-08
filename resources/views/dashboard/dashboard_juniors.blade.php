@extends('templates.base')
@section('content')
<div class="content ">
    <section class="content">
	<?php 
  // nombre artticles
	$articles=DB::table('articles')->select('*')->where('id_redacteurs','=',Auth::user()->id_users)->count();
	// nombre de commentaires
  $commentaires=DB::table('commentaires')->where('visible_suggestions','=','1')->count();
	?>
	<!-- Main content -->
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-500px"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Nombre<br> d'articles</span>
              <span class="info-box-number">{{$articles}}<small></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-comments-o"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Nombre<br>de commentaires</span>
              <span class="info-box-number">{{$commentaires}}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
      <!--   <div class="clearfix visible-sm-block"></div>
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">Sales</span>
              <span class="info-box-number">760</span>
            </div>
          </div>
        </div> -->
        <!-- /.col -->
   <!--      <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">New Members</span>
              <span class="info-box-number">2,000</span>
            </div>
          </div>
        </div>
      </div> -->
</section>
</div>
@stop