<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="CharitySocialNetwork/css/main.min.css"/>
<link rel="stylesheet" href="CharitySocialNetwork/css/style.css"/>
<link rel="stylesheet" href="CharitySocialNetwork/css/strip.css"/>
<link rel="stylesheet" href="CharitySocialNetwork/css/color.css"/>
<link rel="stylesheet" href="CharitySocialNetwork/css/responsive.css"/>
<link rel="stylesheet" href="CharitySocialNetwork/css/cssButton.css"/>
<section class="white-bg">
    <div class="gap100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop-page">
                        <div class="shop-filter-sec">
                            <span>Showing 1?12 of 42 results</span>
                            <div class="shop-filter">
                                <select>
                                    <option>sort by</option>
                                    <option>newest</option>
                                    <option>price low to high</option>
                                    <option>price high to low</option>
                                    <option>sort by average rating</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <c:forEach var ="item" items="${product}">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="product-box">
                                        <figure>
                                            <span class="new">New</span>
                                            <img src="${item.images}" alt="">

                                        </figure>
                                        <div class="product-name">
                                            <c:url value="shopDetail" var="productPath">
                                                <c:param name="productId" value="${item.id}"></c:param>
                                            </c:url>
                                            <h5><a href="<c:url value="${productPath}"/>" title="">${item.titles}</a></h5>
                                            <div class="prices">
                                                <ins>$ ${item.price}</ins>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-lg-12">
                                <ul class="paginationz">
                                    <li class="prev"><a title="" href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a title="" href="#">01</a></li>
                                    <li><a title="" href="#" class="active">02</a></li>
                                    <li><a title="" href="#">03</a></li>
                                    <li><a title="" href="#">04</a></li>
                                    <li class="space">.......</li>
                                    <li><a title="" href="#">21</a></li>
                                    <li class="next"><a title="" href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div><!-- pagination -->	
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
