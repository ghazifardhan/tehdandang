<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Banner;
use App\Product;

class HomeController extends Controller
{
    
    public function index() {

        $banners = (new Banner)->get();
        $bestsellers = (new Product)->where('is_bestseller', true)->get();
        $tubruks = array(
            'title' => 'Teh Tabur',
            'data' => (new Product)->where('product_type_id', 1)->get()
        );
        $bubuks = array(
            'title' => 'Teh Celup',
            'data' => (new Product)->where('product_type_id', 2)->get()
        );
        

        return view('page.home', compact('banners', 'bestsellers', 'tubruks', 'bubuks'));

    }

}
