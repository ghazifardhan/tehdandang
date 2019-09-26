<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;

class Menu extends Model
{
    use ModelTree, AdminBuilder;

    protected $table = 'menus';

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->setParentColumn('parent_id');
        $this->setOrderColumn('order');
        $this->setTitleColumn('title');
    }
}
