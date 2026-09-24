@extends('admin.layouts.app')


@section('title')
<title>Manage Payment Logs</title>
@endsection

@section('style')
@include('admin.includes.style')
<style type="text/css">
	.error{
		color: red !important;
	}
</style>
@endsection

@section('content')
<!-- Top Bar Start -->
@include('admin.includes.header')
<!-- Top Bar End -->


<!-- ========== Left Sidebar Start ========== -->
@include('admin.includes.sidebar')
<!-- Left Sidebar End -->
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page manage-admin-user-pg">
	<!-- Start content -->
	<div class="content">
		<div class="container">
			
			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<h4 class="pull-left page-title">Manage Payment Logs</h4>
				</div>
			</div>
			 @include('admin.includes.message')  
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading rm02 rm04">
							<form role="form" method="post" action="{{route('payment.search')}}" id="form" class="search_filter">
								@csrf
								{{-- <input type="hidden" name="page" value="" id="page"> --}}
								<div class="form-group">
									<label for="category">Keyword Search</label>
									<input type="text" placeholder="Enter your Keyword" id="category" class="form-control" name="keyword" value="{{request('keyword')}}">
								</div>
								<div class="form-group">
									<label for="category">From Date</label>
									<input type="date" placeholder="Enter your Keyword" id="from_date" class="form-control" name="from_date" value="{{request('from_date')}}">
									<span id="form_date" style="display: none;">Please select from date</span>
								</div>
								<div class="form-group">
									<label for="category">To Date</label>
									<input type="date" placeholder="Enter your Keyword" id="to_date" class="form-control" name="to_date" value="{{request('to_date')}}">
									<span id="error" style="display: none;">To date must be gratter than from date.</span>
									<span id="error2" style="display: none;">Please select to date.</span>
								</div>
								
								
								<div class="clearfix"></div>
								
								
								<div class="rm05">
									<button class="btn btn-primary waves-effect waves-light w-md" type="submit">Search</button>
								</div>
							</form>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>S.no</th>
													
													<th>Customer Name</th>
													<th>Customer Email</th>
													<th>Customer Phone</th>
													<th>Amount</th>
													<th>Date</th>
													
													
													<th class="rm07">Action</th>
												</tr>
											</thead>
											<tbody>

												@if(count($payments)>0)
												@foreach($payments as $key=> $rev)
												<tr>
													<td>{{ $key+ $payments->firstItem() }}</td>
													<td>{{@$rev->customerName}}</td>
													<td>{{@$rev->customerEmail}}</td>	
													<td>{{@$rev->customerPhone}}</td>	
													<td>Rs . {{@$rev->amount}}</td>	
													<td>{{@$rev->created_at->format('d/m/Y')}}</td>
													<td class="rm07">
                                                        <a href="javascript:void(0);" class="action-dots" id="action{{$value->id}}"><img src="{{ URL::to('admin/assets/images/action-dots.png')}}" alt=""></a>
                                                        <div class="show-actions" id="show-{{$value->id}}" style="display: none;">
                                                            <span class="angle custom_angle"><img src="{{ URL::to('admin/assets/images/angle.png')}}" alt=""></span>
                                                            <ul>																
																
																
																
																<li><a onclick="return confirm('Are You Sure want to delete this data?');" href="{{route('manage.review.delete',$rev->id)}}">Delete</a></li>
																
																
															</ul>
														</div>
													</td>
												</tr>
												@endforeach
												@else
												<tr>
													<td colspan="7" style="text-align:center;">No Data Found</td>
												</tr>
												@endif
											</tbody>
										</table>
									</div>
									<div> {{@$payments->appends(request()->except(['page', '_token']))->links()}}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End row -->
			
		</div>
		<!-- container -->
		
	</div>
	<!-- content -->
	
	@section('footer')
	  @include('admin.includes.footer')
	@endsection
</div>

@endsection
<!-- END wrapper -->
@section('script')
@include('admin.includes.script')
<script>
var resizefunc = [];
</script>
<script type="text/javascript">
  @foreach (@$data as $value)
    $("#action{{$value->id}}").click(function(){
        $('.show-actions:not(#show-{{$value->id}})').slideUp();
        $("#show-{{$value->id}}").slideToggle();
    });
 @endforeach
</script>

<script type="text/javascript">
$('.search_filter').on('submit', function() {
var to = $('#to_date').val();

if ($('#from_date').val()!="")
{
  if ($('#to_date').val()=="") {
  	$("#error2").show();
   setTimeout(function() { $("#error2").hide();},5000);
return false;
   }
}
if (to!="") {
var from = $('#from_date').val();
if ($('#from_date').val()=="") {
$("#form_date").show();
setTimeout(function() { $("#form_date").hide();},5000);
return false;
}
if(Date.parse(from) > Date.parse(to)){
$("#error").show();
setTimeout(function() { $("#error").hide(); },5000);
return false;
}
}
});
// $(function(){
//   jQuery.validator.addMethod("greaterStart", function (value, element, params) {
//   return this.optional(element) || new Date(value) >= new Date($(params).val());
//   },'To date must be from start date.');
//   $('#search_filter').validate({
//           rules:{
//            "to_date": {
//             greaterStart: "#from_date",
//             },
//            },
//         })
//       })

</script>
@endsection