<!-- Start Mobile Menu -->
<div class="mobile-menu hidden-lg">
        <nav>
            <ul>
                <li class=""><a href="index.html">Home</a></li>
                @foreach ($Categories as $item)
                <li><a href="javascript:void(0)">{{$item->name}}</a>
                    <ul class="">
                        @foreach (renderMainCategory($item->id) as $mainitem)                      
                        <li><a href="javascript:void(0)">{{$mainitem->name}}</a>
                            <ul>
                                @foreach (renderSubCategory($mainitem->id) as $subitem)
                            <li><a href="/list?subcat={{$subitem->id}}">{{$subitem->name}}</a></li>  
                                @endforeach														
                            </ul>
                        </li>
                        @endforeach  
                    </ul>
                </li>
                @endforeach
                <li class=""><a href="">Pages</a>
                    <ul class="">
                        
                        <li><a href="/about">About</a></li>
                        <li><a href="/contact">Contact</a></li>
                        <li><a href="/privacy">Privacy</a></li>
                        <li><a href="/cancellation">Cancelletion Policy</a></li>
                        <li><a href="/terms">Terms & Condition</a></li>
                    </ul>
                </li>
                @if (Auth::guard('customer')->check())
                <li class=""><a href="">Hello &nbsp;{{Auth::guard('customer')->user()->name}}</a>
                <ul class="">
                    <li><a href="/account"><span>My Account</span></a></li>
                    <li><a href="/account?=orders"><span>My Orders</span></a></li>
                    <li><a class="dropdown-item" href="{{ route('customer.logout') }}"
                        onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                        <form id="logout-form" action="{{ route('customer.logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                </ul>
                </li>
                @else
                <li><a href="/login">login</a></li>
                @endif
            </ul>
        </nav>
    </div><!-- End Mobile Menu -->