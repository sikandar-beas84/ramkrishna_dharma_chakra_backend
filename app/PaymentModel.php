<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentModel extends Model
{
    protected $table = 'payment';
    protected $fillable = ['transaction_id','amount','customerName','customerPhone','customerEmail','customer_id','status_id'];
    public function getPayUserDetails(){
        return $this->hasOne('App\User', 'id', 'customer_id');
    }
    
}
