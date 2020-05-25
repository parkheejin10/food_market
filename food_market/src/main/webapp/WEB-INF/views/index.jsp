<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>main</title>
		<!-- all css here -->
        <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/css/magnific-popup.css">
        <link rel="stylesheet" href="../assets/css/animate.css">
        <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../assets/css/slinky.min.css">
        <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="../assets/css/slick.css">
        <link rel="stylesheet" href="../assets/css/ionicons.min.css">
        <link rel="stylesheet" href="../assets/css/bundle.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/responsive.css">
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div class="wrapper">
	<div class="body-overlay"></div>
	<div class="body-overlay"></div>
	<!-- 왼쪽 메인 메뉴바 -->
	<div class="sidebar-style">
	    <div class="sidebar-style-all">
	    
	  		<!-- 로고 위치  -->
	        <div class="sidebar-logo-menu">
	            <div class="sidebar-logo">
	                <a href="/food_market/">
	                    <img alt="" src="resources/assets/img/logo/logo.png">
	                </a>
	            </div>
	            
	            <!-- 왼쪽 메인 메뉴 -->
	            <div class="sidebar-main-menu main-menu">
	                <nav>
	                    <ul>
	                        <li><a href="/food_market/">home</a></li>
	                        <li><a href="#">Shop <span><i class="ion-ios-arrow-forward"></i></span></a>
	                            <div class="mega-dropdown width-col3">
	                                <ul class="single-mega-width">
	                                    <li class="menu-title menu-pading-none">shop layout</li>
	                                    <li><a href="shop-grid-view-3-col.html">grid 3 column</a></li>
	                                    <li><a href="shop-grid-view-5-col.html">grid 5 column</a></li>
	                                    <li><a href="shop-grid-view-sidebar.html">grid with sidebar</a></li>
	                                    <li><a href="shop-list-view-1-col.html">list 1 column</a></li>
	                                    <li><a href="shop-list-view-2-col.html">list 2 column</a></li>
	                                    <li><a href="shop-list-view-sidebar.html">list with sidebar</a></li>
	                                    <li><a href="shop-list-view-1-col-container.html">list 1 column box</a></li>
	                                    <li><a href="cart.html">shopping cart</a></li>
	                                    <li><a href="wishlist.html">wishlist</a></li>
	                                </ul>
	                                <ul class="single-mega-width">
	                                    <li class="menu-title menu-pading-none">product details</li>
	                                    <li><a href="product-details.html">tab style 1</a></li>
	                                    <li><a href="product-details-2.html">tab style 2</a></li>
	                                    <li><a href="product-details-3.html">tab style 3</a></li>
	                                    <li><a href="product-details-6.html">sticky style</a></li>
	                                    <li><a href="product-details-7.html">sticky style 2</a></li>
	                                    <li><a href="product-details-8.html">gallery style</a></li>
	                                    <li><a href="product-details-9.html">gallery style 2</a></li>
	                                    <li><a href="product-details-4.html">fixed image style</a></li>
	                                    <li><a href="product-details-5.html">fixed image style 2</a></li> 
	                                </ul>
	                                <ul class="single-mega-width2">
	                                    <li class="menu-pading-none menu-mrg-nn">
	                                        <div class="mega-item-img">
	                                            <a href="shop.html">
	                                                <img alt="" src="resources/assets/img/banner/1.png">
	                                            </a>
	                                        </div>
	                                    </li>
	                                </ul>
	                            </div>
	                        </li>
	                        <li><a href="#">Pages <span><i class="ion-ios-arrow-forward"></i></span></a>
	                            <ul class="dropdown">
	                                <li><a href="about-us.html">about us</a></li>
	                                <li><a href="cart.html">cart</a></li>
	                                <li><a href="checkout.html">checkout</a></li>
	                                <li><a href="wishlist.html">wishlist</a></li>
	                                <li><a href="contact.html">contact</a></li>
	                                <li><a href="/food_market/member/login.do">login</a></li>
	                                <li><a href="/food_market/member/join.do">register</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="#">Blog <span><i class="ion-ios-arrow-forward"></i></span></a>
	                            <ul class="dropdown">
	                                <li><a href="blog.html">blog </a></li>
	                                <li><a href="blog-2-col.html">blog 2 column</a></li>
	                                <li><a href="blog-left-sidebar.html">blog left sidebar</a></li>
	                                <li><a href="blog-details.html">blog details</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="about-us.html">About Us</a></li>
	                        <li><a href="contact.html">Contact</a></li>
	                    </ul>
	                </nav>
	            </div>
	        </div>
	        
	        <div class="sidebar-cart-contact">
	       		<!-- 로그인, 회원가입 / 내 정보, 로그아웃 -->
	        	<div class="member-info">
	            		<c:choose>
							<c:when test="${sessionScope.mb_name == null }">
								<input type="button" value="로그인" onclick="location.href='member/login.do#login'">
								<input type="button" value="회원가입" onclick="location.href='member/join.do'"></c:when>
							<c:otherwise><b>${sessionScope.mb_name }</b> <a href="member/info.do">내 정보</a><br>
											<a href="member/logout.do">로그아웃</a></c:otherwise>
						</c:choose>
	            	</div>
	            <!-- 검색, 장바구니, 오른쪽 메뉴바 버튼 -->
	            <div class="header-search-cart">
	            	<!-- 검색 버튼 -->
	                <div class="header-search common-style">
	                    <button class="sidebar-trigger-search">
	                        <span class="ion-ios-search-strong"></span>
	                    </button>
	                </div>
	                <!-- 장바구니 버튼 -->
	                <div class="header-cart common-style">
	                    <button class="sidebar-trigger">
	                        <span class="ion-bag"></span>
	                    </button>
	                </div>
	                <!-- 오른쪾 메뉴바 버튼 -->
	                <div class="header-sidebar common-style">
	                    <button class="header-navbar-active">
	                        <span class="ion-navicon"></span>
	                    </button>
	                </div>
	            </div>
	            <div class="sidebar-contact">
	                <p>Call Us : +254 265 25452</p>
	            </div>
	        </div>
	    </div><!-- sidebar-cart-contact END -->
	</div><!-- sidebar-style END -->
	
