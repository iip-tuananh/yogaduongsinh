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
         <div class="pb-right"><a class="btn-site-2" href="{{route('allProduct')}}">THAM GIA NGAY</a></div>
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
    <div class="container">
      <br>
      <br>
      <div class="s_content custom-dep">
         <div class="title-h1"><h1>VÌ SAO CHỌN CHÚNG TÔI</h1></div>
       
         <div class="row">
            <div class="col-xs-24 col-md-6 flex-visao">
               <div><i class="fa-solid fa-globe"></i></div>
               <div class="text-visao">Theo tiêu chuẩn của Hiệp Hội Yoga, tất cả khoá học cùng HLV  sẽ mang tới trải nghiệm về sự an toàn và hiệu quả cao.</div>
            </div>
            <div class="col-xs-24 col-md-6 flex-visao">
               <div><i class="fa-solid fa-person-running"></i></div>
               <div>
                  Sau khoá học sẽ giúp cải thiện sức khỏe, tăng cường sự linh hoạt và cân bằng cho cơ thể và tinh thần. Thực hành yoga có thể giúp giảm stress, lo lắng và cải thiện giấc ngủ. Ngoài ra, yoga còn giúp tăng cường sức đề kháng, giảm đau và cân bằng nội tiết tố.</div>
            </div>
            <div class="col-xs-24 col-md-6 flex-visao">
               <div><i class="fa-solid fa-infinity"></i></div>
               <div>
                  Khoá học của bạn không bao giờ hết hạn, tập mọi lúc và mọi nơi mà bạn muốn, bạn có thể xem cả trên điện thoại. Xanh Yoga sẽ làm hài lòng mọi khách hàng</div>
            </div>
            <div class="col-xs-24 col-md-6 flex-visao">
               <div><i class="fa-solid fa-book-open-reader"></i></div>
               <div>
                  Được hướng dẫn bởi giáo viên chuyên nghiệp: Khi tập yoga ở phòng tập, bạn sẽ có giáo viên chuyên nghiệp hướng dẫn và sửa lỗi tập luyện. Giáo viên sẽ giúp bạn thực hiện các động tác đúng cách và tránh các chấn thương có thể xảy ra nếu bạn tập yoga một mình tại nhà.hơn.
               </div>
            </div>
         </div>
     
      </div>
    </div>
</main>
@endsection