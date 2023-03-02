@extends('layouts.main.master')
@section('title')
Liên hệ với chúng tôi
@endsection
@section('description')
Liên hệ với chúng tôi
@endsection
@section('image')
{{url(''.$setting->logo)}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<div class="banner_sub" style="background-image: url({{asset('frontend/img/yoga-gaf47f369d_1920.jpg')}});">
	<div class="container">
	   <p>
		  Liên hệ
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
				<div class="col-sm-12 col-md-10">
				   <div class="sbody">
					  <p><strong>Địa chỉ: </strong>{{$setting->address1}}</p>
					  <p><strong>Điện thoại: </strong>{{$setting->phone1}}</p>
					  <p><strong>Hotline: </strong>{{$setting->phone2}}</p>
					  <p><strong>Email:</strong> {{$setting->email}}</p>
					  <p><img src="{{$setting->logo}}" alt="" srcset=""></p>
				   </div>
				</div>
				<div class="col-sm-12 col-md-14 ">
				   <div class="sform bg-web">
					  <h3 class="title_special_center">Gửi phản hồi</h3>
					  <div class="show">
						 <div class="nv-fullbg">
							<form method="post" action="{{route('postcontact')}}" >
								@csrf
							
							   <div class="form-group row clearfix">
								  <div class="col-xs-24 col-md-12">
									 <input type="text" maxlength="100"  class="form-control required" placeholder="Họ và tên" name="name">
								
								  </div>
								  <div class="col-xs-24 col-md-12">
									 <input type="email" maxlength="60" value="" name="email" class="form-control required" placeholder="Email" onkeypress="nv_validErrorHidden(this);" data-mess="Vui lòng nhập email khả dụng" />
								  </div>
							   </div>
							   <div class="form-group row clearfix">
								  <div class="col-xs-24 col-md-12">
									 <input type="text" maxlength="60" value="" name="phone" class="form-control" placeholder="Điện thoại" />
								  </div>
								
							   </div>
							   <div class="form-group">
								  <textarea cols="8" name="mess" class="form-control required" placeholder="Nội dung" ></textarea>
							   </div>
							   <div class="form-group">
								  <input type="submit" value="Gửi đi"  class="btn btn-site" />
							   </div>
							</form>
							<div class="contact-result alert"></div>
						 </div>
					  </div>
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