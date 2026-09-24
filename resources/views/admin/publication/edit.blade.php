@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage Publication Edit</title>
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
					<h4 class="pull-left page-title">Manage Publication Edit</h4>
					<ol class="breadcrumb pull-right">
                        <li class="active"><a href="{{route('admin.manage.publication')}}"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a></li>
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
								<form role="form" action="{{route('admin.manage.publication.update')}}" id="frm" method="post" enctype="multipart/form-data">
									@csrf
									<input type="hidden" name="id" value="{{@$data->id}}">
									<div class="form-group rm03">
										<label for="title">Title (In Bengali)</label>
										<input type="text"  class="form-control" value="{{@$data->title}}"  placeholder="Enter name"  name="title" >
									</div>
									<div class="clearfix"></div>
									<input type="hidden" name="redirects_to" value="{{URL::previous()}}" />
									<div class="form-group rm03">
										<label for="title">Description (In Bengali) </label>
										<textarea class="form-control" name="description" style="height: 300px;">{{@$data->description}}</textarea>
									</div>


									<div class="form-group rm03">
										<label for="title">Title (In English)</label>
										<input type="text"  class="form-control"  placeholder="Enter name"  name="title_english" value="{{@$data->title_english}}">
									</div>
									<div class="clearfix"></div>

									<div class="form-group rm03">
										<label for="title">Description (In English) </label>
										<textarea class="form-control" name="description_english" style="height: 300px;">{{@$data->description_english}}</textarea>
									</div>

									<div class="form-group rm50">
										<label for="title">Image </label>
										<input type="file"  class="form-control" name="image" onchange="fun1()" id="icon">
									</div>

									{{-- preview-image --}}
                                   <div class="form-group rm03">
                                    <img style="width: 50%;height: 400px" id="img2" src="{{URL::to('storage/publication')}}/{{@$data->image}}">
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

@endsection