<%-- 
    Document   : showmoreShop
    Created on : Feb 2, 2022, 11:44:17 PM
    Author     : vohuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <li><a href="<c:url value="/shop"/>" title="">Shop Products</a></li>
                            <li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
                            
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
