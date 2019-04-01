<div class="visible-md visible-lg">
<nav class="navbar navbar-white">
    <div class="container-fluid ">
      <div class="navbar-header">
        <a class="navbar-brand navbar-logo" href="/">
          <img src="http://laravelshop/assets/img/logo/logo.png" alt="" class="img-responsive">
        </a>
      </div>
  
      <ul class="nav navbar-nav main-nav">
        <li class="menu-show" data-select="category"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        </li>
        <li class="menu-show" data-select="brand"><a href="#">brands</a></li>
        
      </ul>
  
      <ul class="nav navbar-nav main-right">
          <li class="" style="width:50%;">
            <div class="header-search">
                    <form action="/list/search" method="POST">
                        @csrf
                        <input type="text" placeholder="SEARCH..." name="search">
                        <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                    </form>
            </div>
          </li>
          <li>
              @if (Auth::guard('customer')->check())
              <div class="dropdown">
                  <a id="cartDrop" data-target="dLabel" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                      <i class="fa fa-user" aria-hidden="true"></i>
                  </a>
                  <ul class="dropdown-menu list-group" aria-labelledby="cartDrop">
                   <li class="list-group-item"><a href="/account"><i class="fa fa-chevron-circle-right"></i> <span>My Account</span></a></li>
                   <li class="list-group-item"><a href="/account?=orders"><i class="fa fa-chevron-circle-right"></i> <span>My Orders</span></a></li>
                   <li class="list-group-item"><a class="dropdown-item" href="{{ route('customer.logout') }}"
                    onclick="event.preventDefault();
                                      document.getElementById('logout-form').submit();">
                      <i class="fa fa-chevron-circle-right"></i>{{ __('Logout') }}</a>
  
                  <form id="logout-form" action="{{ route('customer.logout') }}" method="POST" style="display: none;">
                      @csrf
                  </form></li>
                  </ul>
                </div>
                @else
                <a href="/login" class=""><i class="fa fa-user" aria-hidden="true"></i></a>
                @endif
  
          </li>
          <li class="">
              @include('partials.headerCart')
          </li>
      </ul>
    </div>
  </nav>



  <div class="container">
  <div class="mega-menu" data-menu="category">
  
      <div class="mega-menu-container" id="category" >
        <!-- Left Category List -->
        <div class="mega-side-left pull-left">
          <ul class="nav categories-list-container">
            <!-- Dynamically import -->
            @foreach ($Categories as $category)
            <li class="list-category text-uppercase" >{{$category->name}}</li>
            @endforeach
          </ul>
  
        </div>
        <!-- Center Category List  -->
        <div class="mega-side-center pull-left" >

        @foreach ($Categories as $category)
          <div class="main-category-container" data-mainCategory="{{$category->name}}">
            <div class="list-main-category">
            @foreach (renderMainCategory($category->id) as $mainitem)
              <h3 class="text-uppercase">{{$mainitem->name}}</h3>
              <ul class="nav list-sub-category">
                  @foreach (renderSubCategory($mainitem->id) as $subitem)
                  <li class="sub-category-list text-capitalize"><a href="/list?maincategory={{$mainitem->id}}">{{$subitem->name}}</a></li>
                  @endforeach
              </ul>
            @endforeach
            </div>
          </div>
        @endforeach
  
  
  
        </div>
        <!-- Right side Image  -->
        <div class="mega-side-right pull-left" >
            @foreach ($Categories as $category)
            <img src="{{Voyager::image(imageValidate($category->image))}}" alt="" class="img-responsive mainCatImage" width="100%" style="height:340px;" data-mainCategoryImage="{{$category->name}}">
            @endforeach
        </div>
      </div>
  
  
      <div class="mega-menu-container" id="brand">
        <div class="mega-side-left pull-left">
          <ul class="nav list-brand">
            @foreach ($Brand as $item)
                <li class="brand-list"><a href="/list?brand={{$item->id}}"><span>{{$item->name}}</span></a></li>    
            @endforeach
          </ul>
        </div>
        <div class="mega-side-one-third pull-left">
            <ul class="nav">
            @foreach ($Brand as $item)  
            <li class=" pull-left">
                <a href="/list?brand={{$item->id}}">
                    <img src="{{Voyager::image(imageValidate($item->image))}}" alt="logo" style="height:50px; width:150px;">
                </a>
            </li>
            @endforeach
            </ul>
        </div>
      </div>
  </div>
  </div>
