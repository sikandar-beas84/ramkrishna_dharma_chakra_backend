<?php

namespace App\Http\Controllers\Admin\Modules\Religious;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ReligiousProgram;

class ReligiousController extends Controller
{
    public function index()
    {
        $data = [];
        $data['data'] = ReligiousProgram::orderBy('date','asc')->paginate(10);
        // return $data['data'];
        return view('admin.religious.index',$data);
    }

    public function addView()
    {
        return view('admin.religious.add');
    }

    public function add(Request $request)
    {
        $ins = [];
        $ins['title'] = $request->title;
        $ins['date'] = $request->date;
        $ins['description'] = $request->description;
        $ins['title_english'] = $request->title_english;
        $ins['description_english'] = $request->description_english;
        $ins['bengali_date'] = $request->bengali_date;
        if ($request->hasFile('image')){
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/religious'),$filename);
           $ins['image'] = $filename;
        }

        ReligiousProgram::create($ins);
        return redirect()->back()->with('success','Data Inserted Successfully');
         
    }


    public function edit($id)
    {
        $data = [];
        $data['data'] = ReligiousProgram::where('id',$id)->first();
        return view('admin.religious.edit',$data);
    }

    public function update(Request $request)
    {
        $check = ReligiousProgram::where('id',$request->id)->first();
        $upd = [];
        $upd['title'] = $request->title;
        $upd['date'] = $request->date;
        $upd['description'] = $request->description;
        $upd['title_english'] = $request->title_english;
        $upd['description_english'] = $request->description_english;
        $upd['bengali_date'] = $request->bengali_date;
        if ($request->hasFile('image')){
           @unlink(storage_path('app/public/religious/'.$check->image));
           $image = $request->image;
           $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
           $image->move(storage_path('app/public/religious'),$filename);
           $upd['image'] = $filename;
        }
        ReligiousProgram::where('id',$request->id)->update($upd);
        return redirect($request->redirects_to)->with('success','Data Updated Succesfully');

    }

    public function status($id)
    {
        $check = ReligiousProgram::where('id',$id)->first();
        if (@$check->status=="A") {
            ReligiousProgram::where('id',$id)->update(['status'=>'I']);
        }else{
            ReligiousProgram::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Status Changed Successfully');
    }

    public function delete($id)
    {
        $check = ReligiousProgram::wherere('id',$id)->first();
        @unlink(storage_path('app/public/religious/'.$check->image));
        ReligiousProgram::where('id',$id)->delete();
        return redirect()->back()->with('success','Data Deleted Successfully');
    } 
}
