<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use \Encore\Admin\Traits\Resizable;
    
    protected $table = 'settings';
}
