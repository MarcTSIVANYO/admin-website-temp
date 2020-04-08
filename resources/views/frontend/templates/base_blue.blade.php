<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en-gb" dir="ltr" class='com_content view-featured itemid-580  aqua j36 mm-hover'>
<!-- Mirrored from themewinter.com/joomla/dailytimes/index.php/homepage/home2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 11 Jan 2017 19:08:13 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
	<base />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="generator" content="Joomla! - Open Source Content Management" />

	<title>Manwin24 | Accueil</title>
	
	@include('frontend.includes.css')

</head>

<body>

	<div class="t3-wrapper"> <!-- Need this wrapper for off-canvas menu. Remove if you don't use of-canvas -->

		<div class="header2">

			@include('frontend.includes.navigation1')

			@include('frontend.includes.navigation2')

			@include('frontend.includes.banniere')

			@include('frontend.includes.breaking_news')

			@include('frontend.includes.footer')

		</div>

		@yield('content')

		<!-- Back to top -->
		<div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top">
			<button class="btn btn-primary" title="Back to Top"><i class="fa fa-angle-double-up"></i></button>
		</div>

		@include('frontend.includes.js')

	</div>

</body>

<!-- Mirrored from themewinter.com/joomla/dailytimes/index.php/homepage/home2 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 11 Jan 2017 19:09:36 GMT -->
</html>