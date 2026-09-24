@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage Gallery Edit</title>
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
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">
	<!-- Start content -->
	<div class="content">
		<div class="wraper container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="pull-left page-title">Manage Gallery Edit</h4>
					<ol class="breadcrumb pull-right">
                        <li class="active"><a href="{{route('admin.manage.gallery')}}"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a></li>
                    </ol>
				</div>
			</div>
			@include('admin.includes.message')
			
			<div class="row">
				<div class="col-lg-12">
					<div>
						<!-- Personal-Information -->
						<div class="panel panel-default panel-fill">
							
							<div class="panel-body rm02 rm04">
								<form role="form" action="{{route('admin.manage.gallery.add.update')}}" id="frm" method="post" enctype="multipart/form-data">
									@csrf
									<input type="hidden" name="id" value="{{@$data->id}}">
									<div class="form-group rm03">
										<label for="title">Title</label>
										<input type="text"  class="form-control"  placeholder="Enter name" value="{{@$data->name}}"  name="title" >
									</div>
									<div class="clearfix"></div>

									<div class="form-group rm03">
										<label for="title">Gallery Type </label>
										<select name="type" id="type" class="form-control">
										<option value="I" @if(@$data->type=="I") selected @endif>Image</option>
										<option value="Y" @if(@$data->type=="Y") selected @endif>Youtube</option>	
									        </select>
									</div>


									<div class="image_div" @if(@$data->type=="Y") style="display:none" @endif>
									<div class="form-group rm50">
										<label for="title">Image </label>
										<input type="file"  class="form-control" name="image" onchange="fun1()" id="icon">
									</div>

									{{-- preview-image --}}
					                                   <div class="form-group rm03">
					                                    <img style="width: 50%;height: 400px" id="img2" src="{{URL::to('storage/gallery')}}/{{@$data->file}}">
					                                   </div>
					                                </div>

					                                <div class="video_div" @if(@$data->type=="I") style="display:none" @endif>
					                                <div class="form-group rm03"> 	
					                                <label for="title">Youtube Link</label>
									<input type="text"  class="form-control"  placeholder="Enter youtube link"  name="video" >
								       </div>
					                                </div>
									
									<div class="clearfix"></div>
							
									
									<div class="clearfix"></div>
									<div class="col-lg-12" style="margin-top: 10px;">
										<button class="btn btn-primary waves-effect waves-light w-md" type="submit">Update</button>
									</div>
								</form>
							</div>
						</div>
						<!-- Personal-Information -->
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<!-- content -->
	
</div>
<!-- ============================================================== -->
<!-- End Right content here -->
@section('footer')
@include('admin.includes.footer')
@endsection
@endsection
{{-- end content --}}
@section('script')
@include('admin.includes.script')
{{-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> --}} {{-- for datepicker --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js" integrity="sha512-UdIMMlVx0HEynClOIFSyOrPggomfhBKJE28LKl8yR3ghkgugPnG6iLfRfHwushZl1MOPSY6TsuBDGPK2X4zYKg==" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
$('#frm').validate({
rules:{
title:{
required:true,
},
description:{
required:true,
},
image:{
required:true,
},
},
messages:{
//  link:{
//     required:" social link is mandatory",
//     min:"Enter valid links"
// }
}
});
});
</script>

<script>
        function fun1(){
        var i=document.getElementById('icon').files[0];
        var b=URL.createObjectURL(i);
        $("#img2").attr("src",b);
    }
</script> 


<script type="text/javascript">
   $('#type').on('change',function(){

   	var selected_value = $('#type').val();
   	
   	if(selected_value=="I")
   	{
   	  $('.image_div').show();
   	  $('.video_div').hide();	
   	}else{
   	  $('.image_div').hide();
   	  $('.video_div').show();	
   	}
   })	
</script>
@endsection