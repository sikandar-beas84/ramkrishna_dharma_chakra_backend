<?php

namespace App\Http\Controllers\Admin\Modules\Notification;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notification;
use App\User;
use App\NotificationToUser;
class NotificationController extends Controller
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
        $data['data'] = Notification::where('status','!=','D')->orderBy('id','desc');
        if (@$request->keyword) {
            $data['data'] = $data['data']->where(function($query){
                $query->where('title','LIKE','%'.request('keyword').'%')
                      ->orWhere('description','LIKE','%'.request('keyword').'%');
            });
        }
        $data['data'] = $data['data']->paginate(20);
        return view('admin.notification.index',$data);
    }

    public function addView()
    {
        $data = [];
        $data['users'] = User::where('status','!=','D')->get();
        return view('admin.notification.add',$data);
    }

    public function add(Request $request)
    {
        $ins = [];
        $ins['title'] = $request->title;
        $ins['description'] = $request->description;
        $ins['date'] = $request->date;
        // $ins['user_id'] = $request->user_id;
        $notification = Notification::create($ins);
        foreach ($request->user_id as $key => $value) {
            $ins = [];
            $ins['user_id'] = $value;
            $ins['notification_id'] = $notification->id;
            NotificationToUser::create($ins);
        }

        
        return redirect()->back()->with('success','Notification Added Successfully');
    }

    public function edit($id)
    {
        $data = [];
        $data['data'] = Notification::where('id',$id)->first();
        $data['users'] = User::where('status','!=','D')->get();
        $explode = explode(',',$id);
        $data['selected_users'] = NotificationToUser::whereIn('notification_id',$explode)->pluck('user_id')->toArray();
        
        return view('admin.notification.edit',$data);
    }

    public function update(Request $request)
    {
        $ins = [];
        $ins['title'] = $request->title;
        $ins['description'] = $request->description;
        $ins['date'] = $request->date;
        // $ins['user_id'] = $request->user_id;
        Notification::where('id',$request->id)->update($ins);

        $explode = explode(',', $request->id);
        NotificationToUser::whereIn('notification_id',$explode)->delete();

        foreach ($request->user_id as $key => $value) {
            $ins = [];
            $ins['user_id'] = $value;
            $ins['notification_id'] = $request->id;
            NotificationToUser::create($ins);
        }
        return redirect()->back()->with('success','Notification Updated Successfully');
    }

    public function delete($id)
    {
        Notification::where('id',$id)->update(['status'=>'D']);
        return redirect()->back()->with('success','Notification Deleted Successfully');
    }

    public function status($id)
    {
        $check = Notification::where('id',$id)->first();
        if (@$check->status=="A") {
            Notification::where('id',$id)->update(['status'=>'I']);
        }else{
            Notification::where('id',$id)->update(['status'=>'A']);
        }
        return redirect()->back()->with('success','Status Chnaged Successfully');
    }
}
