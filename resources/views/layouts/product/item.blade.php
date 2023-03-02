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
     <div class="showdetail">
      <span class="other"><a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'slug'=>$pro['slug']])}}">Chi tiết</a></span>
      <a href="{{route('detailProduct',['cate'=>$pro['cate_slug'],'slug'=>$pro['slug']])}}" title="Chi tiết"><span class="detail"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
   </div>
  </div>
</div>
</div>