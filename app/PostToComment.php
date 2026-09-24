<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostToComment extends Model
{
    protected $table = 'post_to_comment';
    protected $guarded = [];

    public function user_details()
    {
        return $this->hasOne('App\User','id','user_id')->select('first_name','last_name','id');
    }
}
