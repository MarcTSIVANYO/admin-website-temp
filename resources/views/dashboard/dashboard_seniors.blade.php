@extends('templates.base')
@section('content')
<div class="content ">
    <section class="content">

  <?php 
  // nombre articles
  $articles=DB::table('articles')->select('*')->where('visible_articles','=','1')->where('id_redacteurs','=',Auth::user()->id_users)->count();
  // articles a valider
  $sql = DB::table('articles')->select('*')->where('visible_articles','=','1')->where('validation_articles','=','n')->count();  
  // articles a coriger
  $corrections = DB::table('articles')
            ->join('corrections', 'articles.id_articles', '=', 'corrections.id_articles')
            ->select('*')->where('visible_articles','=','1')
                        ->where('id_redacteur_seniors','=', Auth::id())
                        ->where('validation_articles','=','n')
                        ->count();  
    // articles validés
   $articles_valide = DB::table('articles')
                ->join('corrections', 'articles.id_articles', '=', 'corrections.id_articles')
                ->select('*')->where('visible_articles','=','1')
                            ->where('id_redacteur_seniors','=', Auth::id())
                            ->where('validation_articles','=','o')
                            ->count()
  ?>
  <!-- Main content -->
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-500px"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Nombre<br>d'articles</span>
              <span class="info-box-number">{{$articles}}<small></small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-spinner"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Articles<br>a validés</span>
              <span class="info-box-number">{{$sql}}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-retweet"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Articles<br>a corrigés</span>
              <span class="info-box-number">{{$corrections}}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-check"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Articles<br>validés</span>
              <span class="info-box-number">{{$articles_valide}}</span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>

</section>
</div>
@stop