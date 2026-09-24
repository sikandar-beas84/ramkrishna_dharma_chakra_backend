<?php

namespace App\Http\Controllers\Admin\Modules\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Administration;

class AdminController extends Controller
{
    public function index()
    {
        $data = [];
        $data['data'] = Administration::paginate(10);
        return view('admin.admini.index',$data);
    }

    public function addView()
    {
        return view('admin.admini.add');
    } 


    public function insert(Request $request)
    {
        $admin = new Administration;
        $admin->name = $request->name;
        $admin->responsibility = $request->responsibility;

        $admin->name_english = $request->name_english;
        $admin->responsibility_english = $request->responsibility_english;
        $admin->save();
        return redirect()->back()->with('success','Data Saved Successfully');
    }  

    public function edit($id)
    {
        $data = [];
        $data['data'] = Administration::where('id',$id)->first();
        return view('admin.admini.edit',$data);
    }

    public function update(Request $request)
    {
        Administration::where('id',$request->id)->update([
            'name'=>$request->name,
            'responsibility'=>$request->responsibility,
            'name_english'=>$request->name_english,
            'responsibility_english'=>$request->responsibility_english,
        ]);
        return redirect()->back()->with('success','Data Updated Succesfully');
    }

    public function delete($id)
    {
        Administration::where('id',$id)->delete();
        return redirect()->back()->with('success','Data Deleted Succesfully');
    }
}