</div>

{{-- Mobile Menu Starts --}}
<nav class="mobile-navbar navbar-white visible-sm visible-xs">
  <div class="container-fluid mobile-navbar-container">
    <div class="mobile-navbar-menu">
        <a href="javascript:void(0)" id="mobile-menu-open"><i class="fa fa-bars" aria-hidden="true"></i></a> 
    </div>
    <div class="mobile-navbar-header navbar-dark">
      <a class="mobile-navbar-brand navbar-logo" href="#">
        <img src="http://laravelshop/assets/img/logo/logo.png" alt="" class="img-responsive">
      </a>
    </div>
    <!-- <div class="mobile-navbar-searchbox">
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
    </div> -->
    <div class="mobile-navbar-right">
      <div class="mobile-navbar-account">
        <div class="dropdown">
            <a id="accountDrop" data-target="dLabel" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-user" aria-hidden="true"></i>
            </a>
            <ul class="dropdown-menu list-group" aria-labelledby="accountDrop">
             <li class="list-group-item"><a href="#"> My Account</a></li>
             <li class="list-group-item"><a href="#"> My Orders</a></li>
             <li class="list-group-item"><a href="#"> Logout</a></li>
            </ul>
          </div>
      </div>
      <div class="mobile-navbar-cart">
        
        <div class="dropdown">
            <a id="cartDrop" data-target="dLabel" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            </a>
            <ul class="dropdown-menu list-group" aria-labelledby="cartDrop">
                @include('partials.headerCart')
            </ul>
          </div>
      </div>
    </div>
  </div>
</nav>
<div class="mobile-menu-container" id="mobile-menu">
  <div class="close-tab text-center">
    <a href="#" class="" id="mobile-menu-close"><i class="fa fa-times" aria-hidden="true"></i></a>
  </div>
  <div class="mobile-menu-items">
    <div class="mobile-navbar-search">
        <form class="" role="search" action="/search.php" method="post">
            <div class="input-group mobile-navbar-searchbox">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </span>
              </div>
          </form>
    </div>
      <div class="" id="accordion" role="tablist" aria-multiselectable="true">
          <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
              <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                 Categories
                </a>
              </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
              <div class="panel-body">
                {{-- Shows The main Category --}}
                @foreach ($Categories as $category)
                <div class="" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                      <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                          <a role="button" data-toggle="collapse" data-parent="#main-accordion" href="#{{$category->name}}" aria-expanded="true" aria-controls="collapseOne" class="text-uppercase"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                           {{$category->name}}
                          </a>
                        </h4>
                      </div>
                      <div id="{{$category->name}}" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                          {{-- Sub Category listing --}}
                          @foreach (renderMainCategory($category->id) as $mainitem)
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                  <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#main-accordion" href="#{{$mainitem->name}}" aria-expanded="true" aria-controls="collapseOne" class="text-uppercase"><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                     {{$mainitem->name}}
                                    </a>
                                  </h4>
                                </div>
                                <div id="{{$mainitem->name}}" class="panel-collapse collapse out" role="tabpanel" aria-labelledby="headingOne">
                                  <div class="panel-body">
                                      @foreach (renderSubCategory($mainitem->id) as $subitem)
                                      <li class="sub-category-list text-capitalize"><a href="/list?maincategory={{$mainitem->id}}">{{$subitem->name}}</a></li>
                                      @endforeach
                                  </div>
                                </div>
                              </div>
                            @endforeach
                        </div>
                      </div>
                    </div>
                </div>
              @endforeach

            </div>
          </div>



          <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingTwo">
              <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                 Brands
                </a>
              </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
              <div class="panel-body">
                  @foreach ($Brand as $item)
                  <li class="sub-category-list text-capitalize"><a href="/list?brand={{$item->id}}"><span>{{$item->name}}</span></a></li>    
                  @endforeach
              </div>
            </div>
          </div>
        </div>
  </div>
</div>


