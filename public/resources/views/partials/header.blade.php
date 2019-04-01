<div class="visible-md visible-lg">
<nav class="navbar navbar-white">
    <div class="container-fluid ">
      <div class="navbar-header">
        <a class="navbar-brand navbar-logo" href="#">
          <img src="http://laravelshop/assets/img/logo/logo.png" alt="" class="img-responsive">
        </a>
      </div>
  
      <ul class="nav navbar-nav main-nav">
        <li class="menu-show" data-select="category"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        </li>
        <li class="menu-show" data-select="brand"><a href="#">brands</a></li>
        <li class="menu-show"><a href="#">Pickfreely &nbsp;network</a></li>
      </ul>
  
      <ul class="nav navbar-nav pull-right">
          <li class="pull-left">
            <div class="header-search">
                    <form action="/list/search" method="POST">
                        @csrf
                        <input type="text" placeholder="SEARCH..." name="search">
                        <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                    </form>
            </div>
          </li>
          <li class="pull-left">
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