@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage Welcome Text</title>
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
                    <h4 class="pull-left page-title">Manage Welcome Text</h4>
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
                            <form role="form" action="{{route('welcome.text.update')}}" method="post" id="banner_image_form" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group rm03">
                                        <label for="Email">Heading (In Bengali)  </label>
                                        <textarea class="form-control" style="height:250px;" name="welcome_heading" required>{{@$data->welcome_heading}}</textarea>
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Description (In Bengali)</label>
                                        <textarea class="form-control" style="height:250px;" name="welcome_description" required>{{@$data->welcome_description}}</textarea>
                                </div>


                                <div class="form-group rm03">
                                        <label for="Email">Parampara Text (In Bengali)</label>
                                        <textarea class="form-control" style="height:250px;" name="parampara_text" >{{@$data->parampara_text}}</textarea>
                                </div>



                                <div class="form-group rm03">
                                        <label for="Email">Heading (In English)  </label>
                                        <textarea class="form-control" style="height:250px;" name="welcome_heading_english" >{{@$data->welcome_heading_english}}</textarea>
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Description (In English)</label>
                                        <textarea class="form-control" style="height:250px;" name="welcome_description_english" >{{@$data->welcome_description_english}}</textarea>
                                </div>


                                <div class="form-group rm03">
                                        <label for="Email">Parampara Text (In English)</label>
                                        <textarea class="form-control" style="height:250px;" name="parampara_text_english" >{{@$data->parampara_text_english}}</textarea>
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
