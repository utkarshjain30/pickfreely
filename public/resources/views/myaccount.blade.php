@extends('layout.app')
@section('contents')
<hr>
<?php
//Variables
$name=$customer->name;
$customer_id=$userid;
$phone = "";
$email = "";
$address = "";
if($customerInfo !=null){
    $phone = $customerInfo->phone;
    $email = $customerInfo->email;
    $address = $customerInfo->address;
}else{
    $phone = $customer->phone;
    $email = $customer->email;
    $address = $customer->address;
}



?>
@if (session('status'))
<div class="alert alert-{{ session('status') }}">
    {{ session('message') }}
</div>
@endif

<div class="container bootstrap snippet">
    <div class="row">
    <div class="col-sm-10"><h1 style="text-transform:uppercase;font-weight:bold;">{{$name}}</h1></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        {{-- <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload"> --}}
      </div><hr><br>
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
          <li class="list-group-item text-right"><span class="pull-left"><strong>Orders</strong></span> {{$order->where('customer_id', $userid)->count()}}</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Completed</strong></span> {{$order->where('customer_id', $userid)->where('completed', 'Order Delivered')->count()}}</li>
          </ul> 
               
          <div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            	<a href="https://www.facebook.com/Pick-Freely-253905168711723" class="btn"><i class="fa fa-facebook fa-2x">
                </i></a>
                <a href="https://plus.google.com/106971576724542568233"  class="btn"><i class="fa fa-google-plus fa-2x"></i></a>
            </div>
          </div>
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#orders">Orders</a></li>
                {{-- <li><a data-toggle="tab" href="#settings">Menu 2</a></li> --}}
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
            <form class="form" action="{{URL::current()}}/update" method="post" id="registrationForm">
                @csrf
                <div class="form-group">
                    <div class="col-xs-6">
                        <?php $name = explode(' ',$customer->name);
                            $fname ="";$lname = "";
                            if( sizeof($name)>0){
                                if(sizeof($name)>1){
                                    $fname = $name[0];
                                    $lname = $name[1];
                                }
                                else{
                                    $fname = $name[0];
                                }
                            }
                    ?>
                        <label for="first_name"><h4>First name</h4></label>
                        <input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any." value="{{$fname}}">
                    </div>
                </div>
                <div class="form-group">
                    
                    <div class="col-xs-6">
                    <label for="last_name"><h4>Last name</h4></label>
                    <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any." value="{{$lname}}">
                    </div>
                </div>
    
                <div class="form-group">
                    
                    <div class="col-xs-6">
                        <label for="phone"><h4>Phone</h4></label>
                    <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any." value="{{$phone}}">
                    </div>
                </div>
                <div class="form-group">
                    
                    <div class="col-xs-6">
                        <label for="email"><h4>Email</h4></label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email." value="{{$email}}">
                    </div>
                </div>
                <div class="form-group">
                    
                    <div class="col-xs-12">
                        <label for="email"><h4>Address</h4></label>
                    <textarea type="message" class="form-control" id="location" name="address" placeholder="somewhere" title="enter a location" value="">{{$address}}</textarea>
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-xs-12" style="margin-top:25px;">
                        <input type="hidden" name="customer_id" value="{{$customer_id}}">
                        <button type="submit" class="btn">Update</button>
                    </div>
                </div>
            </form>                     
              
              <hr>
            
             </div><!--/tab-pane-->

             {{-- ORDERS START HRER --}}
             <div class="tab-pane" id="orders">
               <h2></h2>
               <hr>
               @if ($order ==null)
               <h3 class="text-info text-center">Oops... No orders to show.</h3>

               @else

                    @if ( $order->count() > 0)
                    @foreach ($order as $item)
                    <ul class="list-group" style="margin-top:20px;">
                        <li class="list-group-item">
                            <div class="row">
                            <div class="col-md-9">
                    <?php
                        $productIDS=explode(",",$item->product_id);
                        $productQTY=explode(",",$item->product_quantity);
                        
                        for ($i=0; $i < sizeof($productIDS)-1; $i++) { 
                            $product_id =  $productIDS[$i];
                            $product = App\Product::find($product_id);
                            $price = (($product->price)-($product->price *($product->discount)/100))* $productQTY[$i];
                            // For loop Starts
                        ?>
                                <div class="row " style="border-right:1px black solid; margin-top:10px;">
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <img src="{{Voyager::image(thumbnail(imageValidate($product->feature_image)))}}" alt="" height="70" width="100%">
                                    </div>
                                    <div class="col-md-9 col-sm-9 col-xs-9 orders-column">
                                        <h5>{{$product->name}}</h5>
                                        <p>QTY : <span>{{$productQTY[$i]}}</span></p>
                                        <p> <b>Price : <span>{{$price}}</span></b></p>
                                        <a href="/product/skuid={{$product_id}}" class="btn btn-primary">View Product</a>
                                    </div>
                                </div>
                                <?php }//for Loop ends ?>
                                {{-- Product Group ends here --}}
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                    <h5>#Order ID : <span>{{$item->order_id}}</span></h5>
                                    <br>
                                    <p><b>Total Price: <span>{{$item->total_price}}</span></b> </p>
                                    <p><b>Payment Method : <span>{{$item->payment_method}}</span></b></p>
                                    <h5>Status : @if ($item->cancelled > 0)
                                                <span class="btn-danger">CANCELLED<span>
                                                @else    
                                                <span>{{$item->completed}}</span></h5>
                                                @endif

                                    <form action="/orders/cancel" method="post" 
                                        @if ($item->cancelled >0 )
                                            hidden
                                        @endif>
                                        @csrf
                                        <input type="hidden" name="order_id" value="{{$item->order_id}}">
                                        <input type="hidden" name="order_status" value="{{$item->completed}}">
                                        <button type="submit" class="btn btn-warning">Cancel Order</button>
                                    </form> 
                                </div>
                            </div>
                        </li>
                    <li class="list-group-item disabled">
                            <h5><b>Order Placed On : {{explode(" ",$item->created_at)[0]}}</b></h5>
                    </li>
                    @endforeach
                    </ul>
                    
                    @endif
               
                @endif
                
               
             </div><!--/tab-pane-->
             {{-- <div class="tab-pane" id="settings">
                    
                  <hr>
                  
              </div> --}}
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
</div>




@endsection
