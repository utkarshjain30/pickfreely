<div class="shop-product-left mobile-filter" id="filter-select" role="dialog">
    <div class="mobile-filter-area" >
        <!-- Shop Layout Area --> 
    <form action="/filter" method="get" class="filter-form">
            {{-- @csrf --}}
    
        <div class="shop-layout-area">
            <div class="layout-title">
                <h2>Category</h2>
            </div>
            <div class="layout-list">
                <ul>
                @foreach ($categories as $category)
                <li>
                    <input type="checkbox" name="category[]" id="{{$category->id}}" value="{{$category->id}}"
                    @if (request()->has('category') && (request()->path() == 'filter'))   
                        @foreach ($categorySelect as $item)
                            @if ($item == $category->id)
                                checked
                            @endif
                        @endforeach
                    @endif>
                    
                    <label for="{{$category->id}}">{{$category->name}}</label>
                    <span class="shop-layout-link">({{App\Product::where('category', $category->id)->count()}})</span>
                </li>
                {{-- <li><a href="?category={{$category->id}}"><i class="fa fa-plus-square-o"></i>{{$category->name}}</a></li> --}}
                @endforeach
                </ul>
            </div>
        </div><!-- End Shop Layout Area -->
    
        <!-- Price Filter Area -->
        <div class="price-filter-area shop-layout-area">
            <div class="price-filter">
                <div class="layout-title">
                    <h2>Price</h2>
                </div>
                
                <div id="slider-range-mobile"></div>
                <p>
                    <input type="text" id="amount-mobile" readonly style="border:0; color:#f6931f; font-weight:bold;">
                    <input type="hidden" id="amountMax-mobile" readonly style="border:0; color:#f6931f; font-weight:bold;" name="price">
                    <input type="hidden" id="amountMin-mobile" readonly style="border:0; color:#f6931f; font-weight:bold;" name="priceMin">
                </p>
                
            </div>
        </div><!-- End Price Filter Area -->
        
        <!-- Shop Layout Area -->
        <div class="shop-layout-area">
            <div class="layout-title">
                <h2>Brand</h2>
            </div>
            <div class="layout-list">
                <ul>
                @foreach ($brands as $item)
                <li>
                    <input type="checkbox" name="brand[]" id="{{$item->id}}" value="{{$item->name}}"
                        @if (request()->has('brand') && (request()->path() == 'filter'))  
                            @foreach ($brandSelect as $select)
                                @if ($select == $item->name)
                                    checked
                                @endif
                            @endforeach
                        @endif>
    
                    <label for="{{$item->id}}">{{$item->name}}</label>
                    <span class="shop-layout-link">({{App\Product::where('brand','like', '%'.$item->name.'%')->count()}})</span>
                </li>
                @endforeach
                </ul>
            </div>
        </div><!-- End Shop Layout Area -->
    
        <!-- Shop Layout Area -->
        <div class="shop-layout-area">
            <div class="layout-title">
                <h2>Color</h2>
            </div>
            <div class="layout-list">
                <ul>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Black <span>(1)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Blue <span>(2)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Brown <span>(1)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Pink <span>(3)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Red <span>(3)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>While<span>(2)</span></a></li>
                    <li><a href="#"><i class="fa fa-plus-square-o"></i>Yellow <span>(1)</span></a></li>
                </ul>
            </div>
        </div><!-- End Shop Layout Area -->
        <button type="submit" class="btn btn-default" hidden>Filter</button>
        </form>
        <!-- Shop Layout Area -->
    </div>

<!-- Trigger the modal with a button -->
</div>
<div class="btn-group mobile-filter-button-group visible-xs" role="group" aria-label="">
<button type="button" class="mobile-filter-button" id="open" data-toggle="modal" data-target="#myModal">Open Filter</button>
<button type="button" class="mobile-filter-button" id="filter" data-toggle="modal">Apply Filter</button>
<button type="button" class="mobile-filter-button" id="close">Close Filter</button>
</div>

