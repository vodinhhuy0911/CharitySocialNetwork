<%-- 
    Document   : Register
    Created on : Feb 1, 2022, 2:21:15 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="log-reg-area">
    <h2 class="log-title">Register</h2>
    <p>
        Don’t use Winku Yet? <a href="#" title="">Take the tour</a> or <a href="#" title="">Join now</a>
    </p>
    <form method="post">
        <div class="form-group">	
            <input type="text" required="required"/>
            <label class="control-label" for="input">First & Last Name</label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <input type="text" required="required"/>
            <label class="control-label" for="input">User Name</label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <input type="password" required="required"/>
            <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
        </div>
        <div class="form-radio">
            <div class="radio">
                <label>
                    <input type="radio" name="radio" checked="checked"/><i class="check-box"></i>Male
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="radio"/><i class="check-box"></i>Female
                </label>
            </div>
        </div>
        <div class="form-group">	
            <input type="text" required="required"/>
            <label class="control-label" for="input"><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6c29010d05002c">[email&#160;protected]</a></label><i class="mtrl-select"></i>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" checked="checked"/><i class="check-box"></i>Accept Terms & Conditions ?
            </label>
        </div>
        <a href="<c:url value="/login"/>" title="" class="already-have">Already have an account</a>
        <div class="submit-btns">
            <button class="mtr-btn signup" type="button"><span>Register</span></button>
        </div>
    </form>
</div>
</div>