<%-- 
    Document   : loginForm
    Created on : Feb 3, 2022, 10:56:41 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <c:if test="${param.error!= null}">
        <div>${param.error}</div>
    </c:if>
    <div class="login-reg-bg">
        <div class="log-reg-area sign">
            <h2 class="log-title">Login</h2>
<form:form action="${action}" method="post">
    <div class="form-group">	
                    <input type="text" required="required" id="username" name="username"/>
                    <label class="control-label" for="input" >Username</label><i class="mtrl-select"></i>
                </div>
                <div class="form-group">	
                    <input type="password" required="required" id="password" name="password"/>
                    <label class="control-label" for="input" >Password</label><i class="mtrl-select"></i>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked="checked"/><i class="check-box"></i>Always Remember Me.
                    </label>
                </div>
                <a href="#" title="" class="forgot-pwd">Forgot Password?</a>
                <div class="submit-btns">
                    <input class="custom-btn btn-15 " type="submit" value="Login"/>
                    <button class="custom-btn btn-15" type="button"><a href="<c:url value="/register"/>">Register</a></button>
                </div>
</form:form>
                </div>
    </div>
</div>