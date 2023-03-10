@extends('layouts.new-master')
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <h3 class="panel-title">
      <span class="glyphicon glyphicon-home"><a href="{!!url('/')!!}" title=""> Home</a></span> 
      <span class="glyphicon glyphicon-chevron-right" style="font-size: 11px;"></span><a href="{!!url('/tee')!!}" title=""> Tee</a>
      <span class="glyphicon glyphicon-chevron-right" style="font-size: 11px;"></span> <a href="#" title="">{!!$data->name!!}</a>
    </h3>              
    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 no-padding">              
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
          <div class="panel panel-success">
            <div class="panel-body">
              <div class="row">
              <!-- hot new content -->
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding">
                  <h3 class="pro-detail-title"><a href="#" title="">{!!$data->name!!}</a></h3>
                  <hr>
                  <div class="row">
                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                      <div class="img-box">
                        <img class="img-responsive img-mobile" src="{!!url('/public/uploads/products/'.$data->images)!!}" alt="{!!$data->name!!}">
                      </div>
                      <div class="img-slide">
                        <div class="panel panel-default text-center">        
                          <div id="links">
                            @foreach($data->detail_img as $row)
                              <a href="{!!url('/public/uploads/products/details/'.$row->images_url)!!}" title="{!!$data->name!!}" data-gallery>
                                  <img src="{!!url('/public/uploads/products/details/'.$row->images_url)!!}" alt="{!!$data->name!!}" width="30" height="40">
                              </a>
                            @endforeach                              
                          </div>
                            <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
                            <div id="blueimp-gallery" class="blueimp-gallery">
                                <!-- The container for the modal slides -->
                                <div class="slides"></div>
                                <!-- Controls for the borderless lightbox -->
                                <h3 class="title"></h3>
                                <a class="prev">???</a>
                                <a class="next">???</a>
                                <a class="close">??</a>
                                <a class="play-pause"></a>
                                <ol class="indicator"></ol>
                                <!-- The modal dialog, which will be used to wrap the lightbox content -->
                                <div class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title"></h4>
                                            </div>
                                            <div class="modal-body next"></div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left prev">
                                                    <i class="glyphicon glyphicon-chevron-left"></i>
                                                    Previous
                                                </button>
                                                <button type="button" class="btn btn-primary next">
                                                    Next
                                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                          </div>                       
                        </div>                     
                       <label class="btn btn-large btn-block btn-warning">{!!number_format($data->price)!!} vnd</label>
                    </div>
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                      <div class="panel panel-info" style="margin: 0;">
                        <div class="panel-heading" style="padding:5px;">
                          <h3 class="panel-title">Q??a T???ng</h3>
                        </div>
                        <div class="panel-body">
                          <div class="khuyenmai">
                            @if ($data->promo1!='')
                              <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$data->promo1!!}</li>
                            @endif
                                                                                
                          </div>                         
                        </div>
                      </div>
                      <div class="panel panel-info">
                        <div class="panel-body">
                         <div class="chinhsach">
                            <li><span class="glyphicon glyphicon-hand-right"></span> Trong h???p c??: {!!$data->packet!!} </li>
                            <li><span class="glyphicon glyphicon-hand-right"></span> G???m Tag,S???n Ph???m,Tem ch??nh h??ng</li>
                            <li><span class="glyphicon glyphicon-hand-right"></span> 1 ?????i 1 trong 1 th??ng v???i s???n ph???m l???i</li>
                         </div>
                        </div>
                      </div>
                      @if($data->status ==1)
                        <a href="{!!url('gio-hang/addcart/'.$data->id)!!}" title="" class="btn btn-large btn-block btn-primary" style="font-size: 20px;">?????t h??ng ngay</a>
                      @else
                        <a href="" title="" class="btn btn-large btn-block btn-primary disabled" style="font-size: 20px;">T???m h???t h??ng</a>
                      @endif
                    </div>
                  </div>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead>
                        <tr>
                          <th colspan="2">TH??NG TIN S???N PH???M: <strong>{!!$slug!!}</strong> </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Ch???t li???u: </td>
                          <td>{!!$data->pro_details->screen!!}</td>
                        </tr>
                        <tr>
                          <td>M??u:</td>
                          <td>{!!$data->pro_details->cpu!!}</td>
                        </tr>
                        <tr>
                          <td>H??ng:</td>
                          <td>{!!$data->pro_details->vga!!}</td>
                        </tr>
                        <tr>
                          <td>C??ng Ngh???: </td>
                          <td>{!!$data->pro_details->ram!!}</td>
                        </tr>
                        <tr>
                          <td>N??i s???n xu???t:</td>
                          <td>{!!$data->pro_details->storage!!}</td>
                        </tr>
                        <tr>
                          <td>N??i s???n xu???t:</td>
                          <td>{!!$data->pro_details->cam1!!}</td>
                        </tr>
                        <tr>
                          <td>K??ch th?????c:</td>
                          <td>{!!$data->pro_details->cam2!!}</td>
                        </tr>
                        <tr>
                          <td>B??? s??u t???p:</td>
                          <td>{!!$data->pro_details->exten_memmory!!}</td>
                        </tr>
                        <tr>
                          <td>??i k??m</td>
                          <td>{!!$data->packet!!}</td>
                        </tr>                        
                        <tr>
                          <td>Qu?? t???ng:</td>
                          <td>{!!$data->pro_details->connect!!}</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                  <h2> <small> ????nh gi?? chi ti???t s???n ph???m</small></h2>
                  <div class="accordion-group">
                    <div class="accordion-heading">
                      <p class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                        <div class="accordion-inner">
                          {!!$data->r_intro!!}
                        </div>
                      </p>
                    </div>
                    <div id="collapseTwo" class="accordion-body collapse">
                      <div class="accordion-inner">
                        {!!$data->review!!}
                      </div>
                    </div>
                    <button class="SeeMore btn-primary" data-toggle="collapse" href="#collapseTwo"><b class="caret"></b> Xem chi ti???t</button>
                  </div>
                </div>
              </div>
              <div class="row">
                <hr>
                <h2 style="padding-left: 20px;"><small>Tin t???c m???i</small></h2>
                <hr>
                 @include('modules.tin-tuc')  
                 
              </div><!-- /row -->
            </div>
          </div>   
        </div>
      </div>     
    </div> 
    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding">            
      <!-- panel inffo 1 -->
      <div class="panel panel-info">
        <div class="panel-heading">
          <h3 class="panel-title text-center">Xem th??m</h3>
        </div>
        <div class="panel-body no-padding">
          <?php 
          $mobile = DB::table('products')
                ->join('category', 'products.cat_id', '=', 'category.id')
                ->join('pro_details', 'pro_details.pro_id', '=', 'products.id')
                ->where('category.parent_id','=','26')
                ->select('products.*','pro_details.cpu','pro_details.ram','pro_details.screen','pro_details.vga','pro_details.storage','pro_details.exten_memmory','pro_details.cam1','pro_details.cam2','pro_details.sim','pro_details.connect','pro_details.pin','pro_details.os','pro_details.note')
                ->orderBy('products.created_at', 'desc')
                ->paginate(2); 

        ?>
        @foreach($mobile as $row)
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding">
            <div class="thumbnail mobile">              
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('/public/uploads/products/'.$row->images)!!}" alt="{!!$row->name!!}">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-mobile">{!!$row->name!!}</small></h1>
                  <li>{!!$row->intro!!}</li>
                  <span class="label label-info">Khuy???n m??i</span>   
                  @if ($row->promo1!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo1!!}</li>
                  @endif
                    
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('mobile/'.$row->id.'-'.$row->slug)!!}" title="Chi ti???t">
                  <span class="label label-info">??u ????i khi mua</span>   
                  @if ($row->promo1!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo1!!}</li>
                  @endif
                    <li><span class="glyphicon glyphicon-ok-sign"></span></li> 
                  <span class="label label-warning">C???u H??nh N???i b???t</span> 
                  <li><strong>M??u</strong> : <i>  {!!$row->cpu!!}</i></li>
                  <li><strong>M??n h??nh</strong> : <i>{!!$row->screen!!} </i></li> 
                  <li><strong>S???n xu???t</strong> :  <i>{!!$row->cam1!!}</i> K??ch th?????c <i>{!!$row->cam2!!}</i></li> 
                  <li><strong>B??? s??u t???p</strong> :<i> {!!$row->os!!} </i> <strong> N??i s???n xu???t</strong> :<i> {!!$row->storage!!} </i></li> 
                  <li><strong>Qu??</strong> :<i> {!!$row->pin!!}</i></li>
                </a>
              </div>
                <span class="btn label-warning"><strong>{!!number_format($row->price)!!}</strong>Vnd </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Th??m v??o gi??? </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 -->
        @endforeach        

        </div>
      </div> <!-- /panel info 2  qu???n c??o 1          -->
      
    <!-- panel info 2  qu???n c??o 1          -->          
    <div class="panel panel-info">
      <div class="panel-heading">
        <h3 class="panel-title text-center">S??? ki???n HOT</h3>
      </div>
      <div class="panel-body no-padding">
      <a href="#" title=""><img src="{!!url('public/images/slides/thumbs/qc1.jpg')!!}" alt="" width="100%" height="100%"> </a> <br>
        <a href="#" title=""><img src="{!!url('public/images/slides/thumbs/qc2.jpg')!!}" alt="" width="100%" height="100%"> </a> <br>
        <a href="#" title=""><img src="{!!url('public/images/slides/thumbs/qc3.jpg')!!}" alt="" width="100%" height="100%"> </a>
      </div>
    </div> <!-- /panel info 2  qu???n c??o 1          -->        
     <!-- /panel info 2  qu???n c??o 1          -->  
     <!-- fan pages myweb -->
    <div class="panel panel-info">
      <div class="panel-heading">
        <h3 class="panel-title">Fans Pages</h3>
      </div>
      <div class="panel-body">
        H??y <a href="#" title="">Like</a> FANPAGE
      </div>
    </div> <!-- /fan pages myweb -->        
  </div> 
</div>
<!-- ===================================================================================/news ============================== -->
@endsection