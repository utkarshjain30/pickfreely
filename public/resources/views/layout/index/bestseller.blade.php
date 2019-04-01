{{-- Get One image form images = json_decode($item->images,true)[0]) --}}
<!-- Tab Pane One -->
<div class="tab-pane active" id="p-bestseller">
        <div class="row">
            <!-- Single Product Carousel-->
            <div id="single-product-bestseller" class="owl-carousel">
                <!-- Start Single Product Column-->
                @foreach ($Products as $item)
                <div class="col-md-3">
                    <div class="single-product">
                        <div class="single-product-img">
                            <a href="/product/skuid={{$item->id}}">
                                <img class="primary-img" src="{{Voyager::image(thumbnail(imageValidate($item->feature_image), 'cropped'))}}" alt="product">
                                @if (empty(json_decode($item->images)))
                                <img class="secondary-img" src="{{asset("assets/img/noproduct.png")}}" alt="product">
                                @else
                                <img class="secondary-img" src="{{Voyager::image(thumbnail(imageValidate(getOne($item->images)),'cropped'))}}" alt="product">
                                @endif
                            </a>
                            <div class="product-status">
                                   
                                <span class="product-new">New</span>
                            </div>
                        </div>
                        <div class="single-product-content">
                            <div class="product-content-head">                                
                            <h2 class="product-title"><a href="#">{{$item->name}}</a></h2>
                            <p class="product-price">Rs. {{$item->price}}</p>
                            </div>
                            <div class="product-bottom-action">
                                <div class="product-action">
                                    <div class="action-button">
                                        @if ($item->stocks > 0)
                                        <form action="/cart/skuid={{$item->id}}" method="post">
                                            @csrf
                                            <input type="hidden" name="qty" value="1">
                                            <button type="submit" class="btn"><i class="fa fa-shopping-cart"></i> <span>Add to bag</span></button>
                                        </form>    
                                        @else
                                        <button type="button" class="btn"><i class="fa fa-ban"></i> <span>Out of stock</span></button>
                                        @endif
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- End Single Product Column -->

                @endforeach 
            </div><!-- End Single Product Carousel-->
        </div>
    </div><!-- End Tab Pane One -->