@extends('layouts.main.master')
@section('title')
{{$title}}
@endsection
@section('description')
Danh sách {{$title}}
@endsection
@section('image')
{{url(''.$setting->logo)}}
@endsection
@section('js')
@endsection
@section('css')
@endsection
@section('content')
<div class="banner_sub" style="background-image: url({{asset('frontend/img/yoga-gaf47f369d_1920.jpg')}});">
   <div class="container">
      <p>
         {{$title}}
      </p>
   </div>
</div>
<main>
   <br>
   <br>
   <div class="container">
      <div class="clearfix">
      </div>
 
      <div class="clearfix">
         <div class="showcat">
            <div class="listitem">
               @foreach ($list as $pro)
                   @include('layouts.product.item',['pro'=>$pro])
               @endforeach
            </div>
         </div>
      </div>
      <div class="clearfix">
      </div>
   </div>
</main>
@endsection