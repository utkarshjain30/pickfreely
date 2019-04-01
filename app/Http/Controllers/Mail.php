<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\cosmetic_categories;
use App\cosmetic_main_categories;
use App\cosmetic_sub_categories;
use App\brand;
use App\Banners;
use App\Product;
use App\Order;
use App\Mail\Welcome;
use Cart;

class Mail extends Controller
{
    //
    public function index(){
        $order = Order::all();
        \Mail::to('sayed182@gmail.com')->send(new Welcome);
       return "sent";
    }
}
