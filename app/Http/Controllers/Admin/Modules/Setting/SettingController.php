<?php

namespace App\Http\Controllers\Admin\Modules\Setting;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Settings;
class SettingController extends Controller
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


    
    public function index()
    {
        $data =[];
        $data['data'] = Settings::where('id',1)->first();
        return view('admin.settings.index',$data);
    }

    public function update(Request $request)
    {
        Settings::where('id',1)->update([
            'from_km'=>$request->amount1,
            'to_km'=>$request->amount2,
        ]);
        return redirect()->back()->with('success','Settings Updated Successfully');
    }
}
