<!-- Related Product area area -->
<div class="related-product-area">
        <div class="container">
            <div class="row">
                <!-- Brand Product Column -->
                <div class="col-md-12">
                    <div class="brand-products c-carousel-button">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="products-head">
                                    <div class="products-head-title">
                                        <i class="fa fa-picture-o"></i>
                                        <h2>Related Products</h2>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- Single Product Carousel-->
                            <div id="single-product-related" class="owl-carousel">
                            @foreach (showRelatedProduct($product->sub_category) as $product) 
                                <!-- Start Single Product Column-->
                                <div class="col-md-3">
                                    <div class="single-product">
                                        <div class="single-product-img">
                                        <a href="/product/skuid={{$product->id}}">
                                            <img class="primary-img" src="{{Voyager::image(imageValidate($product->feature_image))}}" alt="product" style="height:400px;">
                                            </a>
                                            <div class="product-status">
                                                <span class="product-new">New</span>
                                            </div>
                                        </div>
                                        <div class="single-product-content another-content another-content-2">
                                            <div class="ratings">
                                                <div class="rating-box">
                                                    <ul>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-content-head">
                                                <h2 class="product-title"><a href="#">{{$product->name}}</a></h2>
                                                <p class="product-price">Rs. {{$product->price}}/-</p>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- End Single Product Column -->
                            @endforeach
                            </div><!-- End Single Product Carousel -->
                        </div>
                    </div>
                </div><!-- End Brand Products Column -->
            </div>
        </div>
    </div><!-- End Related Product area -->