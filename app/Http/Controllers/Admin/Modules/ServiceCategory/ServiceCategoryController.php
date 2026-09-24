<?php

namespace App\Http\Controllers\Admin\Modules\ServiceCategory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\ServiceCategory;
class ServiceCategoryController extends Controller
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

    public function index(Request $request)
    {
        $data = [];
        $data['data'] = ServiceCategory::where('status','!=','D');
        if (@$request->keyword) {
            $data['data'] = $data['data']->where('name','LIKE','%'.request('keyword').'%');
        }
        $data['data'] = $data['data']->paginate(20);
        return view('admin.service-category.list',$data);
    }

    public function addView()
    {
        return view('admin.service-category.add');
    }

    public function add(Request $request)
    {
        $ins = [];
        $ins['name'] = $request->name;
        if ($request->hasFile('image'))
        {
                 $image = $request->image;
                 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                 $image->move(storage_path('app/public/icon'),$filename);
                 $ins['icon'] = $filename;
        }

        ServiceCategory::create($ins);
        return redirect()->back()->with('success','Category Added Successfully');
    }

    public function edit($id)
    {
        $data = [];
        $data['data'] = ServiceCategory::where('id',$id)->first();
        return view('admin.service-category.edit',$data);
    }

    public function update(Request $request)
    {
        $check = ServiceCategory::where('id',$request->id)->first();
        $upd = [];
        $upd['name'] = $request->name;
        if ($request->hasFile('image'))
        {
                @unlink(storage_path('app/public/icon/' .$check->image));
                 $image = $request->image;
                 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                 $image->move(storage_path('app/public/icon'),$filename);
                 $upd['icon'] = $filename;
        }

        ServiceCategory::where('id',$request->id)->update($upd);
        return redirect()->back()->with('success','Category Updated Successfully');
       
    }

    public function delete($id)
    {
        ServiceCategory::where('id',$id)->update(['status'=>'D']);
        return redirect()->back()->with('success','Category Deleted Successfully');
    }

    public function status($id)
    {
        $check = ServiceCategory::where('id',$id)->first();
        if (@$check->status=="A") {
            ServiceCategory::where('id',$id)->update(['status'=>'I']);
            return redirect()->back()->with('success','Category Deactivated Successfully');
        }else{
            ServiceCategory::where('id',$id)->update(['status'=>'A']);
            return redirect()->back()->with('success','Category Activated Successfully');
        }
    }

}
