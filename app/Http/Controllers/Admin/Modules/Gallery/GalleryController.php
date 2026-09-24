<?php

namespace App\Http\Controllers\Admin\Modules\Gallery;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Gallery;
class GalleryController extends Controller
{
    public function index()
    {
        $data = [];
        $data['data'] = Gallery::orderBy('id','desc')->paginate(10);
        return view('admin.gallery.index',$data);
    }

    public function addView()
    {
        return view('admin.gallery.add');
    }

    public function post(Request $request)
    {
        $ins = [];
        $ins['name'] = $request->title;
        $ins['type'] = $request->type;
        if ($request->type=="I") {
           if ($request->hasFile('image')){
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/gallery'),$filename);
           $ins['file'] = $filename;
          }
        }else{
            $ins['file'] = $request->video;
        }

        Gallery::create($ins);
        return redirect()->back()->with('success','Gallery Added Successfully');

    }

    public function status($id)
    {
        $check = Gallery::where('id',$id)->first();
        if (@$check->status=="A") {
            Gallery::where('id',$id)->update(['status'=>'I']);
        }else{
            Gallery::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Status Changed Successfully');
    }

    public function edit($id)
    {
        $data = [];
        $data['data'] =  Gallery::where('id',$id)->first();
        return view('admin.gallery.edit',$data); 
    }

    public function delete($id)
    {
        $check = Gallery::where('id',$id)->first();
        @unlink(storage_path('app/public/gallery/'.$check->file));
        Gallery::where('id',$id)->delete();
        return redirect()->back()->with('success','Data Deleted Successfully');
    }

    public function update(Request $request)
    {
        $ins = [];
        $ins['name'] = $request->title;
        $ins['type'] = $request->type;
        if ($request->type=="I") {
           if ($request->hasFile('image')){
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/gallery'),$filename);
           $ins['file'] = $filename;
          }
        }else{
            $ins['file'] = $request->video;
        }

        Gallery::where('id',$request->id)->update($ins);
        return redirect()->back()->with('success','Gallery Updated Successfully');
    }


    public function show_home($id)
    {
        $check = Gallery::where('id',$id)->first();
        if (@$check->show_at_home=="N") {
            Gallery::where('id',$id)->update(['show_at_home'=>'Y']);
            return redirect()->back()->with('success','Data Show At Home Successfully');
        }else{
            Gallery::where('id',$id)->update(['show_at_home'=>'N']);
            return redirect()->back()->with('success','Data Remove At Home Successfully');
        }
        
    }
}
