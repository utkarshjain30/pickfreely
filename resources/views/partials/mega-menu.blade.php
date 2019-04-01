<nav class="navbar navbar-white hidden-sm hidden-xs">
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
        <li class="menu-show"><a href="#">Pickfreely network</a></li>
        
      </ul>
  
      <ul class="nav navbar-nav pull-right">
          <li>
              <form action="#"class="pull-left nav nav-search">
                  <label for="search-input"></label>
                  <input type="text" name="search-input" id="search-input" placeholder="Search here">
              </form>
              <a href="#" class="pull-right">Search</a>
          </li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span><span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Page 1-1</a></li>
              <li><a href="#">Page 1-2</a></li>
              <li><a href="#">Page 1-3</a></li>
            </ul>
          </li>
          <li><a href="#">Cart</a></li>
      </ul>
    </div>
  </nav>
  <!-- Megamenu starts -->
  <div class="container">
  <div class="mega-menu" data-menu="category">
  
      <div class="mega-menu-container" id="category" >
        <!-- Left Category List -->
        <div class="mega-side-left pull-left">
          <ul class="nav categories-list-container">
            <!-- Dynamically import -->
            <li class="list-category" >Make Up</li>
            <li class="list-category" >Hair</li>
            <li class="list-category">Skin Care</li>
            <li class="list-category">Personal Care</li>
            <li class="list-category">Appliance</li>
          </ul>
  
        </div>
        <!-- Center Category List  -->
        <div class="mega-side-center pull-left" >
  
          <div class="main-category-container" data-mainCategory="Make Up">
            <div class="list-main-category">
              <h3>Heading 1</h3>
              <ul class="nav list-sub-category">
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
              </ul>
            </div>
            <div class="list-main-category">
              <h3>Heading 2</h3>
              <ul class="nav list-sub-category">
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
              </ul>
            </div>
          </div>
  
  
          <div class="main-category-container" data-mainCategory="Hair">
            <div class="list-main-category">
              <h3>Heading 3</h3>
              <ul class="nav list-sub-category">
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
                <li class="sub-category-list">Sorth</li>
              </ul>
            </div>
            <div class="list-main-category">
              <h3>Heading 4</h3>
              <ul class="nav list-sub-category">
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
                <li class="sub-category-list">clothing</li>
              </ul>
            </div>
          </div>
  
  
  
        </div>
        <!-- Right side Image  -->
        <div class="mega-side-right pull-left" >
          <img src="https://uxwing.com/menudemo/webslide/mobile-drawer-style/layout-03-ecommerce/images/woman-ad-img02.jpg" alt="" class="img-responsive" width="100%" height="100%" data-mainCategory="Hair">
        </div>
      </div>
  
  
      <div class="mega-menu-container" id="brand">
        <div class="mega-side-left pull-left">
          <ul class="nav list-brand">
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
              <li class="brand-list">clothing</li>
          </ul>
        </div>
        <div class="mega-side-one-third pull-left">
  
        </div>
      </div>
  </div>
  </div>
  <!-- Mega menu ends -->

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
               <li class="list-group-item">lorem</li>
               <li class="list-group-item">lorem</li>
               <li class="list-group-item">lorem</li>
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
                  <div class="" id="accordion" role="tablist" aria-multiselectable="true">
                      <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                          <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#main-accordion" href="#collapseMain" aria-expanded="true" aria-controls="collapseOne">
                             Main Categories
                            </a>
                          </h4>
                        </div>
                        <div id="collapseMain" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                          <div class="panel-body">
                              <div class="panel panel-default">
                                  <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                      <a role="button" data-toggle="collapse" data-parent="#main-accordion" href="#collapseSub" aria-expanded="true" aria-controls="collapseOne">
                                       Sub Categories
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseSub" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                      Sub Menu
                                    </div>
                                  </div>
                                </div>
                          </div>
                        </div>
                      </div>
                </div>
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
                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.
                </div>
              </div>
            </div>
          </div>
    </div>
  </div>
  
  