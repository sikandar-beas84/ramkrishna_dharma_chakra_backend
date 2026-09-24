<?php

namespace App\Http\Controllers\Admin\Modules\Publication;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Publication;
class PublicationController extends Controller
{
    public function index()
    {
        $data = [];
        $data['data'] = Publication::orderBy('id','desc')->paginate(10);
        return view('admin.publication.index',$data);
    }

    public function addView()
    {
        return view('admin.publication.add');
    }

    public function add(Request $request)
    {
        $ins = [];
        $ins['title'] = $request->title;
        $ins['description'] = $request->description;

        $ins['title_english'] = $request->title_english;
        $ins['description_english'] = $request->description_english;
        if ($request->hasFile('image')){
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/publication'),$filename);
           $ins['image'] = $filename;
        }

        Publication::create($ins);
        return redirect()->back()->with('success','Data Inserted Successfully');
         
    }


    public function edit($id)
    {
        $data = [];
        $data['data'] = Publication::where('id',$id)->first();
        return view('admin.publication.edit',$data);
    }

    public function update(Request $request)
    {
        $check = Publication::where('id',$request->id)->first();
        $upd = [];
        $upd['title'] = $request->title;
        $upd['description'] = $request->description;

        $upd['title_english'] = $request->title_english;
        $upd['description_english'] = $request->description_english;
        if ($request->hasFile('image')){
           @unlink(storage_path('app/public/publication/'.$check->image));
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/publication'),$filename);
           $upd['image'] = $filename;
        }
        Publication::where('id',$request->id)->update($upd);
        return redirect($request->redirects_to)->with('success','Data Updated Succesfully');

    }

    public function status($id)
    {
        $check = Publication::where('id',$id)->first();
        if (@$check->status=="A") {
            Publication::where('id',$id)->update(['status'=>'I']);
        }else{
            Publication::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Status Changed Successfully');
    }

    public function delete($id)
    {
        $check = Publication::where('id',$id)->first();
        @unlink(storage_path('app/public/publication/'.$check->image));
        Publication::where('id',$id)->delete();
        return redirect()->back()->with('success','Data Deleted Successfully');
    }    

    public function available($id)
    {
        $check = Publication::where('id',$id)->first();
        if (@$check->available=="Y") {
            Publication::where('id',$id)->update(['available'=>'N']);
        }else{
            Publication::where('id',$id)->update(['available'=>'Y']);
        }
        return redirect()->back()->with('success','Book Availability Changed Successfully');
    }
}
