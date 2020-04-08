@extends('templates.base')
@section('content')
<div class="content ">
    <section class="content">
  <?php 
  $articles=DB::table('article_traduits')->select('*')->where('id_traducteurs','=',Auth::user()->id_users)->count();
  $en_attente=DB::table('articles')->select('*')->where('traduit_articles','=',1)->Where('validation_articles', '=','o')->count();
  
  ?>
  <!-- Main content -->
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-reply"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Articles<br>Traduits</span>
              <span class="info-box-number">{{$articles}}<small></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-ellipsis-h"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Articles<br>En Attente</span>
              <span class="info-box-number">{{$en_attente}}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
       <!--  <div class="clearfix visible-sm-block"></div>
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
     <!--    <div class="col-md-3 col-sm-6 col-xs-12">
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