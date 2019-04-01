<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Auth;
use App\cosmetic_categories;
use App\cosmetic_main_categories;
use App\cosmetic_sub_categories;
use App\brand;
use App\Product;
use Cart;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);


        view()->composer('layout.list.list-category',function($view){
            $view->with('CosmeticCategories' , cosmetic_categories::all() )
                 ->with('categories' , cosmetic_main_categories::all())
                 ->with('sub_categories' , cosmetic_sub_categories::all())
                 ->with('brands' , brand::all());
        });
        view()->composer('layout.app',function($view){
            $view->with('Categories' , cosmetic_categories::all() )
                 ->with('MainCategories' , cosmetic_main_categories::all())
                 ->with('SubCategories' , cosmetic_sub_categories::all())
                 ->with('Brand' , brand::all())
                 ->with('Products' , Product::all());
        });
        view()->composer('partials.headerCart',function($view){
            $view->with('cart', Cart::getContent());
        });
        //Auth::user();

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
