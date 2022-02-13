<%-- 
    Document   : auction
    Created on : Feb 1, 2022, 8:50:49 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="theme-layout">



    

    <section>
        <div class="gap">
            <div class="container">
                <div class="row" id="page-contents">
                    <div class="col-lg-12">	
                        <div class="row masonry">
                            <c:forEach var ="item" items="${category}">
                                <div class=" col-lg-4 col-sm-6">
                                    <div class="portfolio-box">
                                        <c:url value="shop" var="catPath">
                                            <c:param name="cateId" value="${item.idcategories}"></c:param>
                                        </c:url>
                                        <img src="${item.images}" alt="">
                                        <div class="overlinks">
                                            <h4><a href="${catPath}" title="">${item.name}</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            
                        </div>	
                    </div>
                </div>	
            </div>
        </div>
    </section>
