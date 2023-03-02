<div class="topbar">
   <div class="container">
       <div class="tleft">
           Giờ mở cửa: 6:00 – 20:00 từ thứ 2 đến thứ 7
       </div>
       <div class="tright">
           <div class="show_hotline">
               <a href="tel:tel:{{$setting->phone1}}" title="">Hotline: <span>{{$setting->phone1}}</span></a>
           </div>
       </div>
   </div>
</div>
<header>
   <div class="container">
       <div class="logo">
           <a title="NHẤT DÁNG NHÌ DA" href="{{route('home')}}"><img src="{{$setting->logo}}" width="363" height="70"  /></a>
       </div>
       <div class="headermenu">
           <div class="navbar" role="navigation">
               <div class="navbar-header">
                   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   </button>
               </div>
               <div class="navbar-collapse collapse">
                   <ul id="main-menu" class="sm sm-blue">
                       <li  class="  dropdown">
                           <a   href="{{ROUTE('home')}}"  class="has-submenu">TRANG CHỦ</a>
                       </li>
                       <li  class="  dropdown">
                           <a   href="{{route('aboutUs')}}"   class="has-submenu">GIỚI THIÊU</a>
                       </li>
                       @foreach ($categoryhome as $cate)
                        <li  class="" >
                              <a   href="{{route('allListProCate',['cate'=>$cate->slug])}}"  >{{languageName($cate->name)}}</a>
                        </li>
                       @endforeach
                    
                       <li  class="" >
                           <a   href="{{route('lienHe')}}"  >LIÊN HỆ</a>
                       </li>
                   </ul>
               </div>
           </div>
           <!-- SmartMenus jQuery init -->
       </div>
   </div>
</header>

<div class="show_hotline_fixed">
   <ul>
       <li>
           <a href="tel:{{$setting->phone1}}" >
               <div class="simage">
                   <img  src="{{asset('frontend/img/icon-call.svg')}}" alt="">
               </div>
               <div class="stitle">
                  {{$setting->phone1}}
               </div>
           </a>
       </li>
       <li>
           <a href="mailto:{{$setting->email}}" title="{{$setting->email}}">
               <div class="simage">
                   <img  src="{{asset('frontend/img/icon-mail.svg')}}" alt="">
               </div>
               <div class="stitle">
                   {{$setting->email}}
               </div>
           </a>
       </li>
       <li>
           <a href="https://zalo.me/{{$setting->phone1}}">
               <div class="simage">
                   <img  src="{{asset('frontend/img/zalo-icon.svg')}}" alt="">
               </div>
               <div class="stitle">
                   Kết nối zalo với chúng tôi
               </div>
           </a>
       </li>
       <li>
           <a href="{{$setting->facebook}}" >
               <div class="simage">
                   <img  src="{{asset('frontend/img/iconfinder_social-04_3146789.png ')}}" alt="">
               </div>
               <div class="stitle">
                   Chat với chúng tôi
               </div>
           </a>
       </li>
   </ul>
</div>