<%-- 
    Document   : auction
    Created on : Feb 1, 2022, 8:50:49 PM
    Author     : vohuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="theme-layout">



    <div class="topbar transparent">
        <div class="menu-container" id="toggle">
            <a href="#" class="canvas-menu" >
                <i class="fa fa-times fa-bars" aria-hidden="true"></i></a>
        </div>
        <div class="overlay" id="overlay">
            <nav class="overlay-menu">
                <ul class="offcanvas-menu">
                    <li class="menu-item-has-children">
                        <a href="#" title="">Home</a>
                        <ul>
                            <li><a href="index-2.html" title="">Home Social</a></li>
                            <li><a href="index2.html" title="">Home Social 2</a></li>
                            <li><a href="index-company.html" title="">Home Company</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Our Blog</a>
                        <ul>
                            <li><a href="blog-grid-wo-sidebar.html" title="">Our Blog</a></li>
                            <li><a href="blog-grid-right-sidebar.html" title="">Blog with R-Sidebar</a></li>
                            <li><a href="blog-grid-left-sidebar.html" title="">Blog with L-Sidebar</a></li>
                            <li><a href="blog-masonry.html" title="">Blog Masonry Style</a></li>
                            <li><a href="blog-list-wo-sidebar.html" title="">Blog List Style</a></li>
                            <li><a href="blog-list-right-sidebar.html" title="">Blog List with R-Sidebar</a></li>
                            <li><a href="blog-list-left-sidebar.html" title="">Blog List with L-Sidebar</a></li>
                            <li><a href="blog-detail.html" title="">Blog Post Detail</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Shop Pages</a>
                        <ul>
                            <li><a href="shop.html" title="">Shop Products</a></li>
                            <li><a href="shop-masonry.html" title="">Shop Masonry Products</a></li>
                            <li><a href="shop-single.html" title="">Shop Detail Page</a></li>
                            <li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
                            <li><a href="shop-checkout.html" title="">Product Checkout</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Our Portfolio</a>
                        <ul>
                            <li><a href="portfolio-2colm.html" title="">Portfolio 2col</a></li>
                            <li><a href="portfolio-3colm.html" title="">Portfolio 3col</a></li>
                            <li><a href="portfolio-4colm.html" title="">Portfolio 4col</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Support & Help</a>
                        <ul>
                            <li><a href="support-and-help.html" title="">Support & Help</a></li>
                            <li><a href="support-and-help-detail.html" title="">Support & Help Detail</a></li>
                            <li><a href="support-and-help-search-result.html" title="">Support & Help Search Result</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Company Forum</a>
                        <ul>
                            <li><a href="forum.html" title="">Forum Page</a></li>
                            <li><a href="forums-category.html" title="">Fourm Category</a></li>
                            <li><a href="forum-open-topic.html" title="">Forum Open Topic</a></li>
                            <li><a href="forum-create-topic.html" title="">Forum Create Topic</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" title="">Featured Pages</a>
                        <ul>
                            <li><a href="careers.html" title="">Careers</a></li>
                            <li><a href="career-detail.html" title="">Career Detail</a></li>
                            <li><a href="logout.html" title="">Logout Page</a></li>
                            <li><a href="404-2.html" title="">404 Errro Page</a></li>
                            <li><a href="about-company.html" title="">About Us</a></li>
                            <li><a href="contact-branches.html" title="">Contact Us</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </div><!-- topbar transparent header -->


    <section>
        <div class="gap">
            <div class="container">
                <div class="row" id="page-contents">

                    <div class="col-lg-12">	
                        <div class="row masonry">	
                            <div class="hand col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail1.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Gents Shoes</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">Shoes</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="jewl col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail2.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Hand Bag</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accessory col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail3.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">HeadPhone GSound</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="diy col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail4.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Winter Cap</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="cloth col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail5.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Men's Watch</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="hand col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail6.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Winter Cap</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accessory col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail7.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">Stylo Shoes</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="jewl col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail8.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">JBL Headphone</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="jewl col-lg-4 col-sm-6">
                                <div class="portfolio-box">
                                    <img src="images/resources/folio-detail2.jpg" alt="">
                                    <div class="overlinks">
                                        <h4><a href="portfolio-detail.html" title="">JBL bag</a></h4>
                                        <ul class="cate">
                                            <li><a href="#" title="">accessoires</a></li>
                                            <li><a href="#" title="">home made</a></li>
                                            <li><a href="#" title="">clothes</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>	
                    </div>
                </div>	
            </div>
        </div>
    </section>
