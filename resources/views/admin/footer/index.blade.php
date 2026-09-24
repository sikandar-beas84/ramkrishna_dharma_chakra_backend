@extends('admin.layouts.app')


@section('title')
<title>Shree RamKrishna Dharma Chakra | Manage Footer Content</title>
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
                    <h4 class="pull-left page-title">Manage Footer Content</h4>
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
                            <form role="form" action="{{route('footer.text.update')}}" method="post" id="banner_image_form" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group rm03">
                                        <label for="Email">Footer Text (In Bengali) </label>
                                        <textarea class="form-control" style="height:250px;" name="footer_text" required>{{@$data->footer_text}}</textarea>
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Address Text (In Bengali) </label>
                                        <textarea class="form-control" id="address" style="height:250px;" name="address" >{{@$data->address}}</textarea>
                                </div>



                                <div class="form-group rm03">
                                        <label for="Email">Footer Text (In English) </label>
                                        <textarea class="form-control" style="height:250px;" name="footer_text_english" >{{@$data->footer_text_english}}</textarea>
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Address Text (In English) </label>
                                        <textarea class="form-control" id="address" style="height:250px;" name="address_english" >{{@$data->address_english}}</textarea>
                                </div>



                                <div class="form-group rm03">
                                        <label for="Email">Facebook Link</label>
                                        <input type="text" name="facebook_link" class="form-control" value="{{@$data->facebook_link}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Youtube Link</label>
                                        <input type="text" name="youtube_link" class="form-control" value="{{@$data->youtube_link}}">
                                </div>

                                {{-- <div class="form-group rm03">
                                        <label for="Email">Twitter Link</label>
                                        <input type="text" name="twitter_link" class="form-control" value="{{@$data->twitter_link}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Instagram Link</label>
                                        <input type="text" name="instagram_link" class="form-control" value="{{@$data->instagram_link}}">
                                </div> --}}

                                <div class="form-group rm03">
                                        <label for="Email">Email</label>
                                        <input type="text" name="email" class="form-control" value="{{@$data->email}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Phone One (In English)</label>
                                        <input type="text" name="phone_one" class="form-control" value="{{@$data->phone_one}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Phone Two (In English)</label>
                                        <input type="text" name="phone_two" class="form-control" value="{{@$data->phone_two}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Phone Three (In English)</label>
                                        <input type="text" name="phone_three" class="form-control" value="{{@$data->phone_three}}">
                                </div>


                                <div class="form-group rm03">
                                        <label for="Email">Phone One (In Bengali)</label>
                                        <input type="text" name="phone_one_bengali" class="form-control" value="{{@$data->phone_one_bengali}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Phone Two (In Bengali)</label>
                                        <input type="text" name="phone_two_bengali" class="form-control" value="{{@$data->phone_two_bengali}}">
                                </div>

                                <div class="form-group rm03">
                                        <label for="Email">Phone Three (In Bengali)</label>
                                        <input type="text" name="phone_three_bengali" class="form-control" value="{{@$data->phone_three_bengali}}">
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
