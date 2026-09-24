@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage Header Images</title>
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
<!-- Left Sidebar End -->



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
                    <h4 class="pull-left page-title">Manage Header Images</h4>
                    <ol class="breadcrumb pull-right">
                        {{-- <li class="active"><a href="{{route('admin.manage.uses.add')}}">+ Add Uses</a></li> --}}
                        
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="clearfix"></div>

                    <div class="panel panel-default">
                        <div class="panel-heading rm02 rm04">
                            <form role="form" action="{{route('admin.save.banner.image')}}" method="post" id="banner_image_form" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group">
                                        <label for="Email">Image </label>
                                        <div class="uplodimgfil">
                                            <input type="file" name="image"  id="icon" class="inputfile inputfile-1"  onchange="fun1()" />
                                             <label for="icon">Upload Image<img src="{{ URL::to('admin/assets/images/clickhe.png')}}" alt=""></label>
                                        </div>
                                       <div id="err_image"></div>
                                  </div>

                                  {{-- preview-image --}}
                                   <div class="form-group rm03">
                                    <img style="max-height:178px" id="img2">
                                   </div>
                                

                                

                                

                                <div class="rm05">
                                    <button class="btn btn-primary waves-effect waves-light w-md"
                                        type="submit">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>




                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    @include('admin.includes.message')
                                    <ul class="pagination rtg" style="margin:0px;">
                                        {{-- {{@$data->links()}} --}}
                                    </ul>
                                    <div class="table-responsive">
                                        <table id="exampl" class="table table-striped table-bordered nowrap" style="width:100%">
                                            <thead>
                                                <tr>
                                                   <th>Header Image</th>
                                                   <th>Status</th>
                                                   <th class="rm07" style="text-align:center;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if(@$data->isNotEmpty())
                                                @foreach(@$data as $value)
                                                <tr>
                                                    <td><img src="{{ URL::to('storage/banner')}}/{{@$value->banner_image}}" style="max-height:80px" id="img2"></td>
                                                    <td>
                                                        @if(@$value->status=="A")
                                                        Active
                                                        @else
                                                        Inactive
                                                        @endif
                                                    </td>

                                                    <td class="rm07">
                                                        <a href="javascript:void(0);" class="action-dots" id="action{{$value->id}}"><img src="{{ URL::to('admin/assets/images/action-dots.png')}}" alt=""></a>
                                                        <div class="show-actions" id="show-{{$value->id}}" style="display: none;">
                                                            <span class="angle custom_angle"><img src="{{ URL::to('admin/assets/images/angle.png')}}" alt=""></span>
                                                            <ul>
                                                                <li><a href="{{route('admin.delete.banner.image',['id'=>@$value->id])}}" onclick="return confirm('Are sure want to delete the banner image ?')">Delete </a></li>

                                                                @if(@$value->status=="A")
                                                                <li><a href="{{route('admin.status.banner.image',['id'=>@$value->id])}}" onclick="return confirm('Are sure want to change the status banner image ?')">Inactive </a></li>
                                                                @else
                                                                <li><a href="{{route('admin.status.banner.image',['id'=>@$value->id])}}" onclick="return confirm('Are sure want to change the status banner image ?')">Active </a></li>
                                                                @endif
                                                             </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                @endforeach
                                                @endif
                                                
                                            </tbody>
                                        </table>
                                    </div>


                                    <ul class="pagination rtg">
                                        {{-- {{@$data->links()}} --}}
                                    </ul>

                                    


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

    @include('admin.includes.footer')
</div>
<!-- ============================================================== -->
<!-- End Right content here -->
<!-- ============================================================== -->

@endsection

@section('script')
@include('admin.includes.script')
{{-- <script type="text/javascript">
  @foreach (@$data as $value)
    $("#action{{$value->id}}").click(function(){
        $('.show-actions:not(#show-{{$value->id}})').slideUp();
        $("#show-{{$value->id}}").slideToggle();
    });
 @endforeach
</script> --}}
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
         $(document).ready(function() {
         $('#example').DataTable({
            "ordering": false,
         });
         } );
      </script>
 <script>
        function fun1(){
        var i=document.getElementById('icon').files[0];
        var b=URL.createObjectURL(i);
        $("#img2").attr("src",b);
    }
</script>     

<script type="text/javascript">
  @foreach (@$data as $value)
    $("#action{{$value->id}}").click(function(){
        $('.show-actions:not(#show-{{$value->id}})').slideUp();
        $("#show-{{$value->id}}").slideToggle();
    });
 @endforeach
</script>


@endsection
