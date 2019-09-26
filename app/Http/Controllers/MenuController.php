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
            case 'what-we-are-from':
                $headerImage = asset('assets/image/About-Us-HISTORY-OF-THE-PRODUCT.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'what-we-are':
                $headerImage = asset('assets/image/About-Us-SIMPLE-COMPANY-EXPLANATION.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'what-we-serve':
                $headerImage = asset('assets/image/About-Us-WHAT-WE-BELIEVE.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'history-of-the-product':
                $headerImage = asset('assets/image/About-Us-HISTORY-OF-THE-PRODUCT.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'simple-company-explanation':
                $headerImage = asset('assets/image/About-Us-SIMPLE-COMPANY-EXPLANATION.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'what-we-believe':
                $headerImage = asset('assets/image/About-Us-WHAT-WE-BELIEVE.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'basic-serving':
                $headerImage = asset('assets/image/BASIC-SERVING.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-for-family-in-daily-life':
                $headerImage = asset('assets/image/SERVING-FOR-FAMILY-IN-DAILY-LIFE.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-simple-tea':
                $headerImage = asset('assets/image/SERVING-SIMPLE-TEA.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'serving-ice-tea':
                $headerImage = asset('assets/image/SERVING-ICE-TEA.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'we-have-our-own-plantation':
                $headerImage = asset('assets/image/WE-HAVE-OUR-OWN-PLANTATION.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'nature-process':
                $headerImage = asset('assets/image/NATURE-PROCESS.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'health-conscious':
                $headerImage = asset('assets/image/HEALTH-CONSCIOUS.jpg');
                return view('page.static', compact('menus', 'headerImage'));
            case 'contact':
                $headerImage = asset('assets/image/contctus.jpg');
                return view('page.contact', compact('menus', 'headerImage'));
            case 'teh-dandang-taburbubuk':
                $headerImage = asset('assets/image/Product-tubruk.jpg');
                $products = (new Product())->get();
                return view('page.product-list', compact('menus', 'products', 'headerImage'));
            case 'teh-dandang-bag':
                $headerImage = asset('assets/image/Product-bag.jpg');
                $products = (new Product())->get();
                return view('page.product-list', compact('menus', 'products', 'headerImage'));
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
