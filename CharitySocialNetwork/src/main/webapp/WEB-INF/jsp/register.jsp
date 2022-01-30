<%-- 
    Document   : login
    Created on : Jan 26, 2022, 11:04:02 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title><tiles:insertAttribute name="title"/></title>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="icon" href="<c:url value="/images/fav.png"/>" type="image/png" sizes="16x16"> 

        <link rel="stylesheet" href="<c:url value="/css/main.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/color.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/responsive.css"/>">

    </head>
    <body>
        <c:url value ="/login" var="action"/>
        <div class="theme-layout">
            <div class="container-fluid pdng0">
                <div class="row merged">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="land-featurearea">
                            <div class="land-meta">
                                <h1>Winku</h1>
                                <p>
                                    Winku is free to use for as long as you want with two active projects.
                                </p>
                                <div class="friend-logo">
                                    <span><img src="images/wink.png" alt=""></span>
                                </div>
                                <a href="#" title="" class="folow-me">Follow Us on</a>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="login-reg-bg">
                            <div class="log-reg-area sign">
                                <c:url value ="/register" var="action2"/>
                            <c:if test="${errMsg != null}">
                                <div class="text-center text-danger">${errMsg}</div>
                            </c:if>
                            <div class="log-reg-area sign">
                                <h2 class="log-title">Register</h2>
                                <p>
                                    Don’t use Winku Yet? <a href="#" title="">Take the tour</a> or <a href="#" title="">Join now</a>
                                </p>
                                <form:form method="post" action="${action2}" modelAttribute="user">
                                    <div class="form-group">	
                                        <form:input type="text" required="required" id="firstname" path="firstName"/>
                                        <label class="control-label" for="input">First Name</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="text" required="required" id="lastname" path="lastName"/>
                                        <label class="control-label" for="input">Last Name</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="text" required="required" id="email" path="email"/>
                                        <label class="control-label" for="input">Email</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="text" required="required" id="sdt" path="sdt"/>
                                        <label class="control-label" for="input">Phone</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="text" required="required" id="username" path="username"/>
                                        <label class="control-label" for="input">User Name</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="password" required="required" id="password" path="password"/>
                                        <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <form:input type="password" required="required" id="confirmPassword" path="confirmPassword"/>
                                        <label class="control-label" for="input">Confirm Password</label><i class="mtrl-select"></i>
                                    </div>
                                    
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" checked="checked"/><i class="check-box"></i>Accept Terms & Conditions ?
                                        </label>
                                    </div>
                                        <a href="<c:url value="/login"/>" title="" class="already-have">Already have an account</a>
                                    <div class="submit-btns">
                                        <input class="btn btn-primary signin" type ="submit" value="Register"/>
                                    </div>
                                </form:form>
                            </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script data-cfasync="false" src="<c:url value="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"/>"></script><script src="<c:url value="js/main.min.js"/>"></script>
        <script src="<c:url value="/js/script.js"/>"></script>

    </body>
</html>
