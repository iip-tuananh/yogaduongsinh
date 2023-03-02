<aside id="flatsome_recent_posts-17" class="widget flatsome_recent_posts" style="font-size: 16px">
    <span class="widget-title " style="color: white"><span>TIN TỨC NỔI BẬT</span></span>
    <div class="is-divider small"></div>
    <ul>
       @foreach ($hotBlogs as $item)
          <li class="recent-blog-posts-li">
             <div class="flex-row recent-blog-posts align-top pt-half pb-half">
                <div class="flex-col mr-half">
                   <div class="badge post-date  badge-circle-inside">
                      <div class="badge-inner bg-fill" style="background: url('{{$item->image}}'); border:0;">
                      </div>
                   </div>
                </div>
                <!-- .flex-col -->
                <div class="flex-col flex-grow">
                   <a href="{{route('detailBlog',['slug'=>$item->slug])}}" title="{{languageName($item->title)}}">{{languageName($item->title)}}</a>
             
                </div>
             </div>
             <!-- .flex-row -->
          </li>
       @endforeach

    </ul>
 </aside>