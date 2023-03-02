@extends('layouts.main.master')
@section('title')
{{languageName($product->name)}}
@endsection
@section('description')
{{languageName($product->description)}}
@endsection
@section('image')
@php
$imgs = json_decode($product->images);
$priceDiscount = $product->price - $product->price * ($product->discount / 100);
@endphp
{{url(''.$imgs[0])}}
@endsection
@section('css')
<link href="{{asset('frontend/css/product_detail.css')}}" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

@endsection
@section('js')
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

@endsection
@section('content')
<div class="banner_sub" style="background-image: url({{asset('frontend/img/yoga-gaf47f369d_1920.jpg')}});">
   <div class="container">
      <p>
         {{languageName($product->name)}}
      </p>
   </div>
</div>
<main>
   <div class="container">
      <div class="clearfix">
      </div>
      <div class="clearfix">
         <!-- http://kenwheeler.github.io/slick/ -->
         <div class="detail">
            <div class="row clearfix">
               <div class="col-xs-24 col-md-10">
                  <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-1.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-2.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-3.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-4.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-5.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-6.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-7.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-10.jpg" />
                      </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                  </div>
                  <div thumbsSlider="" class="swiper mySwiper">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-1.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-2.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-3.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-4.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-5.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-6.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-7.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-8.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-9.jpg" />
                      </div>
                      <div class="swiper-slide">
                        <img src="https://swiperjs.com/demos/images/nature-10.jpg" />
                      </div>
                    </div>
                  </div>
                
                  <!-- Swiper JS -->
                  <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
                
                  <!-- Initialize Swiper -->
                 
           
               </div>
               <div class="col-xs-24 col-md-14">
                  <div class="show_info bg-web">
                     <h1>{{languageName($product->name)}}</h1>
                     <div class="list_info">
                        <ul>
                        </ul>
                     </div>
                     <div class="">
                       {!!languageName($product->description)!!}
                     </div>
                     <div class="vieworder">
                        <button class="btn-site" onclick="call_modal(25)"> Đăng ký tập thử </button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="bodytext">
               <h2 class="title_special">Thông tin dịch vụ</h2>
               {!!languageName($product->content)!!}
            </div>
            <div class="showcat">
               <div class="sheader">
                  <h2 class="title_special_center">Xem thêm dịch vụ khác</h2>
               </div>
               <div class="listitem">
                  <div class="row clearfix">
                     @foreach ($productlq as $item)
                     @if($product->id != $item->id)
                       @include('layouts.product.item',['pro'=>$item])
                       @endif
                     @endforeach
                  </div>
               </div>
            </div>
         </div>
         <div class="modal fade service-main-modal" id="idmodals_services" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><em class="fa fa-remove fa-lg"></em></button>
                  </div>
                  <div class="modal-body">
                     <em class="fa fa-spinner fa-spin">&nbsp;</em>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="clearfix">
      </div>
   </div>
   
                  <!-- Demo styles -->
                  <style>
                     .swiper {
                       width: 100%;
                       height: 100%;
                     }
                 
                     .swiper-slide {
                       text-align: center;
                       font-size: 18px;
                       background: #fff;
                       display: flex;
                       justify-content: center;
                       align-items: center;
                     }
                 
                     .swiper-slide img {
                       display: block;
                       width: 100%;
                       height: 100%;
                       object-fit: cover;
                     }
                 
                 
                     .swiper {
                       width: 100%;
                       height: 300px;
                       margin-left: auto;
                       margin-right: auto;
                     }
                 
                     .swiper-slide {
                       background-size: cover;
                       background-position: center;
                     }
                 
                     .mySwiper2 {
                       height: 80%;
                       width: 100%;
                     }
                 
                     .mySwiper {
                       height: 20%;
                       box-sizing: border-box;
                       padding: 10px 0;
                     }
                 
                     .mySwiper .swiper-slide {
                       width: 25%;
                       height: 100%;
                       opacity: 0.4;
                     }
                 
                     .mySwiper .swiper-slide-thumb-active {
                       opacity: 1;
                     }
                 
                     .swiper-slide img {
                       display: block;
                       width: 100%;
                       height: 100%;
                       object-fit: cover;
                     }
                   </style>
                
                <script>
                  var swiper = new Swiper(".mySwiper", {
                    spaceBetween: 10,
                    slidesPerView: 4,
                    freeMode: true,
                    watchSlidesProgress: true,
                  });
                  var swiper2 = new Swiper(".mySwiper2", {
                    spaceBetween: 10,
                    navigation: {
                      nextEl: ".swiper-button-next",
                      prevEl: ".swiper-button-prev",
                    },
                    thumbs: {
                      swiper: swiper,
                    },
                  });
                </script>
                 
</main>
@endsection