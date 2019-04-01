<!-- Fetured Product area -->
<div class="fetured-product-area brand-products c-carousel-button">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="fetured-products">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="products-head">
                                    <div class="products-head-title">
                                        <i class="fa fa-picture-o"></i>
                                        <h2>Featured products</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Fetured Product Carousel -->
                <div >
                    <div class="col-md-12 col-sm-12">
                        <!-- Fetured Product Item area -->
                        <div class="fitured-product-item-area">
                            <div class="row">
                                @foreach ($featuredProduct as $item)
                                <!-- Fetured Product Inner Item Column -->
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <!-- Fetured Product Inner Item -->
                                    <div class="fiture-product-inner-item">
                                        <!-- Fetured Product Single Item -->
            
                                        <div class="fiture-poroduct-single-item">
                                            <div class="single-item-img">
                                                <a href="{{URL::current()}}/product/skuid={{$item->id}}">
                                                    <img class="primary-img" src="{{Voyager::image(thumbnail(imageValidate($item->feature_image)),'cropped')}}" alt="product">
                                                    
                                                    @if (empty(json_decode($item->images)))
                                                    <img class="secondary-img" src="{{asset("assets/img/noproduct.png")}}" alt="product">
                                                    @else
                                                    <img class="secondary-img" src="{{Voyager::image(thumbnail(imageValidate($item->feature_image)),'cropped')}}" alt="product">
                                                    @endif
                                                </a>
                                            </div>
                                            <div class="single-item-content">
                                                <div class="content-head">
                                                    <h2 class="product-title">
                                                        <a href="#">{{$item->name}}</a>
                                                    </h2>
                                                    <p class="product-price"><!-- discount<span>$175.00</span>--> Rs. {{$item->price}}/-</p>
                                                </div>
                                                <div class="content-action">
                                                    @if ($item->stocks > 0)
                                                    <form action="/cart/skuid={{$item->id}}" method="post">
                                                        @csrf
                                                        <input type="hidden" name="qty" value="1">
                                                        <button type="submit" class="btn"><i class="fa fa-shopping-cart"></i></button>
                                                    </form>    
                                                    @else
                                                    <button type="button" class="btn"><i class="fa fa-ban"></i></button>
                                                    @endif
                                                    <ul>
                                                    <li class="heart-li"><a href="#"><i class="fa fa-heart"></i></a></li>
                                                    <li class="text-center" style="width:100%;"><a href="/product/skuid={{$item->id}}"><i class="fa fa-search"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div><!-- End Fetured Product Single Item -->

                                    </div><!-- End Fetured Product Inner Item -->
                                </div><!-- End Fetured Product Inner Item Column -->
                                @endforeach                             
                            </div>
                        </div><!-- End Fetured Product Item area -->
                    </div>
                </div><!-- End Fetured Products Carousel -->
            </div>
        </div>
    </div><!-- End Fetured Product area -->