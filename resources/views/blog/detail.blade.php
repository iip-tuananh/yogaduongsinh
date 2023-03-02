@extends('layouts.main.master')
@section('title')
{{languageName($blog_detail->title)}}
@endsection
@section('description')
{{languageName($blog_detail->description)}}
@endsection
@section('image')
{{url(''.$blog_detail->image)}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main id="main" class="">
	<div id="content" class="blog-wrapper blog-single page-wrapper">
	   <div class="row row-large row-divided ">
		  <div class="large-9 col">
			 <article id="post-1992" class="post-1992 post type-post status-publish format-standard has-post-thumbnail hentry category-tin-cong-ty">
				<div class="article-inner ">
				   <header class="entry-header" style="font-size: 16px">
						{!!languageName($blog_detail->content)!!}
				   </header>
				</div>
				<!-- .article-inner -->
			 </article>
		
		  </div>
		  <!-- .large-9 -->
		  <div class="post-sidebar large-3 col">
			 <div id="secondary" class="widget-area " role="complementary" style="font-size: 16px">
				
				@include('blog.menublog')
			 </div>
			 <!-- #secondary -->
		  </div>
		  <!-- .post-sidebar -->
	   </div>
	   <!-- .row -->
	</div>
	<!-- #content .page-wrapper -->
 </main>
 <!-- #main -->
<div class="clearfix"></div>
@endsection