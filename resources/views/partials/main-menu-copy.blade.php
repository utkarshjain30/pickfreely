{{-- Extends layout\app.blade.php --}}

{{-- 
    Can be used for displaying Sale
    <span class="label-menu">Sale</span>    
--}}
<!-- Main Menu -->
<div class="main-menu hidden-xs">
    <nav>
        <ul class="main-ul">
            <li class="sub-menu-li"><a href="/" class="active">Home</a>
            </li>
            <li><a href="javascript.void(0)">Categories<i class="fa fa-chevron-down"></i></a>
                <ul class="mega-menu-ul">
                    <li>
                        <!-- Mega Menu -->
                        <div class="mega-menu">
                            @foreach ($Categories as $category)
                            <div class="single-mega-menu">
                            <h2><a href="/list?category={{$category->id}}">{{$category->name}}</a></h2>
                           @foreach (renderMainCategory($category->id) as $mainitem)
                            <a href="/list?category={{$category->id}}&maincategory={{$mainitem->id}}"><i class="fa fa-chevron-circle-right"></i> <span>{{$mainitem->name}}</span></a>
                            @endforeach
                            </div>
                            @endforeach
                            
                        </div>
                    </li>
                </ul>
            </li>
            
            <li class="sub-menu-li"><a href="javascript.void(0)" class="new-arrivals">Brands<i class="fa fa-chevron-down"></i></a>
                <!-- Sub Menu -->
                <ul class="sub-menu">
                    @foreach ($Brand as $item)
                        <li><a href="/list?brand={{$item->id}}"><i class="fa fa-chevron-circle-right"></i> <span>{{$item->name}}</span></a></li>    
                    @endforeach
                </ul>
            </li>
            <li class="sub-menu-li"><a href="/contact" class="">Contact</a></li>
            @if (Auth::guard('customer')->check())
        <li class="sub-menu-li"><a href="#" class="">Hello &nbsp;{{Auth::guard('customer')->user()->name}}<i class="fa fa-chevron-down"></i></a>
                    <ul class="sub-menu">
                        <li><a href="/account"><i class="fa fa-chevron-circle-right"></i> <span>My Account</span></a></li>
                        <li><a href="/account?=orders"><i class="fa fa-chevron-circle-right"></i> <span>My Orders</span></a></li>
                        {{-- <li><a href="/account"><i class="fa fa-chevron-circle-right"></i> <span>My Wishlist</span></a></li>
                        <li><a href="/account"><i class="fa fa-chevron-circle-right"></i> <span>My Wallet</span></a></li> --}}
                        <li><a class="dropdown-item" href="{{ route('customer.logout') }}"
                            onclick="event.preventDefault();
                                              document.getElementById('logout-form').submit();">
                             <i class="fa fa-chevron-circle-right"></i>{{ __('Logout') }}</a>

                         <form id="logout-form" action="{{ route('customer.logout') }}" method="POST" style="display: none;">
                             @csrf
                         </form>
                        </li>
                    </ul>
                </li>                
            @else
            <li class="sub-menu-li"><a href="/login" class="">Login/register<i class="fa fa-chevron-down"></i></a></li>
            @endif           
        </ul>
    </nav>
</div><!-- End Main Menu -->
                    