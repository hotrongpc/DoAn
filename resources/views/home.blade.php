@extends('layouts.master')
@section('content')
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">   
        <!-- danh muc dien thoai -->
        @foreach($mobile as $row)        
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding">
            <div class="thumbnail mobile">              
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('public/uploads/products/'.$row->images)!!}" alt="img responsive">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-mobile">{!!$row->name!!}</small></h1>
                  <li>{!!$row->intro!!}</li>
                  <span class="label label-info">Khuyễn mãi</span>   
                  <li><span class="glyphicon glyphicon-hand-right"></span> {!!$row->promo1!!}</li> 
                  
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('mobile/'.$row->id.'-'.$row->slug)!!}" title="Xem chi tiết">
                  <span class="label label-info">Ưu đãi khi mua</span>   
                  <li><span class="glyphicon glyphicon-hand-right"></span> {!!$row->promo1!!}</li> 
                 
                  <span class="label label-warning">Thông tin cơ bản</span> 
                  <li><strong>Màu</strong> : <i> {!!$row->cpu!!}</i></li>
                  <li><strong>Chất liệu</strong> : <i>{!!$row->screen!!} </i></li> 
                  <li><strong>Ngày sản xuất</strong> :  <i>{!!$row->cam1!!}            <strong>Kích thước:</strong> :  <i>{!!$row->cam2!!}
                 
                  <li><strong>Bộ sưu tập</strong> :<i> {!!$row->os!!} </i> <strong> Nơi sản xuất</strong> :<i> {!!$row->storage!!} </i></li> 
                  <li><strong>Qùa</strong> :<i> {!!$row->pin!!}</i></li>
                </a>
              </div>
                <span class="btn label-warning"><strong>{!!$row->price!!}</strong> Đ </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Thêm vào giỏ </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 -->
          @endforeach
          <!-- danh muc dien thoai -->
       
          <div class="clearfix">            
          </div>
          <a href="http://api.hostinger.vn/redir/1309904" target="_blank"> 
            <img src="public/images/slides/thumbs/qc5.jpg" alt="Hosting Miễn Phí"  width="100%" height="250" />
          </a>

        <!--========================== phan danh muc laptop   =========================================  -->
          <div id="laptop"></div>
          @foreach($laptop as $row)
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding" >
            <div class="thumbnail">          
              <div class="hienthi">
                <img class="img-responsive" src="{!!url('public/uploads/products/'.$row->images)!!}" alt="img responsive">
                <div class="caption">
                  <h1><small><strong class="title-pro">{!!$row->name!!}</strong></small></h1>
                  <p>    
                      <li><i>{!!$row->intro!!}</i></li>             
                      <span class="label label-info ">Ưu đãi khi mua</span>
                      <li><span class="glyphicon glyphicon-hand-right"></span> {!!$row->promo1!!}</li> 
                     
                  </p>
                  <p>
                    <span class="btn label-warning">Giá : <strong>{!!$row->price!!}</strong> Đ </span>
                  </p>
                </div>
              </div>
              <div class="tomtat">
                <div class="thongtin">
                  <a href="{!!url('laptop/'.$row->id.'-'.$row->slug)!!}" title="Xem chi tiết">
                    <span class="label label-info ">Thông tin cơ bản</span>   
                    <li><span class="glyphicon glyphicon-hand-right"></span> {!!$row->promo1!!}</li> 
                    
                    <span class="label label-warning">Cấu Hình Nổi bật</span> 
                    <li><strong>Màu</strong> : <i>{!!$row->cpu!!}</i></li>
                    <li><strong>Công nghệ </strong> : <i>{!!$row->ram!!}</i></li>
                    <li><strong>Nơi sản xuất</strong> : <i> {!!$row->storage!!}</i></li>
                    <li><strong>Chất liệu</strong> : <i> {!!$row->screen!!} </i></li> 
                    <li><strong>Thương hiệu</strong> : <i> {!!$row->vga!!}</i></li> 
                    <li><strong>Bộ sưu tập</strong> :<i> {!!$row->os!!}</i></li> 
                    <li><strong>Quà</strong> :<i> {!!$row->pin!!}</i></li>
                  </a>
                </div>                
                  <div class="price">  
                    <span class="btn btn-info btn-block ">Giá : <strong>{!!$row->price!!}</strong> Đ</span>   
                    <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success btn-block">Thêm vào giỏ</a> 
                  </div>                  
              </div> 
            </div>
          </div>
        @endforeach
        <div class="clearfix">
          
        </div>
          <a href="http://api.hostinger.vn/redir/1309904" target="_blank"> 
            <img src="public/images/slides/thumbs/qc4.jpg" alt="Hosting Miễn Phí"  width="100%" height="250" />
          </a>
<!-- =============== danh muc may tinh ===================================== -->
        <div id="pc"></div>
        @foreach($pc as $row)
           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 no-padding">
            <div class="thumbnail pc">              
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('public/uploads/products/'.$row->images)!!}" alt="img responsive">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-pc">{!!$row->name!!}</small></h1>
                  <li> Màu: {!!$row->cpu!!}</li>
                  <li> Công nghệ :{!!$row->ram!!}</li>
                  <li>Nơi sản xuất: {!!$row->storage!!} </li>
                  <span class="label label-info">Khuyễn mãi</span>   
                  <li><span class="glyphicon glyphicon-hand-right"></span> {!!$row->promo1!!}</li> 
                
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('pc/'.$row->id.'-'.$row->slug)!!}" title="Xem chi tiết">                   
                  <span class="label label-warning">Cấu hình chi tiết</span> 
                  <li><strong>Màu</strong> : <i>  {!!$row->cpu!!}</i></li>
                  <li><strong>Nơi sản xuất</strong> : <i> {!!$row->storage!!}</i></li> 
                  <li><strong>Công Nghệ</strong> :<{!!$row->os!!}  </i> - <strong> </strong> :<i>{!!$row->ram!!}</i></li> 
                  <li><strong>Thương Hiệu</strong> :<i> {!!$row->vga!!}</i></li>
                  <li><strong>Bao gồm </strong> : <i> {!!$row->connect!!}</i></li> 
                </a>
              </div>
                <span class="btn label-warning">Giá : <strong>{!!$row->price!!}</strong> Đ </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Thêm vào giỏ </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 item products -->
        @endforeach      

        </div> <!-- /col 12 -->     
@endsection
