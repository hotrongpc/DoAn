@extends('layouts.new-master')
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 <!-- ====================================== /loc ket qua theo lua chon================================= -->
        <!-- ===================================danh muc dien thoai ==================================-->
        @foreach($data as $row)
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding">
            <div class="thumbnail mobile">              
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('public/uploads/products/'.$row->images)!!}" alt="{!!$row->name!!}">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-mobile">{!!$row->name!!}</small></h1>
                  <li>{!!$row->intro!!}</li>
                  <span class="label label-info">Khuyễn mãi</span>   
                  @if ($row->promo1!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo1!!}</li>
                  @endif
                   
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('mobile/'.$row->id.'-'.$row->slug)!!}" title="Chi tiết">
                  <span class="label label-info">Ưu đãi khi mua</span>   
                  @if ($row->promo1!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo1!!}</li>
                  @endif
                  <span class="label label-warning">Cấu Hình Nổi bật</span> 
                  <li><strong>Màu</strong> : <i>  {!!$row->cpu!!}</i></li>
                  <li><strong>Chất Liệu</strong> : <i>{!!$row->screen!!} </i></li> 
                  <li><strong>Ngày sản xuất</strong> :  <i>{!!$row->cam1!!}</i> Kích thước <i>{!!$row->cam2!!}</i></li> 
                  <li><strong>Bộ sưu tập</strong> :<i> {!!$row->os!!} </i> <strong> Nơi sản xuất</strong> :<i> {!!$row->storage!!} </i></li> 
                  <li><strong>Qùa</strong> :<i> {!!$row->pin!!}</i></li>
                </a>
              </div>
                <span class="btn label-warning"><strong>{!!number_format($row->price)!!}</strong>Vnd </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Thêm vào giỏ </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 -->
        @endforeach
      <div class="clearfix">
        
      </div>
      <!-- ===================================================================================/products ============================== -->
      {!!$data->render();!!}
@endsection