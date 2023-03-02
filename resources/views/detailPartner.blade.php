@extends('layouts.main.master')
@section('title')
{{($detailDoitac->name)}}
@endsection
@section('description')

@endsection
@section('image')
{{url(''.$detailDoitac->image)}}
@endsection
@section('css')
<link href="{{asset('frontend/css/blog_article_style.scss.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('frontend/css/sidebar_style.scss.css')}}" rel="stylesheet" type="text/css" />
@endsection
@section('js')
@endsection
@section('content')
<main id="main" class="">
	<div id="content" class="content-area page-wrapper" role="main">
	   <div class="row row-main">
		  <div class="large-12 col">
			 <div class="col-inner">
				
				<h4 class="" style="text-transform: uppercase;">{{$detailDoitac->name}}</h4>
				<br>
				<br>
				{!!$detailDoitac->link!!}
			 </div>
			 <!-- .col-inner -->
		  </div>
		  <!-- .large-12 -->
	   </div>
	   <!-- .row -->
	</div>
 </main>
@endsection