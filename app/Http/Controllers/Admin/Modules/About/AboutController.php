<?php

namespace App\Http\Controllers\Admin\Modules\About;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\About;
class AboutController extends Controller
{
    public function aboutView()
    {
        $data = [];
        $data['data'] = About::where('id',1)->first();
        return view('admin.about.index',$data);
    }


    public function aboutUpdate(Request $request)
    {
        $upd = [];
        $upd['description'] = addslashes($request->description);
        $upd['description_english'] = addslashes($request->description_english);
        if ($request->image) {
            $image = $request->image;
            $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
            $image->move(storage_path('app/public/about_image'),$filename);    
            $upd['image'] = $filename;
        }
        About::where('id',1)->update($upd);
        return redirect()->back()->with('success','Data Updated Succesfully');
        
    }


    public function donateView()
    {
        $data = [];
        $data['data'] = About::where('id',1)->first();
        return view('admin.donate.index',$data);
    }

    public function donateUpdate(Request $request)
    {

        $upd = [];
        $upd['donate_description'] = $request->description;
        $upd['donate_description_english'] = $request->donate_description_english;
        if ($request->image) {
            $image = $request->image;
            $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
            $image->move(storage_path('app/public/about_image'),$filename);    
            $upd['donate_image'] = $filename;
        }
        About::where('id',1)->update($upd);
        return redirect()->back()->with('success','Data Updated Succesfully');
    }

    public function welcomeView()
    {
        $data = [];
        $data['data'] = About::where('id',1)->first();
        return view('admin.welcome.index',$data);
    }

    public function welcomeUpdate(Request $request)
    {
        $upd = [];
        $upd['welcome_heading'] = $request->welcome_heading;
        $upd['welcome_description'] = $request->welcome_description;
        $upd['parampara_text'] = $request->parampara_text;


        $upd['welcome_heading_english'] = $request->welcome_heading_english;
        $upd['welcome_description_english'] = $request->welcome_description_english;
        $upd['parampara_text_english'] = $request->parampara_text_english;
        About::where('id',1)->update($upd);
        return redirect()->back()->with('success','Data Updated Succesfully');
    }


    public function footerView()
    {
        $data = [];
        $data['data'] = About::where('id',1)->first();
        return view('admin.footer.index',$data);
    }

    public function footerUpdate(Request $request)
    {
        $upd = [];
        $upd['footer_text'] = $request->footer_text;
        $upd['footer_text_english'] = $request->footer_text_english;
        $upd['facebook_link'] = $request->facebook_link;
        $upd['address'] = $request->address;
        $upd['address_english'] = $request->address_english;

        $upd['youtube_link'] = $request->youtube_link;
        $upd['twitter_link'] = $request->twitter_link;
        $upd['instagram_link'] = $request->instagram_link;
        $upd['email'] = $request->email;
        $upd['phone_one'] = $request->phone_one;
        $upd['phone_two'] = $request->phone_two;
        $upd['phone_three'] = $request->phone_three;

        $upd['phone_one_bengali'] = $request->phone_one_bengali;
        $upd['phone_two_bengali'] = $request->phone_two_bengali;
        $upd['phone_three_bengali'] = $request->phone_three_bengali;
        About::where('id',1)->update($upd);
        return redirect()->back()->with('success','Data Updated Succesfully');

    }
}
