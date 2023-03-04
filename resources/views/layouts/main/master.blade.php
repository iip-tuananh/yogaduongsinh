<!DOCTYPE html>
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
    <head>
               <meta charset="UTF-8" />
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
         <title>@yield('title')</title>
         <meta name="description" content="">
         <meta name="keywords" content="@yield('title')"/>
         <meta name="robots" content="noodp,index,follow" />
         <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
         <meta name="csrf-token" content="{{ csrf_token() }}" />
         <meta name="description" content="@yield('description')" />
         <link rel="canonical" href="{{url()->current()}}" />
         <meta property="og:locale" content="vi_VN" />
         <meta property="og:type" content="article" />
         <meta property="og:title" content="@yield('title')" />
         <meta property="og:description" content="@yield('description')" />
         <meta property="og:url" content="{{url()->current()}}" />
         <meta property="og:site_name" content="ahometh.vn" />
         <meta property="og:updated_time" content="2021-08-28T22:06:30+07:00" />
         <meta property="og:image" content="@yield('image')" />
         <meta property="og:image:secure_url" content="@yield('image')" />
         <meta property="og:image:width" content="598" />
         <meta property="og:image:height" content="333" />
         <meta property="og:image:alt" content="ahome-noi-that" />
         <meta property="og:image:type" content="image/jpeg" />
         <meta name="twitter:card" content="summary_large_image" />
         <meta name="twitter:title" content="@yield('title')" />
         <meta name="twitter:description" content="@yield('description')" />
         <meta name="twitter:image" content="@yield('image')" />
         <meta name="google-site-verification" content="PLJcjeV67apdg5SBYGKxjIgUFXAtAK2gEWvjQHvZVmw">
         <!-- Fav Icon -->
         <link rel="icon" href="{{url(''.$setting->favicon)}}" type="image/x-icon">
  
        <link rel="StyleSheet" href="{{asset('frontend/css/font-awesome.min.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/bootstrap.min.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/style.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/iconsmind.min.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/style.responsive.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/hover-min.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/animate.min.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/global.hotline.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/global.contact_list.css')}}">
        <link href="{{asset('frontend/css/owl.carousel.min.css')}}" rel="stylesheet" />
        <link href="{{asset('frontend/css/owl.theme.default.min.css')}}" rel="stylesheet" />
        <link rel="StyleSheet" href="{{asset('frontend/css/global.owl_carousel.css')}}">
        <link rel="StyleSheet" href="{{asset('frontend/css/shops.css')}}" />
        <link rel="StyleSheet" href="{{asset('frontend/css/block.product_cat.css')}}">
        <link href="{{asset('frontend/css/services.css')}}" rel="stylesheet" />
        <link rel="StyleSheet" href="{{asset('frontend/css/global.hotline_fixed.css')}}">
        <link href="{{asset('frontend/css/sm-core-css.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/css/sm-blue.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/css/jquery.smartmenus.bootstrap.css')}}" rel="stylesheet">
        <link rel="stylesheet" href="{{asset('frontend/css/main.css')}}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        @yield('css')
        <style type="text/css">
            .show_hotline_fixed {
            top:  100px;
            right:10px;
            }
            .news_list_group {
            padding:40px 0;
            margin:0;
            position:relative;
            width:100%;
            display:block;
            }
            .news_list_group .item {
            padding:0;
            margin:0;
            position:relative;
            width:100%;
            display:block;
            }
            .news_list_group .item .simg {
            padding:0;
            margin:0;
            position:relative;
            width:100%;
            height:200px;
            overflow:hidden;
            display:block;
            }
            .news_list_group .item .simg img {
            bottom:0;
            left:0;
            margin:auto;
            height:auto;
            min-height:200px;
            width:100%;
            position:absolute;
            right:0;
            top:0;
            vertical-align:middle;
            backface-visibility:hidden;
            box-shadow:0 0 1px rgba(0, 0, 0, 0);
            transform:translateZ(0px);
            transition-duration:0.3s;
            transition-property:transform;
            }
            .news_list_group .item .sdes {
            padding:0;
            margin:0;
            position:relative;
            width:100%;
            display:block;
            }
            .news_list_group .item .sdes h4 {
            padding:20px 0;
            margin:0;
            display:flex;
            align-items:center;
            height:100px;
            width:100%;
            font-size:19px;
            line-height: 23px;
            }
            .news_list_group .item .sdes p {
            padding:0;
            margin:0;
            position:relative;
            width:100%;
            display:block;
            }
            @media (max-width: 767px) { 
            .news_list_group {
            padding: 20px 0 0;
            }
            .news_list_group .item {
            margin-bottom: 15px;
            }
            }
            .banner_popup {
            border: 4px solid #ffffff;
            -moz-box-shadow: 0px 1px 12px rgba(000,000,000,0.6), inset 0px 0px 11px rgba(180,198,250,1);
            -webkit-box-shadow: 0px 1px 12px rgba(000,000,000,0.6), inset 0px 0px 11px rgba(180,198,250,1);
            box-shadow: 0px 1px 12px rgba(000,000,000,0.6), inset 0px 0px 11px rgba(180,198,250,1);
            }
            .dis_banner {
            display: none;
            }
            .close_button {
            background-color: #333;
            color: #fff;
            line-height: 0px;
            height: 45px;
            width: 45px;
            border: 4px solid #fff;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            position: absolute;
            padding:0;
            margin:0;
            font-size: 25px;
            top:-25px;
            right:-25px;
            }
        </style>
    </head>
    <body>
        <div class="bongmo"></div>
        <div class="container">
            <div class="modal-dangki">
                <i class="fa-solid fa-xmark" style="float: right; font-size:20px; color:white"></i>
                <h1 class="title-h1">Gửi thông tin đăng kí </h1>
                <br>
                <br>
                <form action="{{route('postcontact')}}" method="post">
                  @csrf
                  <input type="text" class ="form-control" name="name" id="" placeholder="Enter Name" required>
                  <input type="phone" class ="form-control" name="phone" id="" placeholder="Enter Phone" required>
                  <input type="email" class ="form-control" name="email" id="" placeholder="Enter Email" required>
                  <textarea name="mess" id="" cols="40" rows="10" required></textarea>
                  <br>
                  <input type="submit" class="btn-success" value="Gửi thông tin">
                </form>
              </div>
        </div>
        <noscript>
        </noscript>
       @include('layouts.header.index')
            @yield('content')
        @include('layouts.footer.index')
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <a id="back-to-top" href="#"><i class="fa-solid fa-angle-up"></i></a>
        <!-- SiteModal Required!!! -->
        <div id="sitemodal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <em class="fa fa-spinner fa-spin">&nbsp;</em>
                    </div>
                    <button type="button" class="close" data-dismiss="modal">
                    <span class="fa fa-times"></span>
                    </button>
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
      
        <div id="openidResult" class="nv-alert" style="display:none"></div>
        <div id="openidBt" data-result="" data-redirect=""></div>
        <div class="fb-customerchat"
            attribution=setup_tool
            page_id="112642138918906 "
            logged_in_greeting="Chào bạn, Bạn liên hệ Fanpage Nhất Dáng Nhì Da. Hỗ trợ liên hệ. Hotline: 0912.499.920"
            logged_out_greeting="Chào bạn, Bạn liên hệ Fanpage Nhất Dáng Nhì Da. Hỗ trợ liên hệ. Hotline: 0912.499.920"></div>
        <script src="{{asset('frontend/js/jquery.min.js')}}"></script>
        <script>
            $('.btn-site').click(function (e) { 
              e.preventDefault();
            $('.modal-dangki').addClass('active');
            $('.bongmo').addClass('active');
            
              
            });
            $('.fa-xmark').click(function (e) { 
                e.preventDefault();
                $('.modal-dangki').removeClass('active');
                $('.bongmo').removeClass('active');
                
            });
            $('.bongmo').click(function (e) { 
                e.preventDefault();
                $('.modal-dangki').removeClass('active');
                $(this).removeClass('active');
                
            });
          </script>
        <script
            >var nv_base_siteurl="/",nv_lang_data="vi",nv_lang_interface="vi",nv_name_variable="nv",nv_fc_variable="op",nv_lang_variable="language",nv_module_name="home",nv_func_name="main",nv_is_user=0, nv_my_ofs=7,nv_my_abbr="ICT",nv_cookie_prefix="nv4",nv_check_pass_mstime=1738000,nv_area_admin=0,nv_safemode=0,theme_responsive=1;</script>
        <script
            src="{{asset('frontend/js/vi.js')}}"></script>
        <script
            src="{{asset('frontend/js/global.js')}}"></script>
        <script
            src="{{asset('frontend/js/main.js')}}"></script>
        <script src="{{asset('frontend/js/owl.carousel.min.js')}}"></script>
        <script src="{{asset('frontend/js/shops.js')}}"></script>
        <script>
            $(function() {
            	$('#main-menu').smartmenus({
            		subMenusMinWidth:	'15em',
            		subMenusMaxWidth:	'25em',
            		subMenusSubOffsetX : 6,
            		subMenusSubOffsetY : -8
            	});
            }); 
        </script>
        <script>
            $(document).ready(function() {
            	$('.owl-carousel').owlCarousel({
            		animateIn : 'fadeIn',
            		animateOut : 'fadeOut',
            		loop : true,
            		items : 1,
            		responsiveClass : true,
            		autoplay : true,
            		autoplayTimeout : 3000,
            		delay: 4000,
            		autoplayHoverPause : true
            	})
            })
        </script>
        <script>
            var cwidth = $(window).width();
            if (cwidth > 499) {
            	$(function() {
            		$(window).bind('scroll', function() {
            			if ($(window).scrollTop() > 250) {
            				$('.show_hotline .stitle').hide('toggle');
            			} else {
            				$('.show_hotline .stitle').show('toggle');
            			}
            
            		});
            	});
            }
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
            	var pcs_height_item = pcs_new_height = 0;
            	$("#bcs_nv7 .list_item .item .i_content h4").each(function(index) {
            		pcs_height_item = $(this).height();
            		if (pcs_height_item > pcs_new_height) {
            			pcs_new_height = pcs_height_item;
            		}
            	});
            	if (pcs_new_height > 0) {
            		$("#bcs_nv7 .list_item .item .i_content h4").css({
            			"height" : pcs_new_height
            		});
            	}
            	var pcs_height_item = pcs_new_height = 0;
            	$("#bcs_nv7 .list_item .item .i_content .showprice").each(function(index) {
            		pcs_height_item = $(this).height();
            		if (pcs_height_item > pcs_new_height) {
            			pcs_new_height = pcs_height_item;
            		}
            	});
            	if (pcs_new_height > 0) {
            		$("#bcs_nv7 .list_item .item .i_content .showprice").css({
            			"height" : pcs_new_height
            		});
            	}
            
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
            	var pcs_height_item = pcs_new_height = 0;
            	$("#bcs_nv9 .list_item .item .i_content h4").each(function(index) {
            		pcs_height_item = $(this).height();
            		if (pcs_height_item > pcs_new_height) {
            			pcs_new_height = pcs_height_item;
            		}
            	});
            	if (pcs_new_height > 0) {
            		$("#bcs_nv9 .list_item .item .i_content h4").css({
            			"height" : pcs_new_height
            		});
            	}
            	var pcs_height_item = pcs_new_height = 0;
            	$("#bcs_nv9 .list_item .item .i_content .showprice").each(function(index) {
            		pcs_height_item = $(this).height();
            		if (pcs_height_item > pcs_new_height) {
            			pcs_new_height = pcs_height_item;
            		}
            	});
            	if (pcs_new_height > 0) {
            		$("#bcs_nv9 .list_item .item .i_content .showprice").css({
            			"height" : pcs_new_height
            		});
            	}
            
            });
        </script>
        <script src="{{asset('frontend/js/jquery.popupoverlay.js')}}"></script>
        <script>
            $(document).ready(function() {
            	//var cookie = document.cookie;
            	//if (cookie == "") {
            	$('#banner_popup').popup({
            		autoopen : true,
            		detach : true,
            		opacity : 0.3,
            		closeelement : '.close_button',
            		transition : 'all 0.3s'
            	});
            	//} else {
            	//$(".banner_popup").addClass("dis_banner");
            	//}
            }); 
        </script>
        <script>
            function call_modal(id) {
            	$('#idmodals_services').removeData('bs.modal');
            	var url = nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=services&' + nv_fc_variable + '=modal' + '&id=' + id;
            	$.post(url + '&id=' + id, function(res) {
            		$('#idmodals_services .modal-body').html(res);
            		$('#idmodals_services').modal('show');
            	});
            }
        </script>
        <script src="{{asset('frontend/js/bootstrap.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('frontend/js/jquery.smartmenus.js')}}"></script>
        <script type="text/javascript" src="{{asset('frontend/js/jquery.smartmenus.bootstrap.js')}}"></script>
      @yield('js')
    </body>
</html>