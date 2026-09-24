<?php

namespace App\Http\Controllers\Admin\Modules\Parampara;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Parampara;
class ParamparaController extends Controller
{
    public function index()
    {
        $data = [];
        $data['data'] = Parampara::orderBy('id','desc')->paginate(10);
        return view('admin.parampara.index',$data);
    }

    public function addView()
    {
        return view('admin.parampara.add');
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
           $image->move(storage_path('app/public/parampara'),$filename);
           $ins['image'] = $filename;
        }

        Parampara::create($ins);
        return redirect()->back()->with('success','Data Inserted Successfully');
         
    }


    public function edit($id)
    {
        $data = [];
        $data['data'] = Parampara::where('id',$id)->first();
        return view('admin.parampara.edit',$data);
    }

    public function update(Request $request)
    {

        $check = Parampara::where('id',$request->id)->first();
        $upd = [];
        $upd['title'] = $request->title;
        $upd['description'] = $request->description;
        $upd['title_english'] = $request->title_english;
        $upd['description_english'] = $request->description_english;
        if ($request->hasFile('image')){
           @unlink(storage_path('app/public/parampara/'.$check->image));
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/parampara'),$filename);
           $upd['image'] = $filename;
        }
        Parampara::where('id',$request->id)->update($upd);
        return redirect()->back()->with('success','Data Updated Succesfully');

    }

    public function status($id)
    {
        $check = Parampara::where('id',$id)->first();
        if (@$check->status=="A") {
            Parampara::where('id',$id)->update(['status'=>'I']);
        }else{
            Parampara::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Status Changed Successfully');
    }

    public function delete($id)
    {
        $check = Parampara::where('id',$id)->first();
        @unlink(storage_path('app/public/parampara/'.$check->image));
        Parampara::where('id',$id)->delete();
        return redirect()->back()->with('success','Data Deleted Successfully');
    }
}
