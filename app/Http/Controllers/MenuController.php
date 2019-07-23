<?php

namespace App\Http\Controllers;

use App\Menu;
use Illuminate\Http\Request;
use App\Product;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($menu)
    {
        $menus = Menu::where('slug', $menu)->first();

        switch ($menu) {
            case 'home':
                return redirect('/');
            case 'history-of-the-product':
                $headerImage = asset('assets/image/about-us.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'simple-company-explanation':
                $headerImage = asset('assets/image/about-us.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'what-we-believe':
                $headerImage = asset('assets/image/about-us.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'basic-serving':
                $headerImage = asset('assets/image/serving.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-for-family-in-daily-life':
                $headerImage = asset('assets/image/serving.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-simple-tea':
                $headerImage = asset('assets/image/serving.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-ice-tea':
                $headerImage = asset('assets/image/serving.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'we-have-our-own-plantation':
                $headerImage = asset('assets/image/we-have-our-tea-plantation.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'nature-process':
                $headerImage = asset('assets/image/nature-process.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'health-conscious':
                $headerImage = asset('assets/image/health-conscious.jpeg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'contact':
                return view('page.contact', compact('menus'));
            case 'teh-dandang-taburbubuk':
                $products = (new Product())->get();
                return view('page.product-list', compact('menus', 'products'));
            case 'teh-dandang-bag':
                $products = (new Product())->get();
                return view('page.product-list', compact('menus', 'products'));
            default:
                return redirect('/');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {
        //
    }
}
