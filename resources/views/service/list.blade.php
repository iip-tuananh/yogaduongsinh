@extends('layouts.main.master')
@section('title')
{{$title_page}} 
@endsection
@section('description')
{{$title_page}}
@endsection
@section('image')
{{url(''.$banners[0]->image)}}
@endsection
@section('css')
@endsection
@section('content')
<main id="main" class="">
    <div id="content" class="blog-wrapper blog-archive page-wrapper">
        <header class="archive-page-header">
            <div class="row">
                <div class="large-12 text-center col">
                <h1 class="page-title is-large uppercase" align="left">
                    <span>{{$title_page}}</span>	
                </h1>
                </div>
            </div>
        </header>
       <div class="row row-large row-divided ">
          <div class="large-9 col">
             <div class="row large-columns-1 medium-columns- small-columns-1">
                @foreach ($services as $item)
                <div class="col post-item" >
                   <div class="col-inner">
                      <a href="{{route('serviceDetail',['slug'=>$item->slug])}}" class="plain">
                         <div class="box box-vertical box-text-bottom box-blog-post has-hover">
                            <div class="box-image" style="width:40%;">
                               <div class="image-cover" style="padding-top:56%;">
                                  <img width="533" height="400" src="{{$item->image}}" data-src="http://duocquangninh.vn/wp-content/uploads/2021/03/8-3-1-533x400.jpg" class="lazy-load attachment-medium size-medium wp-post-image" alt="" srcset="" data-srcset="{{$item->image}}" sizes="(max-width: 533px) 100vw, 533px" />  							  							  						
                               </div>
                            </div>
                            <!-- .box-image -->
                            <div class="box-text text-left" >
                               <div class="box-text-inner blog-post-inner">
                                  <h5 class="post-title is-large font-16">{{$item->name}}</h5>
                                  <div class="is-divider"></div>
                                  <p class="from_the_blog_excerpt limit-text-3 font-16">{!!languageName($item->description)!!}</p>
                               </div>
                               <!-- .box-text-inner -->
                            </div>
                            <!-- .box-text -->
                         </div>
                         <!-- .box -->
                      </a>
                      <!-- .link -->
                   </div>
                   <!-- .col-inner -->
                </div>
                @endforeach
                <!-- .col -->
             </div>
          </div>
          <!-- .large-9 -->
          <div class="post-sidebar large-3 col">
             <div id="secondary" class="widget-area " role="complementary">
                @include('blog.menublog')
             </div>
             <!-- #secondary -->
          </div>
          <!-- .post-sidebar -->
       </div>
       <!-- .row -->
    </div>
    <!-- .page-wrapper .blog-wrapper -->
 </main>
 </main>

@endsection
