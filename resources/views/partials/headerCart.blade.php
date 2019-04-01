<!-- Header Cart Area-->
<div class="header-cart-area">
    <div class="header-cart">
        <ul>
            <li class="clearfix">
                <a href="javascript:void(0)" style="float:left">
                    <i class="fa fa-shopping-cart"></i>
                    <a href="/cart" style="float:left;margin-top:15px;"><span class="my-cart">My cart</span></a>
                    <?php $cartCollection = Cart::getContent(); ?>
                <span class="badge">{{$cartCollection->count()}}</span>
                </a>
                <ul style="top:100%;right:-84px;">
                    <li style="display:flex;flex-direction:column;">
                        <?php $subTotal=0;$grandTotal =0; ?>
                        @foreach ($cart as $item)
                        <?php $subTotal +=$item->getPriceSum();$grandTotal +=$item->getPriceSumWithConditions(); ?>
                        <div class="cart-list">
                            <div class="cart-list-item">
                                <div class="row">
                                <div class="cart-list-img col-3">
                                <a href="/product/skuid={{$item->id}}"><img src="{{Voyager::image(thumbnail(imageValidate($item->attributes->image)))}}" alt="cart" style="height:50px;width:50px;" /></a>
                                </div>
                                <div class="cart-content col-6">
                                <a href="#">{{$item->name}}</a>
                                <p>{{$item->quantity}} x <span>Rs. {{$item->price}}/-</span></p>
                                </div>
                                <div class="cart-button col-3">
                                    <a href="/cart" style="padding-right: 12px;"><i class="fa fa-pencil"></i></a>
                                    <form action="/cart/remove/skuid={{$item->id}}" method="post" style="float:right;">
                                        @csrf
                                        <button type="submit" class="btn" style="padding: 2px 5px !important;border-radius: 50%;font-size:10px !important;"><i class="fa fa-times"></i></button>
                                    </form>
                                </div>
                            </div>
                            </div>
                        </div>
                        @endforeach
                        <div class="cart-subtotal">
                        <p>Subtotal: <span>Rs. {{$subTotal}}/-</span></p>
                        </div>
                        <div class="cart-action">
                            <button type="button" class="btn"><a href="/checkout"><span>checkout</span> <i class="fa fa-long-arrow-right"></a></i></button>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div><!-- End Header Cart Area-->