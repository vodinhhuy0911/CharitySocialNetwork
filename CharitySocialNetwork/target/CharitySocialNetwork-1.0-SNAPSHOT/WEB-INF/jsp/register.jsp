<%-- 
    Document   : Register
    Created on : Feb 1, 2022, 2:21:15 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/register" var="action"/>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="log-reg-area">
    <h2 class="log-title">Register</h2>
    
    <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="user">
        <div class="form-group">	
            <form:input path="firstName" id="firstName" type="text" required="required"/>
            <label class="control-label" for="firstname">First Name</label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <form:input path="lastName" id="lastName" type="text" required="required"/>
            <label class="control-label" for="lastname">Last Name</label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <form:input path="email" id="email" type="text" required="required"/>
            <label class="control-label" for="email"><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6c29010d05002c">[email&#160;protected]</a></label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <form:input path="sdt" id="sdt" type="text" required="required"/>
            <label class="control-label" for="sdt">Phone</label><i class="mtrl-select"></i>
        </div>
        
        
        <div class="form-group">	
            <form:input path="username" id="username" type="text" required="required"/>
            <label class="control-label" for="username">User name</label><i class="mtrl-select"></i>
        </div>
        <div class="form-group">	
            <form:input path="password" id="password" type="password" required="required"/>
            <label class="control-label" for="password">Password</label><i class="mtrl-select"></i>
        </div>
            <div class="form-group">	
            <form:input path="confirmPassword" id="confirmPassword" type="password" required="required"/>
            <label class="control-label" for="confirmPassword">Confirm Password</label><i class="mtrl-select"></i>
        </div>
            <div class="form-group">	
            <form:input path="file" id="images" type="file"/>
            <label class="control-label" for="images">File avatar</label><i class="mtrl-select"></i>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" checked="checked"/><i class="check-box"></i>Accept Terms & Conditions ?
            </label>
        </div>
        <a href="<c:url value="/login"/>" title="" class="already-have">Already have an account</a>
        <div class="submit-btns">
            <input class="custom-btn btn-15" type="submit" value ="Register"/>
            
        </div>
    </form:form>
</div>
</div>