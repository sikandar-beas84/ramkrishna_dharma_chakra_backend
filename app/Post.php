<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'post';
    protected $guarded = [];

    public function user_details()
    {
        return $this->hasOne('App\User','id','user_id');
    }

    public function likeDetails()
    {
        return $this->hasMany('App\PostToLike','post_id','id')->where('like_status','1');
    }

    public function dislikeDetails()
    {
        return $this->hasMany('App\PostToLike','post_id','id')->where('like_status','0');
    }

    public function comments()
    {
        return $this->hasMany('App\PostToComment','post_id','id');
    }
}
