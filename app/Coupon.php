<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $table = 'coupon';
    protected $guarded = [];

    public function user_details()
    {
        return $this->hasOne('App\User','id','user_id');
    }
}
