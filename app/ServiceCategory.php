<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    protected $table = 'service_category';
    protected $guarded = [];

    public function availability()
    {
        return $this->hasOne('App\UserToSchedule','service_id','id');
    }
}
