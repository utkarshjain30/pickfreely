<!-- Start Single Product Column -->

@foreach ($products as $product)

<div class="col-md-4 col-sm-4 product-box" style="">
    <div class="single-product">
        <div class="single-product-img">
            <a href="/product/skuid={{$product->id}}">
                <img class="primary-img" src="{{Voyager::image(thumbnail(imageValidate($product->feature_image), 'cropped'))}}" alt="product">
                @if (empty(json_decode($product->images)))
                <img class="secondary-img" src="{{asset("assets/img/noproduct.png")}}" alt="product">
                @else
                <img class="secondary-img" src="{{Voyager::image(thumbnail(imageValidate(getOne($product->images)),'cropped'))}}" alt="product">
                @endif
            </a>
        </div>
        <div class="single-product-content">
            <div class="product-content-head">
            <h2 class="product-title"><a href="#">{{$product->name}}</a></h2>
            <p class="product-price">Rs. {{$product->price}}.00/-</p>
            </div>
            <div class="product-bottom-action">
                <div class="product-action">
                    <div class="action-button">
                        @if ($product->stocks > 0)
                        <form action="/cart/skuid={{$product->id}}" method="post">
                            @csrf
                            <input type="hidden" name="qty" value="1">
                            <button type="submit" class="btn"><i class="fa fa-shopping-cart"></i> <span>Add to bag</span></button>
                        </form>    
                        @else
                        <button type="button" class="btn"><i class="fa fa-shopping-cart"></i> <span>Out of stock</span></button>
                        @endif
                    </div>
                    <div class="action-view">
                    <a href="/product/skuid={{$product->id}}"><i class="fa fa-search"></i>Quick view</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endforeach
<!-- End Single Product Column -->



