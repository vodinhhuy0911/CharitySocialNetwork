<%-- 
    Document   : Login
    Created on : Feb 1, 2022, 2:21:00 PM
    Author     : vohuy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="login-reg-bg">
        <div class="log-reg-area sign">
            <h2 class="log-title">Login</h2>
            <p>
                Don?t use Winku Yet? <a href="#" title="">Take the tour</a> or <a href="#" title="">Join now</a>
            </p>
            <form method="post">
                <div class="form-group">	
                    <input type="text" id="input" required="required"/>
                    <label class="control-label" for="input">Username</label><i class="mtrl-select"></i>
                </div>
                <div class="form-group">	
                    <input type="password" required="required"/>
                    <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked="checked"/><i class="check-box"></i>Always Remember Me.
                    </label>
                </div>
                <a href="#" title="" class="forgot-pwd">Forgot Password?</a>
                <div class="submit-btns">
                    <button class="mtr-btn signin" type="button"><span>Login</span></button>
                    <button class="" type="button"><a href="<c:url value="/register"/>">Register</a></button>
                </div>
            </form>
        </div>
    </div>
</div>