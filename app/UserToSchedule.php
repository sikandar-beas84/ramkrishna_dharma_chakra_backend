<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserToSchedule extends Model
{
    protected $table = 'user_to_schedule';
    protected $guarded = [];
    protected $fillable = ['user_id ','service_id','from_time','to_time'];
}
