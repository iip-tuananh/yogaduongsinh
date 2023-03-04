<footer>
    <div class="s_top">
        <div class="container">
            <div class="show_contact">
                <div class="row clearfix">
                    <div class="col-xs-24 col-sm-8">
                        <div class="item">
                            <img src="{{ $setting->logo }}" alt="" srcset="">
                        </div>
                    </div>
                    <div class="col-xs-24 col-sm-8">
                        <div class="item">

                            <h4>Liên Hệ</h4>
                            <ul>
                                @if (isset($setting->phone1))
                                    <li><a style="color: white; text-transform: uppercase;" href="tel+{{ $setting->phone1 }}"><i class="fa-solid fa-phone"></i>&nbsp;{{ $setting->phone1 }}</a></li>
                                @endif
                                {{-- @if (isset($setting->phone2))
                                    <li><a style="color: white "  href="tel+{{ $setting->phone2 }}">{{ $setting->phone2 }}</a></li>
                                @endif --}}
                                @if (isset($setting->address1))
                                    <li><a style="color: white ;text-transform: uppercase;" href="tel+{{ $setting->address1 }}"><i class="fa-solid fa-map-location-dot"></i>&nbsp;&nbsp;&nbsp;{{ $setting->address1 }}</a></li>
                                @endif
                                @if (isset($setting->address2))
                                    <li><a style="color: white ;text-transform: uppercase;" href="tel+{{ $setting->address2 }}"><i class="fa-solid fa-map-location-dot"></i>&nbsp;&nbsp;&nbsp;{{ $setting->address2 }}</a></li>
                                @endif
                                @if (isset($setting->email))
                                    <li><a style="color: white;text-transform: uppercase; " href="tel+{{ $setting->email }}"><i class="fa-solid fa-envelope"></i>&nbsp;&nbsp;&nbsp;{{ $setting->email }}</a></li>
                                @endif
                       


                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-24 col-sm-8">
                        <div class="item">
                            <h4>MENU</h4>
                            <ul>
                                <li><a style="color: white ; text-transform:uppercase;"
                                        href="{{ route('home') }}">Trang chủ</a> </li>
                                <li><a style="color: white ; text-transform:uppercase;"
                                        href="{{ route('lienHe') }}">Liên Hệ</a> </li>
                                <li><a style="color: white ; text-transform:uppercase;"
                                        href="{{ route('aboutUs') }}">Giới thiệu</a> </li>
                                @foreach ($categoryhome as $cate)
                                    <li><a style="color: white ; text-transform:uppercase;"
                                            href="{{ route('aboutUs') }}">{{ languageName($cate->name) }}</a> </li>
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
                ©2020 <strong>{{$setting->company}}</strong>. All Rights Reserved.<br><span style="font-size: 14px;">Designed
                    by <a style="color:#fff" href="https://sbtsoftware.vn/">SBT</a></span>
            </div>
            <div class="fsb_right">
                <div id="socialList" class="content">
                    <ul class="socialList">
                        <li>
                            <a href="{{$setting->facebook}}" target="_blank"><i
                                    class="fa fa-facebook">&nbsp;</i></a>
                        </li>
                      
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
