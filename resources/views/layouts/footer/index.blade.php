<footer>
   <div class="s_top">
       <div class="container">
           <div class="show_contact">
               <div class="row clearfix">
                   <div class="col-xs-24 col-sm-8">
                       <div class="item">
                          <img src="{{$setting->logo}}" alt="" srcset="">
                       </div>
                   </div>
                   <div class="col-xs-24 col-sm-8">
                       <div class="item">
                          
                           <h4>Liên Hệ</h4>
                          
                       </div>
                   </div>
                   <div class="col-xs-24 col-sm-8">
                       <div class="item">
                           <h4>MENU</h4>
                           <ul >
                            <li ><a style="color: white ; text-transform:uppercase;" href="{{route('home')}}">Trang chủ</a> </li>
                            <li ><a style="color: white ; text-transform:uppercase;" href="{{route('lienHe')}}">Liên Hệ</a> </li>
                            <li ><a style="color: white ; text-transform:uppercase;" href="{{route('aboutUs')}}">Giới thiệu</a> </li>
                            @foreach ($categoryhome as $cate)
                            <li ><a style="color: white ; text-transform:uppercase;" href="{{route('aboutUs')}}">{{languageName($cate->name)}}</a> </li>
                            @endforeach
                            
                           </ul>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
   <div class="s_bottom">
       <div class="container">
           <div class="fsb_left">
               ©2020 <strong>Nhất Dáng Nhì Da</strong>. All Rights Reserved.<br><span style="font-size: 14px;">Designed by <a style="color:#fff" href="https://www.ngoisaoso.vn/" title="Thiết kế website Ngôi Sao Số">Ngoi Sao So.</a></span>
           </div>
           <div class="fsb_right">
               <div id="socialList" class="content">
                   <ul class="socialList">
                       <li>
                           <a href="https://www.facebook.com/CLBnhatdangnhida/" target="_blank"><i class="fa fa-facebook">&nbsp;</i></a>
                       </li>
                       <li>
                           <a href="https://www.youtube.com/channel/UC_KR9dX5_VwhwlhHuZrVC6g" target="_blank"><i class="fa fa-youtube">&nbsp;</i></a>
                       </li>
                   </ul>
               </div>
           </div>
       </div>
   </div>
</footer>