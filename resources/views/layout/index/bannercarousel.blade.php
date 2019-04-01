<!-- Main Slider Area -->
<div class="main-slider-area">
<!-- Main Slider -->
<div class="main-slider">
    <div class="slider">
        <div id="mainSlider" class="nivoSlider hidden-xs" >
            @foreach ($Banners as $item)
            <a href="/list?brand={{$item->product}}">
                    <img src="{{Voyager::image(imageValidate($item->image))}}"  alt="main slider" title="#htmlcaption1" hidden/>
            </a>
            @endforeach            
        </div>
        <div id="mainMobileSlider" class="nivoSlider visible-xs">
            @foreach ($Banners as $item)
            <a href="/list?brand={{$item->product}}">
                <img src="{{Voyager::image(imageValidate($item->mobile_image))}}" alt="">
            </a>
            @endforeach            
        </div>
        
    </div>
</div><!-- End Main Slider -->
</div><!-- End Main Slider Area -->