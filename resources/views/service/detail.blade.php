@extends('layouts.main.master')
@section('title')
{{($detail_service->name)}}
@endsection
@section('description')
{{($detail_service->description)}}
@endsection
@section('image')
{{url(''.$detail_service->image)}}
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
				<h4 class="has-text-align-center">{{$detail_service->name}}</h4>
				<br>
				<br>
				{!!languageName($detail_service->content)!!}
			 </div>
			 <!-- .col-inner -->
		  </div>
		  <!-- .large-12 -->
	   </div>
	   <!-- .row -->
	</div>
 </main>
@endsection