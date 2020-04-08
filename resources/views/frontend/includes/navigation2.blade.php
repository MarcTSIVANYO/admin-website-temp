<!-- MAIN NAVIGATION -->
<nav id="t3-mainnav" class="wrap navbar navbar-default t3-mainnav">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<div class="hidden-lg hidden-md">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".t3-navbar-collapse">
				<i class="fa fa-bars"></i>
				</button>
				<button class="off-canvas-toggle " type="button" data-pos="left" data-nav="#t3-off-canvas" data-effect="off-canvas-effect-4">
				<i class="fa fa-bars"></i>
				</button>
				<!-- OFF-CANVAS SIDEBAR -->
				<div id="t3-off-canvas" class="t3-off-canvas ">
					<div class="t3-off-canvas-header">
						<h2 class="t3-off-canvas-header-title">Menubar</h2>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="t3-off-canvas-body">
						<div class="t3-module module_menu " id="Mod114">
							<div class="module-inner">
								<h3 class="module-title "><span>Main Menu</span></h3>
								<div class="module-ct">
									<ul class="nav  nav-pills nav-stacked ">







									<!-- DEBUT DU MENU RESPONSIVE-->

									@include('frontend.includes.menu.menu_responsive')


									<!-- FIN DU MENU RESPONSIVE-->








									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //OFF-CANVAS SIDEBAR -->
			</div>
			<!-- HEAD SEARCH -->
			<div class="head-search">
				<form class="form-search" action="http://themewinter.com/joomla/dailytimes/index.php/homepage/home2" method="post">
					<div class="search">
						<label for="mod-search-searchword">Search ...</label><i class="fa fa-search"></i><input name="searchword" id="mod-search-searchword" maxlength="200"  class="form-control " type="text" size="20" />	<input type="hidden" name="task" value="search" />
						<input type="hidden" name="option" value="com_search" />
						<input type="hidden" name="Itemid" value="580" />
					</div>
				</form>
			</div>
			<!-- //HEAD SEARCH -->
			
		</div>
		<div class="t3-navbar-collapse navbar-collapse collapse"></div>
		
		<div class=" hidden-sm hidden-xs">
			<div class="t3-navbar navbar-collapse collapse">
				<div  class="t3-megamenu animate slide"  data-duration="400" data-responsive="true">
					<ul itemscope itemtype="http://www.schema.org/SiteNavigationElement" class="nav navbar-nav level0">






						<!-- DEBUT DU MENU -->

						@include('frontend.includes.menu.menu')

						<!-- FIN DU MENU -->


					</ul>
				</div>
			</div>
		</div>
	</div>
</nav>
<!-- //MAIN NAVIGATION -->