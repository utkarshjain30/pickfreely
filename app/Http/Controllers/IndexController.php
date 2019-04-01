<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Auth;
use App\cosmetic_categories;
use App\cosmetic_main_categories;
use App\cosmetic_sub_categories;
use App\brand;
use App\Banners;
use App\Product;
use Cart;
use Auth;

class IndexController extends Controller
{
    //
    public function index(){
        // if(Auth::guard('customer')->user()->hasVerifiedEmail()){
        //  return "verified";
        // }
        // else {
        //     return "not Verified";
        // }
        $Banners = Banners::all();
        $Products = Product::all();
        $featuredProduct = Product::where('featured',1)->take(10)->get()->sortByDesc('created_at');
        $cart = Cart::getContent();
        view('partials.header')->with('cart', $cart);

        return view('index',compact('Banners', 'Products','featuredProduct'));
    }
}
