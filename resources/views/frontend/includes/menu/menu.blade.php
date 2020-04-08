<!-- DEBUT DU MENU -->
<li itemprop='name' class="active dropdown mega" data-id="435" data-level="1" data-xicon="fa fa-home">
	<a itemprop='url' class=" dropdown-toggle" href="/index-2.html"   data-target="#" data-toggle="dropdown"><span class="fa fa-home"></span>Accueil <em class="caret"></em></a>
	<div class="nav-child dropdown-menu mega-dropdown-menu"  ><div class="mega-dropdown-inner">
		<div class="row">
			<div class="col-xs-12 mega-col-nav" data-width="12"><div class="mega-inner">
				<ul itemscope itemtype="http://www.schema.org/SiteNavigationElement" class="mega-nav level1">
					<li itemprop='name' class="current active" data-id="580" data-level="2">
						<a itemprop='url' class="" href="home2.html"   data-target="#">
							home 1
						</a>
					</li>
				</ul>
			</div></div>
		</div>
	</div></div>
</li>
<?php
$domaines = DB::table('domaines')->where('visible_domaines', '=', '1')->get();
?>
@foreach($domaines as $domaine)
<?php
$sous_domaines = DB::table('sous_domaines')->where('visible_sous_domaines', '=', '1')
->where('id_domaines', '=', $domaine->id_domaines)->get();
$first = DB::table('sous_domaines')->where('visible_sous_domaines', '=', '1')
->where('id_domaines', '=', $domaine->id_domaines)->first();
?>
@if($first === null)
<li itemprop='name'  data-id="592" data-level="1" data-xicon="fa fa-music">
	<a itemprop='url' class="" href="../entertainment.html"   data-target="#"><span class="fa fa-music"></span>
{{ $domaine->titre_domaines }} </a>
</li>
@else
<li itemprop='name' class="dropdown mega" data-id="435" data-level="1" data-xicon="fa fa-fonticons">
<a itemprop='url' class=" dropdown-toggle" href="/index-2.html"   data-target="#" data-toggle="dropdown"><span class="fa fa-fonticons"></span>{{ $domaine->titre_domaines }} <em class="caret"></em></a>
<div class="nav-child dropdown-menu mega-dropdown-menu"  ><div class="mega-dropdown-inner">
	<div class="row">
		<div class="col-xs-12 mega-col-nav" data-width="12"><div class="mega-inner">
			<ul itemscope itemtype="http://www.schema.org/SiteNavigationElement" class="mega-nav level1">
				@foreach($sous_domaines as $sous_domaine)
				<li itemprop='name' class="current active" data-id="580" data-level="2">
					<a itemprop='url' class="" href="home2.html"   data-target="#">
						{{ $sous_domaine->titre_sous_domaines }}
					</a>
				</li>
				@endforeach
			</ul>
		</div></div>
	</div>
</div></div>
</li>
@endif
@endforeach
<!-- FIN DU MENU -->