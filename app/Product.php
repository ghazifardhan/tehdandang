<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function setPhotoProductsAttribute($pictures)
    {
        if (is_array($pictures)) {
            $this->attributes['photo_products'] = json_encode($pictures);
        }
    }

    public function getPhotoProductsAttribute($pictures)
    {
        return json_decode($pictures, true);
    }
}
