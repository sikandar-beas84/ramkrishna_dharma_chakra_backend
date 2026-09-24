<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Illuminate\Http\Request;
use App\Admin;
use App\User;


class HomeController extends Controller
{

    protected $redirectTo = '/admin/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('admin.auth:admin');
    }

    /**
     * Show the Admin dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index() {
        $data = [];
        $data['data'] = Banner::orderBy('id','desc')->paginate(10);
        return view('admin.banner.manage_banner',$data);
    }

    public function deleteBannerImage($id)
    {
        $check = Banner::where('id',$id)->first();
        @unlink(storage_path('app/public/banner/'.$check->banner_image));
        Banner::where('id',$id)->delete();
        return redirect()->back()->with('success','Banner Image Deleted Successfully');
    }

    public function statusBannerImage($id)
    {
        $check = Banner::where('id',$id)->first();
        if (@$check->status=="A") {
            Banner::where('id',$id)->update(['status'=>'I']);
        }else{
            Banner::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Banner Image Status Changed Successfully');
    }

    public function saveBannerImage(Request $request)
    {
        $ins = [];
        if ($request->hasFile('image')) {
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/banner'),$filename);
           $ins['banner_image'] = $filename;
           Banner::create($ins);
           return redirect()->back()->with('success','Image Saved Successfully');
        }else{
            return redirect()->back()->with('error','Please Select An Image.No Image Found');
        }
    }

    public function changeView()
    {
        return view('admin.change_password');
    }

    public function checkOld(Request $request)
    {
         $oldpassword = $request->input('oldpassword');
        if (!\Hash::check($oldpassword,auth()->guard('admin')->user()->password)) {
            $valid = "false";
        }else{
             $valid = "true";
        }
        return $valid;
    }

    public function confrim(Request $request)
    {
        // checking old password matched or not 
        $oldpassword = $request->input('oldpassword');
        if (!\Hash::check($oldpassword,auth()->guard('admin')->user()->password)) {
            return redirect()->back()->with('error','You have entered wrong old password');
        }
        
        $updatepassword = Admin::where('id',auth()->guard('admin')->user()->id)->update([
        'password'=>\Hash::make($request->input('password'))
        ]);
        return redirect()->back()->with('success','Password updated successfully');
    }

    public function profile()
    {
        return view('admin.profile');
    }

    public function checkemail(Request $request)
    {
        $chk=Admin::where('id','!=',$request->id)->where('email',$request->email)->count();
        if ($chk>0) {
            $valid = "false";
        }else{
            $valid = "true";
        }
        return $valid;
    }

    public function profileUpdate(Request $request)
    {
              $upd=[];
              $upd['first_name']=$request->first_name;
              $upd['last_name']=$request->last_name;
              $upd['ph_number']=$request->ph_number;
              $upd['about']=$request->about;
              $upd['address']=$request->address;
              $upd['email']=$request->email;
              if ($request->hasFile('image'))
            {
                 @unlink(storage_path('app/public/admin_image/' .auth()->guard('admin')->user()->image));
                 $image = $request->image;
                 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                 $image->move(storage_path('app/public/admin_image'),$filename);
                 $upd['image'] = $filename;
                }
        $update = Admin::where('id',auth()->guard('admin')->user()->id)->update($upd);
        return redirect()->back()->with('success','Profile updated successfully');
    }



}
