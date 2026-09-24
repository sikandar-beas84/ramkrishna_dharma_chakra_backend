<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Service;
use App\PaymentModel;
use App\Coupon;

class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

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
            $data['payments']=PaymentModel::orderBy('updated_at','desc')->where('is_delete','N');
    
            if(@$request->from_date && @$request->to_date){
               $from = $request->from_date;
               $to_prev= $request->to_date;
               $to=date('Y-m-d', strtotime($to_prev. ' + 1 days'));
    
                $data['payments']=$data['payments']->whereBetween('updated_at',[$from, $to])->where('is_delete','N')->orderBy('updated_at','desc')->OrwhereBetween('created_at',[$from, $to])->where('is_delete','N')->orderBy('updated_at','desc');
                $data['res']=$request->all();
            }

            if (@$request->status) {
                $data['payments']=$data['payments']->where('status_id',@$request->status);
            }

            if (@$request->keyword) {
                $data['payments']=$data['payments']->where(function($query){
                    $query->where('customerName','LIKE','%'.request('keyword').'%')
                          ->orWhere('customerEmail','LIKE','%'.request('keyword').'%')
                           ->orWhere('customerPhone','LIKE','%'.request('keyword').'%')
                           ->orWhere('transaction_id','LIKE','%'.request('keyword').'%');
                });
            }

            $data['payments']=$data['payments']->paginate(20);
            return view('admin.payment.paid_users_list',$data);
    
    }

   public function view($id)
   {
     $data = [];
     $data['data'] = PaymentModel::where('id',$id)->first();
     return view('admin.payment.details',$data);
   } 
   public function delete($id)
   {
        PaymentModel::where('id',$id)->update(['is_delete'=>'Y']);
        return redirect()->back()->with('success','Data Deleted Successfully');
   }

   public function edit($id)
   {
        $service = Service::where('status','A')->pluck('user_id')->toArray();
        $uniq_users = array_unique($service);
        $data = [];
        $data['users'] = User::where('status','!=','D')->orderBy('id','desc')->whereIn('id',$uniq_users)->get();
        $data['data'] = Coupon::where('id',$id)->first();
        return view('admin.coupons.edit',$data);
   }

   public function update(Request $request)
   {
        Coupon::where('id',$request->id)->update([
            'coupon_title'=>$request->coupon_title,
            'coupon_desc'=>$request->coupon_desc,
            'discount'=>$request->discount,
            'user_id'=> $request->user_id,
            'exp_date'=>$request->exp_date
        ]);
        return redirect()->back()->with('success','Data Updated Successfully');
   }

   public function status($id)
   {
        $check = Coupon::where('id',$id)->first();
        if (@$check->status=="A") {
            Coupon::where('id',$id)->update(['status'=>'I']);
            return redirect()->back()->with('success','Status Deativated Successfully');
        }else{
            Coupon::where('id',$id)->update(['status'=>'A']);
            return redirect()->back()->with('success','Status Activated Successfully');
        }
   }
}
