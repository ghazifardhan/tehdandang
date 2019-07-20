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
                return view('page.static', compact('menus'));
            case 'simple-company-explanation':
                return view('page.static', compact('menus'));
            case 'what-we-believe':
                return view('page.static', compact('menus'));
            case 'basic-serving':
                return view('page.static', compact('menus'));
            case 'serving-for-family-in-daily-life':
                return view('page.static', compact('menus'));
            case 'serving-simple-tea':
                return view('page.static', compact('menus'));
            case 'serving-ice-tea':
                return view('page.static', compact('menus'));
            case 'we-have-our-own-plantation':
                return view('page.static', compact('menus'));
            case 'nature-process':
                return view('page.static', compact('menus'));
            case 'health-conscious':
                return view('page.static', compact('menus'));
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
