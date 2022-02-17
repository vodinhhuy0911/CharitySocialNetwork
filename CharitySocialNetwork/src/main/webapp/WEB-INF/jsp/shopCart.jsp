<%-- 
    Document   : shopCart
    Created on : Feb 3, 2022, 12:58:44 AM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="white-bg">
    	<div class="gap100">
    		<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="cart-sec">
							<table class="table table-responsive">
								<tr>
									<th>Product name</th>
									<th>price</th>
									<th>Status</th>
								</tr>
                                                                <c:forEach var="item" items="${product}">
								<tr>
									<td>
										<a href="#" title="" class="delete-cart"><i class="ti-close"></i></a>
										<div class="cart-avatar">
											
											<img src="${item.postId.images}" alt="">
										</div>
										<div class="cart-meta">
											<span>${item.postId.titles}</span>
										</div>
									</td>
									<td>
										<span class="cart-prices"> 
											
											<ins>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>${item.postId.price}</span>
											</ins> 
										</span>
									</td>
									<td>
										<div class="cart-list-quantity">
											<div class="c-input-number">
												<span>
													<input id="box1" type="button"  value="${item.statusId.type}"/>
												</span>
											</div>
										</div>
									</td>
									
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					
					<div class="col-lg-6">
						
						<div class="proceed">
                                                    <a href="<c:url value="/shopCheckout"/>" title="" class="button">proceed to checkout</a>
						</div>
					</div>
				</div>	
    		</div>
    	</div>
    </section><!-- CART SECTION -->