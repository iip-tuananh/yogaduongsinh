@extends('layouts.main.master')
@section('title')
{{$setting->company}}
@endsection
@section('description')
{{$setting->webname}}
@endsection
@section('image')
{{url(''.$banners[0]->image)}}
@endsection
@section('css')
@endsection
@section('js')
@endsection
@section('content')
<main>
   <div class="owlslides_inhome">
      <div class="owl-carousel owl-theme">
      
       @foreach ($banners as $banner)
         <div>
            <img src="{{$banner->image}}" alt="Nhất dáng nhì da<span >Khỏe, đẹp để hạnh phúc</span>" />
            {{-- <div class="caption left">
                  <h3>Nhất dáng nhì da<span >Khỏe, đẹp để hạnh phúc</span></h3>
                  <p>
                     Các loại hình thể dục như: GYM, Yoga, Aerobic, Zumba, Sexy dance, Huấn luyện viên kèm riêng và chuyên cung cấp HLV đến cho cá nhân, gia đình và doanh nghiệp....
                  </p>
                  <p><a class="btn-site" href="/gioi-thieu/">Xem chi tiết</a></p>
            </div> --}}
         </div>
       @endforeach
         
      </div>
   </div>
   <div class="container">
      <div class="block_titlecenter">
         <div class="title">TIÊU CHÍ</div>
      </div>
      <br>
      <br>
      <div class="s_content">
         <div class="showcat" class="clearfix">
            <div class="listitem flex-cus">
               <div class="col-xs-24 col-sm-12 col-md-8 col-lg-8 d-flex tieuchi-cus">
                  <div class="d-flex img-c">
                     <div class="text-right">CÂN BẰNG CƠ THỂ <br> VÀ TÂM TRÍ</div>
                     <div><img src="{{asset('frontend/img/icon1.png')}}" alt="" srcset=""></div>
                  </div>
                  <div class="d-flex img-c">
                     <div class="text-right">CẢI THIỆN HỆ HÔ HẤP <br> VÀ NỘI TIẾT</div>
                     <div><img src="{{asset('frontend/img/icon2.png')}}" alt="" srcset=""></div>
                  </div>
                  <div class="d-flex img-c">
                     <div class="text-right">GIẢM THIỂU CĂNG THẲNG  STRESS</div>
                     <div><img src="{{asset('frontend/img/icon3.png')}}" alt="" srcset=""></div>
                  </div>
               </div>
               <div class="col-xs-24 col-sm-12 col-md-8 col-lg-8 flex-cus">
                  <img class="tieuchiimg" src="{{asset('frontend/img/tieuchi2.jpg')}}" alt="">
               </div>
               <div class="col-xs-24 col-sm-12 col-md-8 col-lg-8 d-flex tieuchi-cus">
                <div class="d-flex img-c">
                    <div><img src="{{asset('frontend/img/icon4.png')}}" alt="" srcset=""></div>
                   <div class="text-left">TÌM LẠI ĐỨA TRẺ
                    BÊN TRONG BẠN</div>
                </div>
                <div class="d-flex img-c">
                    <div><img src="{{asset('frontend/img/icon5.png')}}" alt="" srcset=""></div>
                   <div class="text-left">
                    HẠNH PHÚC VÀ BÌNH AN</div>
                </div>
                <div class="d-flex img-c">
                    <div><img src="{{asset('frontend/img/icon6.png')}}" alt="" srcset=""></div>
                   <div class="text-left">VUI VẺ VÀ YÊU ĐỜI</div>
                </div>
             </div>
            </div>
         </div>
      </div>
   </div>
   </div>
   <br>
   <br>
   <br>
   <br>
   {{-- //////////////////// --}}
     <div class="pink-bg">
      <div class="container">
         <div class="pb-left hidden-xs">
            <h3>Tham gia tập ngay với chúng tôi</h3>
         </div>
         <div class="pb-right"><a class="btn-site-2" href="">THAM GIA NGAY</a></div>
      </div>
   </div>
   <br>
   <br>
    {{-- ////////////////// --}}
    @foreach ($categoryhome as $cate)
    <div class="container">
     
      <div class="block_titlecenter">
         <div class="tuan-flex">
            <div class="title">
               {{languageName($cate->name)}}
            </div>
         </div>
         <div class="t">
            <a href="{{route('allListProCate',['cate'=>$cate->slug])}}">Xem thêm</a></i>
         </div>
         <br>
         <br>
       
            <div class="s_content" >
               <div class="showcat" class="clearfix">
                  <div class="listitem">
                  @foreach ($cate->product as $pro)
                  @php
                      $img = json_decode($pro['images']);
                  @endphp
                  <div class="col-xs-24 col-sm-12 col-md-8 col-lg-8">
                     <div class="item">
                        <div class="showimg">
                           <a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'slug'=>$pro['slug']])}}" ><img src="{{$img[0]}}"></a>
                        </div>
                        <div class="showcontent">
                           <a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'slug'=>$pro['slug']])}}" >
                              <h3>{{languageName($pro['name'])}}</h3>
                           </a>
                           <div class="limit-text-3">
                              {!!languageName($pro['description'])!!}
                           </div>
                        </div>
                     </div>
                  </div>
                  @endforeach
                  
                  </div>
               </div>
            </div>
         </div>
      </div>
    @endforeach
</main>
@endsection