<!-- <header class="back-to-top toys-header"> -->
<!--     <div class="header-area header-area-2"> -->
<!--         <div class="container-fluid p-0"> -->
<!--             <div class="row no-gutters"> -->
<!--                 <div class="col-lg-3 col-md-6 col-6"> -->
<!--                     <div class="logo"> -->
<!--                         <a href="index.html"><img alt="" src="resources/assets/img/logo/logo.png"></a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-lg-6 menu-none-block menu-center"> -->
<!--                     <div class="main-menu"> -->
<!--                         <nav> -->
<!--                             <ul> -->
<!--                                 <li><a href="#">home</a> -->
<!--                                     <ul class="dropdown"> -->
<!--                                         <li><a href="index.html">home version 1</a></li> -->
<!--                                         <li><a href="index-2.html">home version 2</a></li> -->
<!--                                         <li><a href="index-3.html">home version 3</a></li> -->
<!--                                         <li><a href="index-4.html">home version 4</a></li> -->
<!--                                         <li><a href="index-5.html">home version 5</a></li> -->
<!--                                         <li><a href="index-6.html">home version 6</a></li> -->
<!--                                         <li><a href="index-7.html">home version 7</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                                 <li><a href="#">about us</a> -->
<!--                                     <div class="mega-dropdown width-col3"> -->
<!--                                         <ul class="single-mega-width"> -->
<!--                                             <li class="menu-title menu-pading-none">shop page</li> -->
<!--                                             <li><a href="shop-1.html">Shirt</a></li> -->
<!--                                             <li><a href="shop-1.html">Pants</a></li> -->
<!--                                             <li><a href="shop-1.html">T-Shirts</a></li> -->
<!--                                             <li><a href="shop-1.html">Sharee</a></li> -->
<!--                                             <li><a href="shop-1.html">Lahenga</a></li> -->
<!--                                             <li><a href="shop-1.html">Lahenga</a></li> -->
<!--                                             <li><a href="shop-1.html">Lahenga</a></li> -->
<!--                                             <li><a href="shop-1.html">Lahenga</a></li> -->
<!--                                             <li><a href="shop-1.html">Lahenga</a></li> -->
<!--                                         </ul> -->
<!--                                         <ul class="single-mega-width"> -->
<!--                                             <li class="menu-title menu-pading-none">product page</li> -->
<!--                                             <li><a href="shop-2.html">Sandal</a></li> -->
<!--                                             <li><a href="shop-1.html">Slipper</a></li> -->
<!--                                             <li><a href="shop-1.html">Toe shoe</a></li> -->
<!--                                             <li><a href="shop-1.html">Snow boot</a></li> -->
<!--                                             <li><a href="shop-1.html">Sneakers</a></li> -->
<!--                                             <li><a href="shop-1.html">Sneakers</a></li> -->
<!--                                             <li><a href="shop-1.html">Sneakers</a></li> -->
<!--                                             <li><a href="shop-1.html">Sneakers</a></li> -->
<!--                                             <li><a href="shop-1.html">Sneakers</a></li>  -->
<!--                                         </ul> -->
<!--                                         <ul class="single-mega-width2"> -->
<!--                                             <li class="menu-pading-none menu-mrg-nn"> -->
<!--                                                 <div class="mega-item-img"> -->
<!--                                                     <a href="shop.html"> -->
<!--                                                         <img alt="" src="resources/assets/img/banner/1.png"> -->
<!--                                                     </a> -->
<!--                                                 </div> -->
<!--                                             </li> -->
<!--                                         </ul> -->
<!--                                     </div> -->
<!--                                 </li> -->
<!--                                 <li><a href="#">shop</a></li> -->
<!--                                 <li><a href="#">product</a></li> -->
<!--                                 <li><a href="#">blog</a></li> -->
<!--                                 <li><a href="#">pages</a></li> -->
<!--                             </ul> -->
<!--                         </nav> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-lg-3 col-md-6 col-6"> -->
<!--                     <div class="header-search-cart"> -->
<!--                         <div class="header-search common-style"> -->
<!--                             <button class="sidebar-trigger-search"> -->
<!--                                 <span class="ion-ios-search-strong"></span> -->
<!--                             </button> -->
<!--                         </div> -->
<!--                         <div class="header-cart common-style"> -->
<!--                             <button class="sidebar-trigger"> -->
<!--                                 <span class="ion-bag"></span> -->
<!--                             </button> -->
<!--                         </div> -->
<!--                         <div class="header-sidebar common-style"> -->
<!--                             <button class="header-navbar-active"> -->
<!--                                 <span class="ion-navicon"></span> -->
<!--                             </button> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="mobile-menu-area d-md-block col-md-12 col-lg-12 col-12 d-lg-none d-xl-none"> -->
<!--                     <div class="mobile-menu mean-container"><div class="mean-bar"><a class="meanmenu-reveal" style="background:;color:;" href="#nav"><span></span><span></span><span></span></a><nav class="mean-nav"> -->
<!--                            <ul class="menu-overflow" style="display: none;"> -->
<!--                                <li><a href="#">HOME</a> -->
<!--                                    <ul style="display: none;"> -->
<!--                                        <li><a href="index.html">furniture</a></li> -->
<!--                                        <li><a href="index-electronics.html">electronics</a></li> -->
<!--                                        <li><a href="index-fashion.html">fashion</a></li> -->
<!--                                        <li><a href="index-jewellery.html">jewellery</a></li> -->
<!--                                        <li><a href="index-food-drink.html">food &amp; drink</a></li> -->
<!--                                        <li><a href="index-toys.html">Toys &amp; Games</a></li> -->
<!--                                    </ul> -->
<!--                                <a class="mean-expand" style="font-size: 18px" href="#">+</a></li> -->
<!--                                <li><a href="#">pages</a> -->
<!--                                    <ul style="display: none;"> -->
<!--                                        <li><a href="about-us.html">about us</a></li> -->
<!--                                        <li><a href="cart.html">cart</a></li> -->
<!--                                        <li><a href="checkout.html">checkout</a></li> -->
<!--                                        <li><a href="wishlist.html">wishlist</a></li> -->
<!--                                        <li><a href="contact.html">contact</a></li> -->
<!--                                        <li><a href="login.html">login</a></li> -->
<!--                                        <li><a href="register.html">register</a></li> -->
<!--                                    </ul> -->
<!--                                <a class="mean-expand" style="font-size: 18px" href="#">+</a></li> -->
<!--                                <li><a href="#">shop</a> -->
<!--                                    <ul style="display: none;"> -->
<!--                                        <li><a href="shop-grid-view-3-col.html">grid 3 column</a></li> -->
<!--                                        <li><a href="shop-grid-view-5-col.html">grid 5 column</a></li> -->
<!--                                        <li><a href="shop-grid-view-sidebar.html">grid with sidebar</a></li> -->
<!--                                        <li><a href="shop-list-view-1-col.html">list 1 column</a></li> -->
<!--                                        <li><a href="shop-list-view-2-col.html">list 2 column</a></li> -->
<!--                                        <li><a href="shop-list-view-sidebar.html">list with sidebar</a></li> -->
<!--                                        <li><a href="shop-list-view-1-col-container.html">list 1 column box</a></li> -->
<!--                                        <li><a href="product-details.html">tab style 1</a></li> -->
<!--                                        <li><a href="product-details-2.html">tab style 2</a></li> -->
<!--                                        <li><a href="product-details-3.html">tab style 3</a></li> -->
<!--                                        <li><a href="product-details-6.html">sticky style</a></li> -->
<!--                                        <li><a href="product-details-7.html">sticky style 2</a></li> -->
<!--                                        <li><a href="product-details-8.html">gallery style</a></li> -->
<!--                                        <li><a href="product-details-9.html">gallery style 2</a></li> -->
<!--                                        <li><a href="product-details-4.html">fixed image style</a></li> -->
<!--                                        <li><a href="product-details-5.html">fixed image style 2</a></li>  -->
<!--                                    </ul> -->
<!--                                <a class="mean-expand" style="font-size: 18px" href="#">+</a></li> -->
<!--                                <li><a href="#">BLOG</a> -->
<!--                                    <ul style="display: none;"> -->
<!--                                        <li><a href="blog.html">blog </a></li> -->
<!--                                        <li><a href="blog-2-col.html">blog 2 column</a></li> -->
<!--                                        <li><a href="blog-left-sidebar.html">blog left sidebar</a></li> -->
<!--                                        <li><a href="blog-details.html">blog details</a></li> -->
<!--                                    </ul> -->
<!--                                <a class="mean-expand" style="font-size: 18px" href="#">+</a></li> -->
<!--                                <li class="mean-last"><a href="contact.html"> Contact  </a></li> -->
<!--                            </ul> -->
<!--                        </nav></div> -->
<!--                        <div class="mean-push"></div><nav id="mobile-menu-active" style="display: none;"> -->
<!--                             <ul class="menu-overflow"> -->
<!--                                 <li><a href="#">HOME</a> -->
<!--                                     <ul> -->
<!--                                         <li><a href="index.html">furniture</a></li> -->
<!--                                         <li><a href="index-electronics.html">electronics</a></li> -->
<!--                                         <li><a href="index-fashion.html">fashion</a></li> -->
<!--                                         <li><a href="index-jewellery.html">jewellery</a></li> -->
<!--                                         <li><a href="index-food-drink.html">food &amp; drink</a></li> -->
<!--                                         <li><a href="index-toys.html">Toys &amp; Games</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                                 <li><a href="#">pages</a> -->
<!--                                     <ul> -->
<!--                                         <li><a href="about-us.html">about us</a></li> -->
<!--                                         <li><a href="cart.html">cart</a></li> -->
<!--                                         <li><a href="checkout.html">checkout</a></li> -->
<!--                                         <li><a href="wishlist.html">wishlist</a></li> -->
<!--                                         <li><a href="contact.html">contact</a></li> -->
<!--                                         <li><a href="login.html">login</a></li> -->
<!--                                         <li><a href="register.html">register</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                                 <li><a href="#">shop</a> -->
<!--                                     <ul> -->
<!--                                         <li><a href="shop-grid-view-3-col.html">grid 3 column</a></li> -->
<!--                                         <li><a href="shop-grid-view-5-col.html">grid 5 column</a></li> -->
<!--                                         <li><a href="shop-grid-view-sidebar.html">grid with sidebar</a></li> -->
<!--                                         <li><a href="shop-list-view-1-col.html">list 1 column</a></li> -->
<!--                                         <li><a href="shop-list-view-2-col.html">list 2 column</a></li> -->
<!--                                         <li><a href="shop-list-view-sidebar.html">list with sidebar</a></li> -->
<!--                                         <li><a href="shop-list-view-1-col-container.html">list 1 column box</a></li> -->
<!--                                         <li><a href="product-details.html">tab style 1</a></li> -->
<!--                                         <li><a href="product-details-2.html">tab style 2</a></li> -->
<!--                                         <li><a href="product-details-3.html">tab style 3</a></li> -->
<!--                                         <li><a href="product-details-6.html">sticky style</a></li> -->
<!--                                         <li><a href="product-details-7.html">sticky style 2</a></li> -->
<!--                                         <li><a href="product-details-8.html">gallery style</a></li> -->
<!--                                         <li><a href="product-details-9.html">gallery style 2</a></li> -->
<!--                                         <li><a href="product-details-4.html">fixed image style</a></li> -->
<!--                                         <li><a href="product-details-5.html">fixed image style 2</a></li>  -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                                 <li><a href="#">BLOG</a> -->
<!--                                     <ul> -->
<!--                                         <li><a href="blog.html">blog </a></li> -->
<!--                                         <li><a href="blog-2-col.html">blog 2 column</a></li> -->
<!--                                         <li><a href="blog-left-sidebar.html">blog left sidebar</a></li> -->
<!--                                         <li><a href="blog-details.html">blog details</a></li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
<!--                                 <li><a href="contact.html"> Contact  </a></li> -->
<!--                             </ul> -->
<!--                         </nav>							 -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!-- </header> -->

    <div class="sidebar-wrapper">
    	<!-- 최상단 배너 -->
        <div class="slider-area">
            <div class="slider-active owl-carousel owl-loaded owl-drag">
                
                
            <div class="owl-stage-outer"><div class="owl-stage" style="transition:all; width: 3708px; transform: translate3d(-1236px, 0px, 0px);"><div class="owl-item cloned" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img pt-375" style="background-image: url(resources/assets/img/slider/4.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-1">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div><div class="owl-item cloned" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img slider-content-style-1 pt-375" style="background-image: url(resources/assets/img/slider/9.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-2">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div><div class="owl-item active" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img pt-375" style="background-image: url(resources/assets/img/slider/4.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-1">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div><div class="owl-item" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img slider-content-style-1 pt-375" style="background-image: url(resources/assets/img/slider/9.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-2">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div><div class="owl-item cloned" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img pt-375" style="background-image: url(resources/assets/img/slider/4.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-1">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div><div class="owl-item cloned" style="width: 618px;"><div class="single-slider single-slider-hmtoy bg-img slider-content-style-1 pt-375" style="background-image: url(resources/assets/img/slider/9.jpg)">
                    <div class="single-content-left">
                        <div class="slider-content slider-content-style-toy slider-animated-2">
                            <h2 class="animated">KId's toy shop</h2>
                            <h3 class="animated">Buy Soft Toys &amp; Get big Discounts!</h3>
                            <a class="btn-hover slider-btn-toy animated" href="shop-grid-view-sidebar.html">shop now</a>
                        </div>
                    </div>
                </div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div></div></div>
        </div>
        
        <!-- 아래 상품 목록 -->
        <div class="toy-banner-shop gray-bg-5">
        	<!-- 하단 목록 1 -->
            <div class="toy-banner-cart">
                <div class="shop-services-area">
                    <div class="toy-services">
                        <div class="single-shop-services-all">
                            <div class="single-shop-services mb-30">
                                <div class="single-shop-img">
                                    <img alt="" src="resources/assets/img/icon-img/3.png">
                                </div>
                                <div class="single-shop-content">
                                    <h5>FREE SHIPPING</h5>
                                    <p>Free shipping on all order</p>
                                </div>
                            </div>
                            <div class="single-shop-services mb-30">
                                <div class="single-shop-img">
                                    <img alt="" src="resources/assets/img/icon-img/4.png">
                                </div>
                                <div class="single-shop-content">
                                    <h5>ONLINE SUPPORT</h5>
                                    <p>Online support 24 hours a day</p>
                                </div>
                            </div>
                            <div class="single-shop-services mb-30">
                                <div class="single-shop-img">
                                    <img alt="" src="resources/assets/img/icon-img/5.png">
                                </div>
                                <div class="single-shop-content">
                                    <h5>MONEY RETURN</h5>
                                    <p>Back guarantee under 5 days</p>
                                </div>
                            </div>
                            <div class="single-shop-services mb-30">
                                <div class="single-shop-img">
                                    <img alt="" src="resources/assets/img/icon-img/6.png">
                                </div>
                                <div class="single-shop-content">
                                    <h5>MEMBER DISCOUNT</h5>
                                    <p>Onevery order over $150</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- 하단 목록1 END -->
            
            <!-- 하단 목록2(인형 3개) -->
            <div class="banner-area pt-70 pb-100">
                <div class="single-banner5">
                    <img alt="" src="resources/assets/img/banner/16.jpg">
                    <div class="banner-content-5">
                        <h3>Wooden Toys</h3>
                        <h4>Best Deal &amp; Discounts</h4>
                        <a href="shop-grid-view-sidebar.html">shop now</a>
                    </div>
                </div>
                <div class="single-banner5 toy-mrg">
                    <img alt="" src="resources/assets/img/banner/17.jpg">
                    <div class="banner-content-5">
                        <h3>Teddy Bears</h3>
                        <h4>Best Deal &amp; Discounts</h4>
                        <a href="shop-grid-view-sidebar.html">shop now</a>
                    </div>
                </div>
                <div class="single-banner5">
                    <img alt="" src="resources/assets/img/banner/18.jpg">
                    <div class="banner-content-5">
                        <h3>Electric Toys</h3>
                        <h4>Best Deal &amp; Discounts</h4>
                        <a href="shop-grid-view-sidebar.html">shop now</a>
                    </div>
                </div>
            </div><!-- 하단 목록2 END -->
            
            <!-- 하단 목록3 best toy -->
            <div class="product-collection-area">
                <div class="toy-product container-fluid p-0">
                    <div class="section-title text-center mb-55 section-title-2">
                        <h2>Best Toys</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/1.jpg"></a>
                                    <span>sale</span>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">WOODEN FURNITURE</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$110.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/2.jpg"></a>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">WOODEN FURNITURE</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/3.jpg"></a>
                                    <span>sale</span>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">HANDCRAFTED MUG</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$130.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/4.jpg"></a>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">HANDCRAFTED MUG</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$140.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/5.jpg"></a>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">HANDCRAFTED MUG</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/6.jpg"></a>
                                    <span>sale</span>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">WOODEN FURNITURE</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$160.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/7.jpg"></a>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">WOODEN FURNITURE</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3 col-12">
                            <div class="single-product mb-45">
                                <div class="product-img">
                                    <a href="#"><img alt="" src="resources/assets/img/product/toys/8.jpg"></a>
                                    <span>sale</span>
                                    <div class="product-action">
                                        <a title="Wishlist" class="animate-left" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        <a title="Quick View" class="animate-right" href="#" data-toggle="modal" data-target="#exampleModal"><i class="ion-ios-eye-outline"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="product-title-price">
                                        <div class="product-title">
                                            <h4><a href="product-details-6.html">WOODEN FURNITURE</a></h4>
                                        </div>
                                        <div class="product-price">
                                            <span>$180.00</span>
                                        </div>
                                    </div>
                                    <div class="product-cart-categori">
                                        <div class="product-cart">
                                            <span>toys</span>
                                        </div>
                                        <div class="product-categori">
                                            <a href="#"><i class="ion-bag"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="load-more text-center">
                                <a class="btn-hover load-more-style" href="shop-grid-view-sidebar.html"><i class="ion-refresh"></i> Load More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- 하단 목록3 END -->
            
            <!-- 하단 목록4 (배너 아이콘) -->
            <div class="brand-logo pt-100 pb-100">
                <div class="container-fluid p-0">
                    <div class="brand-logo-active owl-carousel owl-loaded owl-drag">
                    <div class="owl-stage-outer"><div class="owl-stage" style="transition:all; width: 2120px; transform: translate3d(-578px, 0px, 0px);"><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/3.png">
                        </div></div><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/4.png">
                        </div></div><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/5.png">
                        </div></div><div class="owl-item active" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/1.png">
                        </div></div><div class="owl-item active" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/2.png">
                        </div></div><div class="owl-item active" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/3.png">
                        </div></div><div class="owl-item" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/4.png">
                        </div></div><div class="owl-item" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/5.png">
                        </div></div><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/1.png">
                        </div></div><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/2.png">
                        </div></div><div class="owl-item cloned" style="width: 192.66px;"><div class="single-logo">
                            <img alt="" src="resources/assets/img/brand-logo/3.png">
                        </div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div></div></div>
		               </div>
		           </div>
		       </div><!-- 하단 목록 4 END -->
		<!-- footer -->
		<jsp:include page="inc/footer_toy.jsp"></jsp:include>
		<!-- footer -->
    </div><!-- sidebar-wrapper END -->
    
    <!-- 오른쪽 장바구니 사이드바 -->
    <div class="sidebar-cart onepage-sidebar-area">
        <div class="wrap-sidebar">
        	<!-- 전체 내용 -->
            <div class="sidebar-cart-all">
            	<!-- 닫기 버튼 -->
                <div class="sidebar-cart-icon">
                    <button class="op-sidebar-close"><span class="ion-android-close"></span></button>
                </div>
                <!-- 장바구니 목록 -->
                <div class="cart-content">
                    <h3>Shopping Cart</h3>
                    <ul>
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img alt="" src="resources/assets/img/cart/1.jpg"></a>
                            </div>
                            <div class="cart-title">
                                <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                                <span>1 x $140.00</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ion-ios-trash-outline"></i></a>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img alt="" src="resources/assets/img/cart/2.jpg"></a>
                            </div>
                            <div class="cart-title">
                                <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                                <span>1 x $140.00</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ion-ios-trash-outline"></i></a>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img alt="" src="resources/assets/img/cart/3.jpg"></a>
                            </div>
                            <div class="cart-title">
                                <h3><a href="#"> HANDCRAFTED MUG</a></h3>
                                <span>1 x $140.00</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ion-ios-trash-outline"></i></a>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-total">
                                <h4>Total : <span>$ 120</span></h4>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-checkout-btn">
                                <a class="btn-hover cart-btn-style" href="#">view cart</a>
                                <a class="no-mrg btn-hover cart-btn-style" href="#">checkout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!-- 장바구니 오른쪽 메뉴바 END -->
    
    <!-- 검색 오른쪽 메뉴바 -->
    <div class="main-search-active">
    	<!-- 닫기 버튼 -->
        <div class="sidebar-search-icon">
            <button class="search-close"><span class="ion-android-close"></span></button>
        </div>
        <!-- 검색란  -->
        <div class="sidebar-search-input">
            <form>
                <div class="form-search">
                    <input class="input-text" id="search" type="search" placeholder="Search Entire Store" value="">
                    <button>
                        <i class="ion-ios-search-strong"></i>
                    </button>
                </div>
            </form>
        </div>
    </div><!-- 검색 오른쪽 메뉴바 END -->
    
    <!-- 오른쪽 사이드 메뉴바 목록  (사용??)-->
    <div class="cur-lang-acc-active">
        <div class="wrap-sidebar">
            <div class="sidebar-nav-icon">
                <button class="op-sidebar-close"><span class="ion-android-close"></span></button>
            </div>
            <div class="cur-lang-acc-all">
                <div class="single-currency-language-account">
                    <div class="cur-lang-acc-title">
                        <h4>Currency: <span>USD </span></h4>
                    </div>
                    <div class="cur-lang-acc-dropdown">
                        <ul>
                            <li><a href="#">EUR  Euro</a></li>
                        </ul>
                    </div>
                </div>
                <div class="single-currency-language-account">
                    <div class="cur-lang-acc-title">
                        <h4>Language: <span><img alt="" src="resources/assets/img/icon-img/english.png"> English </span></h4>
                    </div>
                    <div class="cur-lang-acc-dropdown">
                        <ul>
                            <li><a href="#"><img alt="" src="resources/assets/img/icon-img/english.png"> English </a></li>
                            <li><a href="#"><img alt="" src="resources/assets/img/icon-img/es.png"> spanish </a></li>
                            <li><a href="#"><img alt="" src="resources/assets/img/icon-img/fr.png"> french </a></li>
                            <li><a href="#"><img alt="" src="resources/assets/img/icon-img/ge.png"> german </a></li>
                            <li><a href="#"><img alt="" src="resources/assets/img/icon-img/es.png"> spanish </a></li>
                        </ul>
                    </div>
                </div>
                <div class="single-currency-language-account">
                    <div class="cur-lang-acc-title">
                        <h4>My Account:</h4>
                    </div>
                    <div class="cur-lang-acc-dropdown">
                        <ul>
                            <li><a href="#">Compare Products </a></li>
                            <li><a href="#">Default welcome msg!</a></li>
                            <li><a href="/food_market/member/login.do">register</a></li>
                            <li><a href="wishlist.html">My Wish List</a></li>
                            <li><a href="login.html">Sign In </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- 오른쪽 사이드 메뉴바 목록 END -->
</div>
    
<!--     modal -->
<!--     <div tabindex="-1" class="modal fade" id="exampleModal" role="dialog" aria-hidden="true"> -->
<!--         <button class="close" aria-label="Close" type="button" data-dismiss="modal"> -->
<!--             <span class="ion-android-close" aria-hidden="true"></span> -->
<!--         </button> -->
<!--         <div class="modal-dialog" role="document"> -->
<!--             <div class="modal-content"> -->
                
<!--                 <div class="modal-body"> -->
<!--                     <div class="qwick-view-left"> -->
<!--                         <div class="quick-view-learg-img"> -->
<!--                             <div class="quick-view-tab-content tab-content"> -->
<!--                                 <div class="tab-pane active show fade" id="modal1" role="tabpanel"> -->
<!--                                     <img alt="" src="resources/assets/img/quick-view/l1.jpg"> -->
<!--                                 </div> -->
<!--                                 <div class="tab-pane fade" id="modal2" role="tabpanel"> -->
<!--                                     <img alt="" src="resources/assets/img/quick-view/l2.jpg"> -->
<!--                                 </div> -->
<!--                                 <div class="tab-pane fade" id="modal3" role="tabpanel"> -->
<!--                                     <img alt="" src="resources/assets/img/quick-view/l3.jpg"> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="quick-view-list nav" role="tablist"> -->
<!--                             <a class="active" role="tab" aria-selected="true" href="#modal1" data-toggle="tab"> -->
<!--                                 <img alt="" src="resources/assets/img/quick-view/s1.jpg"> -->
<!--                             </a> -->
<!--                             <a role="tab" aria-selected="false" href="#modal2" data-toggle="tab"> -->
<!--                                 <img alt="" src="resources/assets/img/quick-view/s2.jpg"> -->
<!--                             </a> -->
<!--                             <a role="tab" aria-selected="false" href="#modal3" data-toggle="tab"> -->
<!--                                 <img alt="" src="resources/assets/img/quick-view/s3.jpg"> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="qwick-view-right"> -->
<!--                         <div class="qwick-view-content"> -->
<!--                             <h3>Handcrafted Supper Mug</h3> -->
<!--                             <div class="price"> -->
<!--                                 <span class="new">$90.00</span> -->
<!--                                 <span class="old">$120.00  </span> -->
<!--                             </div> -->
<!--                             <div class="rating-number"> -->
<!--                                 <div class="quick-view-rating"> -->
<!--                                     <i class="ion-ios-star red-star"></i> -->
<!--                                     <i class="ion-ios-star red-star"></i> -->
<!--                                     <i class="ion-android-star-outline"></i> -->
<!--                                     <i class="ion-android-star-outline"></i> -->
<!--                                     <i class="ion-android-star-outline"></i> -->
<!--                                 </div> -->
<!--                                 <div class="quick-view-number"> -->
<!--                                     <span>2 Ratting (S)</span> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p> -->
<!--                             <div class="quick-view-select"> -->
<!--                                 <div class="select-option-part"> -->
<!--                                     <label>Size*</label> -->
<!--                                     <select class="select"> -->
<!--                                         <option value="">- Please Select -</option> -->
<!--                                         <option value="">900</option> -->
<!--                                         <option value="">700</option> -->
<!--                                     </select> -->
<!--                                 </div> -->
<!--                                 <div class="select-option-part"> -->
<!--                                     <label>Color*</label> -->
<!--                                     <select class="select"> -->
<!--                                         <option value="">- Please Select -</option> -->
<!--                                         <option value="">orange</option> -->
<!--                                         <option value="">pink</option> -->
<!--                                         <option value="">yellow</option> -->
<!--                                     </select> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="quickview-plus-minus"> -->
<!--                                 <div class="cart-plus-minus"><div class="dec qtybutton">-</div> -->
<!-- 			<input name="qtybutton" class="cart-plus-minus-box" type="text" value="02"> -->
<!-- 		<div class="inc qtybutton">+</div></div> -->
<!--                                 <div class="quickview-btn-cart"> -->
<!--                                     <a class="btn-hover-black" href="#">add to cart</a> -->
<!--                                 </div> -->
<!--                                 <div class="quickview-btn-wishlist"> -->
<!--                                     <a class="btn-hover" href="#"><i class="ion-ios-heart-outline"></i></a> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
<!-- </div> -->
		
		
		
		
		
		
		
		
		
<!-- all js here -->
<script src="resources/assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="resources/assets/js/popper.js"></script>
<script src="resources/assets/js/bootstrap.min.js"></script>
<script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
<script src="resources/assets/js/isotope.pkgd.min.js"></script>
<script src="resources/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="resources/assets/js/jquery.counterup.min.js"></script>
<script src="resources/assets/js/waypoints.min.js"></script>
<script src="resources/assets/js/slinky.min.js"></script>
<script src="resources/assets/js/ajax-mail.js"></script>
<script src="resources/assets/js/owl.carousel.min.js"></script>
<script src="resources/assets/js/plugins.js"></script>
<script src="resources/assets/js/main.js"></script><a id="scrollUp" style="display: none; position: fixed; z-index: 2147483647;" href="#top"><i class="ion-arrow-up-c"></i></a>


</body>
</html>
