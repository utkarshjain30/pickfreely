    
<!-- Header Area -->
<div class="header-area">
        <!-- Header top bar -->
        <div class="header-top-bar">
            <div class="container-fluid">
                <div class="header-top-inner">
                    <div class="row">
                        <div class="col-md-8 col-sm-12">
                            <div class="header-top-left">
                                <div class="phone">
                                    <label>Call us:</label> (+91) 09831628002
                                </div>
                                <div class="e-mail">
                                    <label>Email:</label> support@pickfreely.com
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <div class="header-top-right">
                                <!-- Header Social Icon -->
                                <div class="header-social-icon">
                                    <ul>
                                        <li><a href="https://plus.google.com/106971576724542568233"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="https://www.facebook.com/Pick-Freely-253905168711723/"><i class="fa fa-facebook"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Header Top bar -->
        <!-- Header bottom -->
        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <!-- Header Search -->
                        <div class="header-search">
                                <form action="/list/search" method="POST">
                                    @csrf
                                    <input type="text" placeholder="SEARCH..." name="search">
                                    <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                </form>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <!-- Header logo -->
                        <div class="header-logo">
                            <a href="/"><img src="{{URL::to("assets/img/logo/logo.png")}}" alt="logo"></a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        {{-- Header Cart --}}
                        @include('partials.headerCart')
                    </div>
                </div>
            </div>
        </div><!-- End Header bottom -->
    </div><!-- End Header Area -->
