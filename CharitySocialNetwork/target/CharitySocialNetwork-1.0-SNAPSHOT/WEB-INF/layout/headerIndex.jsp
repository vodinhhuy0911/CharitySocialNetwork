<%-- 
    Document   : headerIndex
    Created on : Feb 1, 2022, 4:25:52 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="topbar stick">
                <div class="logo">
                    <a title="" href="<c:url value="/"/>"><img src="images/logo.png" alt=""></a>
                </div>
                <div class="top-area">
                    <div class="top-search">
                        <form method="post" class="">
                            <input type="text" placeholder="Search Friend">
                            <button data-ripple><i class="fas fa-search"></i></button>
                        </form>
                    </div>
                    <ul class="setting-area">
                        <li><a href="<c:url value="/"/>" title="Home" data-ripple=""><i class="fas fa-home"></i></a></li>
                        <li>
                            <a href="#" title="Notification" data-ripple="">
                                <i class="fas fa-bell"></i><span>20</span>
                            </a>
                            <div class="dropdowns">
                                <span>4 New Notifications</span>
                                <ul class="drops-menu">
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-1.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>sarah Loren</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag green">New</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-2.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Jhon doe</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag red">Reply</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-3.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Andrew</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag blue">Unseen</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-4.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Tom cruse</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag">New</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-5.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Amy</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag">New</span>
                                    </li>
                                </ul>
                                <a href="notifications.html" title="" class="more-mesg">view more</a>
                            </div>
                        </li>
                        <li>
                            <a href="#" title="Messages" data-ripple=""><i class="fab fa-facebook-messenger"></i><span>12</span></a>
                            <div class="dropdowns">
                                <span>5 New Messages</span>
                                <ul class="drops-menu">
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-1.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>sarah Loren</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag green">New</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-2.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Jhon doe</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag red">Reply</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-3.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Andrew</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag blue">Unseen</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-4.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Tom cruse</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag">New</span>
                                    </li>
                                    <li>
                                        <a href="notifications.html" title="">
                                            <img src="images/resources/thumb-5.jpg" alt="">
                                            <div class="mesg-meta">
                                                <h6>Amy</h6>
                                                <span>Hi, how r u dear ...?</span>
                                                <i>2 min ago</i>
                                            </div>
                                        </a>
                                        <span class="tag">New</span>
                                    </li>
                                </ul>
                                <a href="messages.html" title="" class="more-mesg">view more</a>
                            </div>
                        </li>
                        <li><a href="#" title="Languages" data-ripple=""><i class="fa fa-globe"></i></a>
                            <div class="dropdowns languages">
                                <a href="#" title=""><i class="ti-check"></i>English</a>
                                <a href="#" title="">Arabic</a>
                                <a href="#" title="">Dutch</a>
                                <a href="#" title="">French</a>
                            </div>
                        </li>
                    </ul>
                    <div class="user-img">
                        <img src="images/resources/admin.jpg" alt="">
                        <span class="status f-online"></span>
                        <div class="user-setting">
                            <a href="#" title=""><span class="status f-online"></span>online</a>
                            <a href="#" title=""><span class="status f-away"></span>away</a>
                            <a href="#" title=""><span class="status f-off"></span>offline</a>
                            <a href="<c:url value="/timeline"/>" title=""><i class="far fa-user"></i></i> view profile</a>
                            <a href="#" title=""><i class="fas fa-users-cog"></i>account setting</a>
                            <a href="<c:url value="/logout"/>" title=""><i class="fas fa-sign-out-alt"></i></i>log out</a>
                        </div>
                    </div>
                    
                </div>
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
                            <li><a href="<c:url value="/shopCart"/>" title="">Shop Product Cart</a></li>
                            
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
                            <li><a href="#" title="">Logout Page</a></li>
                            <li><a href="404-2.html" title="">404 Errro Page</a></li>
                            <li><a href="about-company.html" title="">About Us</a></li>
                            <li><a href="contact-branches.html" title="">Contact Us</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </div><!-- topbar transparent header -->

            </div><!-- topbar -->
