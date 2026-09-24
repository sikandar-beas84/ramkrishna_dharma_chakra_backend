<?php

namespace App\Http\Controllers\Admin\Modules\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Models\LocationModel;
use App\Service;
use Mail;
use App\Mail\Register;
class UserController extends Controller
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
        $service = Service::where('status','A')->pluck('user_id')->toArray();
        $uniq_users = array_unique($service);

    	$data['data'] = User::where('status','!=','D')->orderBy('id','desc');
    	if (@$request->keyword) {
    		$data['data'] = $data['data']->where(function($query){
    			$query->where('first_name','like','%'.request('keyword').'%')
    			      ->orWhere('last_name','like','%'.request('keyword').'%')
    			      ->orWhere('email','like','%'.request('keyword').'%')
    			      ->orWhere('ph_number','like','%'.request('keyword').'%');
    		});
    	}

        if (@$request->user_type=="2") {
            $data['data'] = $data['data']->whereIn('id',$uniq_users);
        }

        if (@$request->user_type=="1") {
            $data['data'] = $data['data']->whereNotIn('id',$uniq_users);;
        }
        
        $data['uniq_users']  = $uniq_users;
    	$data['data'] = $data['data']->paginate(10);
    	return view('admin.users.manage',$data);
    }

    public function status($id)
    {
    	$check = User::where('id',$id)->first();
    	if (@$check->status=="A") {
    		User::where('id',$id)->update(['status'=>'I']);
    		return redirect()->back()->with('success','User Deactivated Successfully');
    	}else{
    		User::where('id',$id)->update(['status'=>'A']);
    		return redirect()->back()->with('success','User Activated Successfully');
    	}
    }


    public function delete($id)
    {
    	User::where('id',$id)->update(['status'=>'D']);
    	return redirect()->back()->with('success','User Deleted Successfully');
    }

    public function viewService($id)
    {
        $data = [];
        $data['data'] = Service::where('user_id',$id)->where('status','!=','D')->paginate(10);
        return view('admin.users.service',$data);
    }

    public function addView()
    {   
        $data = [];
        $data['location'] = LocationModel::where('status','!=','D')->get();
        return view('admin.users.add',$data);
    }

    public function checkMail(Request $request)
    {

        if (@$request->id) {
            $chk=User::where('status','!=','D')->where('id','!=',$request->id)->where('email',$request->email)->count();
            if ($chk>0) {
                $valid = "false";
            }else{
                $valid = "true";
            } 
        }else{
           $chk=User::where('status','!=','D')->where('email',$request->email)->count();
            if ($chk>0) {
                $valid = "false";
            }else{
                $valid = "true";
            } 
        }
        
        return $valid;
    }

    public function checkPhone(Request $request)
    {
        if (@$request->id) {
            $chk=User::where('status','!=','D')->where('id','!=',$request->id)->where('ph_number',$request->ph_number)->count();
            if ($chk>0) {
                $valid = "false";
            }else{
                $valid = "true";
            } 
        }else{
           $chk=User::where('status','!=','D')->where('ph_number',$request->ph_number)->count();
            if ($chk>0) {
                $valid = "false";
            }else{
                $valid = "true";
            } 
        }
        
        return $valid;
    }

    public function insert(Request $request)
    {
        // return $request;
        $user = new User;
        $user->first_name =  $request->first_name;
        $user->last_name =  $request->last_name;
        $user->email =  $request->email;
        $user->ph_number =  $request->ph_number;
        $user->address =  $request->address;
        $user->about =  $request->about;
        $user->location =  $request->location;
        $user->password =  \Hash::make($request->password);
         if ($request->hasFile('image'))
         {
                 $image = $request->image;
                 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                 $image->move("storage/",$filename);
                 $user->image = $filename;
         }
        $user->save();

        
         // send-mail
            $data = [
               'email'=>$request->email,
               'first_name'=>$request->first_name,
               'last_name'=>$request->last_name,
               'password'=>$request->password,
               'type'=>'register',
            ];

         // Mail::send(new Register($data));
         return redirect()->back()->with('success','User Registed Successfully');

        
    }

    public function edit($id)
    {
        $data = [];
        $data['location'] = LocationModel::where('status','!=','D')->get();
        $data['data'] = User::where('id',$id)->first();
        return view('admin.users.edit',$data);
    }

    public function update(Request $request)
    {
        $upd = [];
        $upd['first_name'] = $request->first_name;
        $upd['last_name'] = $request->last_name;
        $upd['email'] = $request->email;
        $upd['location'] = $request->location;
        $upd['ph_number'] = $request->ph_number;
        $upd['address'] = $request->address;
        $upd['about'] = $request->about;
        

         if ($request->hasFile('image'))
         {
                 $image = $request->image;
                 $filename = time() . '-' . rand(1000, 9999) . '.' . $image->getClientOriginalExtension();
                 $image->move("storage/",$filename);
                 $upd['image'] = $filename;
         }

         User::where('id',$request->id)->update($upd);
         return redirect()->back()->with('success','User Updated Successfully');
    }

    public function view($id)
    {
        $data = [];
        $data['data'] = User::where('id',$id)->first();
        return view('admin.users.view',$data);
    }
}
