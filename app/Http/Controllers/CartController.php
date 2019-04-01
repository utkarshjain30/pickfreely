<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Cart;

class CartController extends Controller
{
    //darryldecode/cart ->plugin
    
    public function index( Request $request){
        $cart = Cart::getContent();
        return view('cart')->with('cart', $cart);
    }
    public function addProduct(Request $request,$id){

        $product = Product::find($id);

        $productName = $product->name;
        $productPrice = $product->price;
        $productImage = $product->feature_image;
        $productColor = $request->color;
        $productQty = $request->qty;

        $productData = array("id"=>"$id",
                             "name"=>"$productName",
                             "price"=>"$productPrice",
                             "quantity"=>"$productQty",
                             "attributes"=>array(
                                "image"=>"$productImage",
                                "color"=>"$productColor"
                             ));

        Cart::add($productData);
        $cart = Cart::getContent();
        view('partials.headerCart')->with('cart', $cart);
        return redirect(url()->previous());
    }

    public function updateProduct(Request $request,$id){
        $qty = $request->qty;
        
        Cart::update($id, array(
            'quantity' => array(
                'relative' => false,
                'value' => $qty
            ),
        ));
        return redirect(url()->previous());
    }

    public function removeProduct(Request $request,$id){
        Cart::remove($id);
        return redirect(url()->previous());
    }

    public function clearCart(Request $request){
        Cart::clear();
        return redirect(url()->previous());
    }
}
