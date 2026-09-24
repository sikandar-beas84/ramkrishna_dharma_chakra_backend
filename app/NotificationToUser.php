<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificationToUser extends Model
{
    protected $table = 'notification_to_user';
    protected $guarded = [];

    public function notification()
    {
        return $this->hasOne('App\Notification','id','notification_id');
    }
}
