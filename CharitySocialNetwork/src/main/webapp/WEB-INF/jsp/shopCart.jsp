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
									<th>quantity</th>
									<th>total price</th>
								</tr>
								<tr>
									<td>
										<a href="#" title="" class="delete-cart"><i class="ti-close"></i></a>
										<div class="cart-avatar">
											
											<img src="images/resources/cart-2.jpg" alt="">
										</div>
										<div class="cart-meta">
											<span>Black Shoes for men</span>
										</div>
									</td>
									<td>
										<span class="cart-prices"> 
											<del>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>125</span>
											</del> 
											<ins>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>60</span>
											</ins> 
										</span>
									</td>
									<td>
										<div class="cart-list-quantity">
											<div class="c-input-number">
												<span>
													<input id="box1" type="text" class="manual-adjust" value="0"/>
												</span>
											</div>
										</div>
									</td>
									<td>
										<span class="total-price">$60</span>
									</td>
								</tr>
								<tr>
									<td>
										<a href="#" title="" class="delete-cart"><i class="ti-close"></i></a>
										<div class="cart-avatar">
											
											<img src="images/resources/cart-3.jpg" alt="">
										</div>
										<div class="cart-meta">
											<span>Leather Belt for Pent</span>
										</div>
									</td>
									<td>
										<span class="cart-prices"> 
											<del>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>125</span>
											</del> 
											<ins>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>60</span>
											</ins> 
										</span>
									</td>
									<td>
										<div class="cart-list-quantity">
											<div class="c-input-number">
												<span>
													<input id="box2" type="text" class="manual-adjust" value="0"/>
												</span>
											</div>
										</div>
									</td>
									<td>
										<span class="total-price">$60</span>
									</td>
								</tr>
								<tr>
									<td>
										<a href="#" title="" class="delete-cart"><i class="ti-close"></i></a>
										<div class="cart-avatar">	
											
											<img src="images/resources/cart-4.jpg" alt="">
										</div>
										<div class="cart-meta">
											<span>Watch for men Breguet</span>
										</div>
									</td>
									<td>
										<span class="cart-prices"> 
											<del>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>125</span>
											</del> 
											<ins>
												<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>60</span>
											</ins> 
										</span>
									</td>
									<td>
										<div class="cart-list-quantity">
											<div class="c-input-number">
												<span>
													<input id="box3" type="text" class="manual-adjust" value="0"/>
												</span>
											</div>
										</div>
									</td>
									<td>
										<span class="total-price">$60</span>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="amount-area">
							<a href="#" title="" class="update-cart">Update Cart</a>
							<form method="post" class="coupon-code">
								<input type="text" placeholder="Enter your Coupon">
								<button><i class="fa fa-paper-plane-o"></i></button>
							</form>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="total-area">
							<ul>
								<li>
									<span>Cart Subtotal:</span>
									<i>$180.00</i>
								</li>
								<li>
									<span>Shipping:</span>
									<i>Free</i>
								</li>
								<li class="order-total">
									<span>ORDER TOTAL:</span>
									<i>$180.00</i>
								</li>
							</ul>
						</div>
						<div class="proceed">
                                                    <a href="<c:url value="/shopCheckout"/>" title="" class="button">proceed to checkout</a>
						</div>
					</div>
				</div>	
    		</div>
    	</div>
    </section><!-- CART SECTION -->