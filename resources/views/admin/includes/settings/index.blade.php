

@extends('admin.layouts.app')


@section('title')
<title>Astroaquila | Manage Settings</title>
@endsection

@section('style')
@include('admin.includes.style')

@endsection

@section('content')
<!-- Top Bar Start -->
@include('admin.includes.header')
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
@include('admin.includes.sidebar')
<!-- ============================================================== -->
  <!-- Start right Content here -->
  <!-- ============================================================== -->
  <div class="content-page">
    <!-- Start content -->
    <div class="content">
      <div class="container">

        <!-- Page-Title -->
        <div class="row">
          <div class="col-sm-12">
            <h4 class="pull-left page-title">Manage Settings</h4>
            <ol class="breadcrumb pull-right">
              
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="clearfix"></div>
            <div class="panel panel-default">
              <div class="panel-heading rm02 rm04">
                @include('admin.includes.message')
                <form role="form" method="post" action="{{route('admin.manage.settings.update')}}" id="search_form">
                	@csrf
                 







                  <div class="form-group">
                    <label for=""> Distance Range</label>
                    <div class="slider_rnge">
                            <div id="slider-range" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                              <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div>
                              <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 0%;"></span> <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all" style="left: 100%;"></span> </div> <span class="range-text">
                                      <input type="text" class="price_numb" readonly id="amount" name="amount">
                                                <input type="hidden" class="price_numb" readonly id="amount1" name="amount1">
                                                <input type="hidden" class="price_numb" readonly id="amount2" name="amount2">
                                     </span> </div>
                                     <div class="clearfix"></div>
                  </div>

                  
                                           <div class="clearfix"></div>
                  <div class="rm05">
                    <button class="btn btn-primary waves-effect waves-light w-md" type="submit">Search</button>
                  </div>
                </form>
                <div class="clearfix"></div>
              </div>
              
            </div>
          </div>
        </div>
        <!-- End row -->

      </div>
      <!-- container -->

    </div>
    <!-- content -->

   @include('admin.includes.footer')
  </div>
  <!-- ============================================================== -->
  <!-- End Right content here -->
@endsection
@section('script')
@include('admin.includes.script')
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script>
  
  $(document).ready(function(){
  	 var value1 = '{{@$data->from_km}}';
        var value2 = '{{@$data->to_km}}';
        if(value1==''){
            value1=0;
        }
        if(value2==''){
            value2 = '{{100}}';
        }
    $("#slider-range").slider({
    range: true,
    min: 0,
    max: '{{100}}',
    values: [value1, value2],
    slide: function(event, ui) {
      $("#amount").val("INR " + ui.values[0] + " - INR " + ui.values[1]);
      $("#amount1").val(ui.values[0]);
      $("#amount2").val(ui.values[1]);
    }
  });
  $("#amount").val("KM " + $("#slider-range").slider("values", 0) + " - KM " + $("#slider-range").slider("values", 1));
        $("#amount1").val($("#slider-range").slider("values", 0));
        $("#amount2").val($("#slider-range").slider("values", 1));
  

});
  </script>

@endsection
