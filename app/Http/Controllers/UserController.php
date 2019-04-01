<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\customer;
use App\Order;
use App\CustomersInfo;

class UserController extends Controller
{
    //
    public function index(Request $request){
        if(Auth::guard('customer')->user()){
            $userid = Auth::guard('customer')->user()->id;
            $customer = customer::where('id', $userid)->first();
            $customerInfo = CustomersInfo::where('customer_id', $customer->id)->first();
            $order = order::where('customer_id', $userid)->get();
            return view('myaccount',compact('order' ,'customerInfo', 'userid', 'customer'));
        }
        else {
            return redirect('/login');
        } 
    }
    public function update(Request $request){
        $id = $request->customer_id;
        $name = ($request->first_name)." ".($request->last_name);
        $phone = $request->phone;
        $email = $request->email;
        $address = $request->address;
        $city = $request->city;
        $state = $request->state;
        $zipcode = $request->zipcode;
        $customer = CustomersInfo::where('customer_id', $id)->update(['name'=>$name , 'phone'=>$phone, 'email'=>$email, 'address'=>$address, 'city'=>$city, 'state'=>$state, 'zip_code'=>$zipcode ]);
        return redirect()->back();
    }

}

