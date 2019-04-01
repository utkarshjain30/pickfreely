<!-- Brand Logo area -->
<div class="brand-logo-area">
        <div class="container">
            <div class="brand-logo">
                <div class="brand-logo-title">
                    <h2>Logo brands</h2>
                </div>
                <div id="brands-logo" class="owl-carousel">

                    @foreach ($Brand as $item)    
                    <div class="single-brand-logo">
                        <a href="#">
                            <img src="{{Voyager::image(imageValidate($item->image))}}" alt="logo" style="height:50px; width:175px;">
                        </a>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div><!-- End Brand Logo area -->
    <!-- Footer area -->
    <div class="footer-area">
        <!-- Footer Top -->
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!-- Footer Left -->
                        <div class="footer-left">
                            <!-- Footer Logog -->
                            <div class="footer-logo">
                                <a href="/"><img src="{{URL::to("assets/img/logo/logo.png")}}" alt="logo"></a>
                            </div>
                            <div class="footer-static-content">
                                <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>
                            </div>
                            <div class="footer-payment">
                                <h2>Payments</h2>
                                <ul>
                                    <li><a href="#"><img src="{{URL::to("assets/img/logo/payment.png")}}" alt="payment"></a></li>
                                </ul>
                            </div>
                        </div><!-- End Footer Left -->
                    </div>
                    <div class="col-md-8 footer-right-col">
                        <!-- Footer Right -->
                        <div class="footer-right">
                            <div class="footer-newsletter">
                                <form action="#">
                                    <h2>Newsletter</h2>
                                    <input type="text" title="Sign up for our newsletter" required>
                                    <button type="submit">Subscribe</button>
                                </form>
                            </div>
                            <div class="information-link">
                                <div class="single-information-link">
                                    <h2>Pickfreely Links</h2>
                                    <ul>
                                        <li><a href="#">Sitemap</a></li>
                                        <li><a href="/privacy">Privacy Policy</a></li>
                                        <li><a href="/cancellation">Cancellation Policy</a></li>
                                        <li><a href="/terms">Terms & Conditions</a></li>
                                        <li><a href="/contact">Contact Us</a></li>
                                    </ul>
                                </div>
                                <div class="single-information-link" style="text-transform:capitalize;">
                                    <h2>Shop Links</h2>
                                    <ul>
                                    @foreach ($MainCategories as $item)
                                    <li><a href="/list?main_categories?={{$item->id}}">{{$item->name}}</a></li>
                                    @endforeach
                                    </ul>
                                </div>
                                <div class="single-information-link">
                                    <h2> My account </h2>
                                    <ul>
                                        <li><a href="/account">My Orders</a></li>
                                        {{-- <li><a href="#">My Wishlist</a></li> --}}
                                        <li><a href="/account">My Addresses</a></li>
                                        <li><a href="/account">My Personal Info</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!-- End Footer Left -->
                    </div>
                </div>
            </div>
        </div><!-- End Footer Top -->
        <!-- Footer Bottom -->
        <div class="footer-bottom">
            <div class="container">
                <!-- Copyright -->
                <div class="copyright">
                    <p>Copyright &copy; <a href="/">PickFreely</a> All Rights Reserved.</p>
                </div>
            </div>
        </div><!-- End Footer Bottom -->
    </div><!-- End Footer area -->