<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\Welcome;
use Cart;
use App\order;
use App\Product;

class Checkout extends Controller
{
    //
    public function confirm(Request $request){
        // return $request;

        $cart = Cart::getContent();
        $productModel =new Product;
        
        $customerID =($request->customerID != null)? $request->customerID : '0';
        $customerEmail = $request->Email;
        $orderID = strtotime(date('D')).mt_rand(1, 9).mt_rand(10, 99).mt_rand(100, 999).$customerID;

        $productID = $request->productID;

        $state = $request->State;

        $city = $request->City;

        $postcode = $request->Postcode;//Postcode

        $productQTY ="";
        $productQuantityString ="";
        $name = ($request->First_Name)." ".($request->Last_Name);
        $address = ($request->Address_1)." ".($request->Address_2);
        $totalPrice = $request->totalPrice;
        $mobile = $request->Mobile;
        $paymentMethod = $request->payment;
        if($paymentMethod == 'COD'){
            $paymentStatus ='Not Aplicable';
        }else
        {
            $paymentStatus ="Pending";
        }
        $product =explode(',',$productID);

        foreach($product as $item){
           
            $quantity = (int)$cart->get($item)['quantity'];
            $productQTY .= $quantity.',';
            $productQuantityString .= $cart->get($item)['name'].'='.$quantity.'/';

            if($quantity !=0){
                $qtyItem = (int)Product::find($item)['stocks'] - $quantity;

                Product::where('id', $item)
                        ->update(['stocks' => $qtyItem]);
            }
        }
        
        $order = new order;
        $order->order_id = $orderID;
        $order->customer_id = $customerID;
        $order->product_id = $productID;
        $order->product_quantity = $productQTY;
        $order->quantity = $productQuantityString;
        $order->name = $name;
        $order->address =$address;
        $order->mobile = $mobile;
        $order->total_price = $totalPrice;
        $order->payment_method = $paymentMethod;
        $order->payment_status = $paymentStatus;
        $order->save();
        
        // \Mail::to($request->Email)->send(new Welcome);
        Cart::clear();
        if($paymentMethod == 'online'){
            return view('ccavenue',compact('order','orderID', 'customerEmail', 'city', 'state', 'postcode'));
        }

        // return $product;
        return view('thankyou');


    }

    public function paymentsuccess(Request $request){
        return view('ccavenue.ccavResponseHandler');
    }
    public function paymentfailed(Request $request){
        return view('failed');
    }
}
