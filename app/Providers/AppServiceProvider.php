<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Setting;
use App\Promotion;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $settings = (new Setting)->find(1);
        $promos = (new Promotion)->where([
            'id' => 1,
            'is_active' => true
        ])->first();

        View::share('settings', $settings);
        View::share('promos', $promos);
    }
}
