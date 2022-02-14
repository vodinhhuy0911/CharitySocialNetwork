<%-- 
    Document   : shopDetail
    Created on : Feb 3, 2022, 12:48:37 AM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="white-bg">
    <div class="gap100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="prod-detail">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="prod-avatar">
                                    <ul class="slider-for-gold">
                                        <li><img src="${product.images}" alt=""></li>
                                            <c:forEach var="image" items="${product.imagesProductCollection}">
                                                <li><img src="${image.image}" alt=""></li>
                                            </c:forEach>

                                    </ul>
                                    <ul class="slider-nav-gold">
                                        <li><img src="${product.images}" alt=""></li>
                                            <c:forEach var="image" items="${product.imagesProductCollection}">
                                            <li><img src="${image.image}" alt=""></li>
                                            </c:forEach>
                                    </ul>
                                </div>	
                            </div>
                            <div class="col-lg-6">
                                <div class="full-postmeta">

                                    <span class="prices style2">
                                        <ins>
                                            <span class="woocommerce-Price-amount amount">
                                                <span class="woocommerce-Price-currencySymbol">$</span>${product.price}
                                            </span>
                                        </ins>

                                    </span>

                                    <h4>${product.titles}</h4>

                                    <p>
                                        ${product.content}
                                    </p>
                                    <a class="shopnow" title="" href="#">Add To Cart</a>


                                    <div class="prod categories">
                                        <span class="cat-heading">Categories:
                                            <a href="#" title="">${product.category.name}</a>

                                        </span>
                                    </div>


                                    <div class="extras">
                                        <a href="https://www.youtube.com/watch?v=MIbbtEjdYrc" title="" data-strip-group="mygroup" class="strip btn2" data-strip-options="width: 700,height: 450,youtube: { autoplay: 1 }"><i class="fa fa-play-circle"></i>Watch video</a>
                                    </div><!-- play video btn -->
                                </div>
                            </div>
                        </div>

                        <div class="gap no-bottom">
                            <div class="tab-section">
                                <ul class="nav nav-tabs single-btn">
                                    <li class="nav-item"><a class="active" href="#desc" data-toggle="tab">Description</a></li>

                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active fade show " id="desc" >
                                        <div class="more-pix">
                                            <h2 class="main-title text-center">${product.titles}</h2>
                                            <div class="row">
                                                <div class="offset-md-1 col-lg-10">
                                                    <p class="prod-info text-center">
                                                        ${product.content}
                                                    </p>
                                                </div>
                                            </div>	
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- shop detail meta -->