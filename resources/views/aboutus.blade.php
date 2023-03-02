@extends('layouts.main.master')
@section('title')
Giới thiệu về {{$setting->company}}
@endsection
@section('description')
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<div class="banner_sub" style="background-image: url({{asset('frontend/img/yoga-gaf47f369d_1920.jpg')}});">
	<div class="container">
	   <p>
		  Giới thiệu
	   </p>
	</div>
 </div>
 <br>
 <br>
 <main>
	<div class="container">
	   <div class="clearfix">
	   </div>
	   <div class="clearfix">
		  <div class="contact">
			 <div class="row">
            <div class="col-sm-12 col-md-18 ">
				   <div class="sform bg-web">
					  <div class="show">
                  {!!$pageContent->content!!}
					  </div>
				   </div>
				</div>
				<div class="col-sm-12 col-md-6">
				   <div class="sbody">
					  <p><strong>Địa chỉ: </strong>{{$setting->address1}}</p>
					  <p><strong>Điện thoại: </strong>{{$setting->phone1}}</p>
					  <p><strong>Hotline: </strong>{{$setting->phone2}}</p>
					  <p><strong>Email:</strong> {{$setting->email}}</p>
					  <p><img src="{{$setting->logo}}" alt="" srcset=""></p>
				   </div>
				</div>
			
			 </div>
		  </div>
		  {!!$setting->iframe_map!!}
	   </div>
	   <div class="clearfix">
	   </div>
	</div>
 </main>
@endsection