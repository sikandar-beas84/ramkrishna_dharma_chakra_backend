@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage About</title>
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
                    <h4 class="pull-left page-title">Manage About</h4>
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
                            <form role="form" action="{{route('admin.manage.about.update')}}" method="post" id="banner_image_form" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group rm03">
                                        <label for="Email">Description (In Bengali)</label>
                                        <textarea class="form-control" style="height:250px;" name="description" required>{{@$data->description}}</textarea>
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Description (In English)</label>
                                        <textarea class="form-control" style="height:250px;" name="description_english" >{{@$data->description_english}}</textarea>
                                </div>

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
                                    <img style="width: 100%;height: 400px" id="img2" src="{{ URL::to('storage/about_image')}}/{{@$data->image}}">
                                   </div>
                                

                                

                                

                                <div class="rm05">
                                    <button class="btn btn-primary waves-effect waves-light w-md"
                                        type="submit">Save</button>
                                </div>
                            </form>
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
<script src="{{ URL::to('tiny_mce/tinymce.min.js') }}"></script>
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
    tinymce.init({
    selector: "textarea",
    forced_root_block : "",
    relative_urls : false,
    entity_encoding: 'raw',
    menubar: "",
    
     plugins: [
    
    "searchreplace wordcount visualblocks visualchars code fullscreen link colorpicker",
    "lists",
  
    
    "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
    toolbar1: " bold  underline italic |,link,unlink ",
        });
    
    </script>          




@endsection
