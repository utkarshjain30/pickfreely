<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Order;
use  App\DeliveryStatus;


class OrdersController extends Controller
{
    //

    public function cancel(Request $request){
        $status = $request->order_status;
        $orderID = $request->order_id;

        $flag = 0;

        if($status == "Order Placed"){
            order::where('order_id',$orderID)->update(['cancelled' => 1]);
            return redirect('account')->with(['status' =>'success', 'message' => 'Successfully Cancelled']);
        }
        else{
            return redirect('account')->with(['status' =>'danger' ,'message' => 'Cannot be cancelled while in '.$status.'. Please contact us for cancelletion request.']);
        }
    }
}
