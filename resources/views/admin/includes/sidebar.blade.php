<a id="menu-toggle" href="#" class="glyphicon glyphicon-align-justify btn-menu toggle">
    <i class="fa fa-bars"></i>
</a>
<div id="sidebar-wrapper">
    <nav id="spy">
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    {{-- <div class="user-details">
                        <div class="pull-left">
                            @if(auth()->guard('admin')->user()->image=="")
                            <img src="{{ URL::to('admin/assets/images/users/avatar-1.jpg')}}" alt="" class="thumb-md img-circle">
                            @else
                            <img src="{{ URL::to('storage/admin_image')}}/{{auth()->guard('admin')->user()->image}}" alt="" class="thumb-md img-circle">
                            @endif

                        </div>
                        <div class="user-info">
                            <div class="dropdown">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{{auth()->guard('admin')->user()->name}} <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="{{route('admin.profile')}}"><i class="fas fa-user-circle"></i> Profile</a></li>
                                    <li><a href="{{route('admin.change.password')}}"><i class="fas fa-cog"></i> Change Password</a></li>
                                    <li><a href="{{route('admin.logout')}}"><i class="fas fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>

                            <p class="text-muted m-0">Administrator</p>
                        </div>
                    </div> --}}
                    <!--- Divider -->
                    
                            <div id="sidebar-menu" style="margin-top:15px">
                                <ul class="sidebar-nav nav">

                                    

                                    <li><a href="{{route('admin.dashboard')}}" class="waves-effect @if(Request::segment(2)=="") active @endif"><i class="fa fa-picture-o" aria-hidden="true"></i><span>Manage Banner Images</span></a></li>

                                    <li><a href="{{route('admin.manage.parampara')}}" class="waves-effect @if(Request::segment(2)=="parampara") active @endif"><i class="fa fa-users" aria-hidden="true"></i><span>Manage Parampara</span></a></li>
                                    
                                    <li><a href="{{route('admin.manage.social-activities')}}" class="waves-effect @if(Request::segment(2)=="social-activities") active @endif"><i class="fa fa-trophy" aria-hidden="true"></i><span>Manage Social Activities</span></a></li>
                                    
                                    <li><a href="{{route('admin.manage.religious-program')}}" class="waves-effect @if(Request::segment(2)=="religious-program") active @endif"><i class="fa fa-heart" aria-hidden="true"></i><span>Manage Religious Program</span></a></li>
                                    
                                    <li><a href="{{route('admin.manage.publication')}}" class="waves-effect @if(Request::segment(2)=="publication") active @endif"><i class="fa fa-book" aria-hidden="true"></i>
<span>Manage Publications</span></a></li>


                                    <li><a href="{{route('admin.manage.gallery')}}" class="waves-effect @if(Request::segment(2)=="gallery") active @endif"><i class="fa fa-camera-retro" aria-hidden="true"></i><span>Manage Gallery</span></a></li>

                                    <li><a href="{{route('admin.manage.administration')}}" class="waves-effect @if(Request::segment(2)=="manage-administration") active @endif"><i class="fa fa-user" aria-hidden="true"></i><span>Manage Administration</span></a></li>

                                    <li><a href="{{route('admin.manage.about.view')}}" class="waves-effect @if(Request::segment(2)=="manage-about") active @endif"><i class="fa fa-address-card-o" aria-hidden="true"></i><span>Manage About</span></a></li>

                                    <li><a href="{{route('admin.manage.donate.view')}}" class="waves-effect @if(Request::segment(2)=="manage-donate") active @endif"><i class="fa fa-money" aria-hidden="true"></i><span>Manage Donate</span></a></li>

                                    <li><a href="{{route('footer.text')}}" class="waves-effect @if(Request::segment(2)=="manage-footer") active @endif"><i class="fa fa-hourglass-end" aria-hidden="true"></i><span>Manage Footer</span></a></li>

                                    <li><a href="{{route('welcome.text')}}" class="waves-effect @if(Request::segment(2)=="welcome-text") active @endif"><i class="fa fa-commenting" aria-hidden="true"></i><span>Manage Welcome Text</span></a></li>

                            
                                

                                

                                </ul>
                                <div class="clearfix"></div>
                            </div>
                        

                
                    <div class="clearfix"></div>
                </div>
            </div>
    </nav>
</div>


