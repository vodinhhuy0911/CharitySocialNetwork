<%-- 
    Document   : TemplateLogin
    Created on : Feb 1, 2022, 2:20:40 PM
    Author     : vohuy
--%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title><tiles:insertAttribute name ="title"></tiles:insertAttribute></title>
        <link rel="icon" href="<c:url value="images/fav.png"/>" type="image/png" sizes="16x16"> 

        <link rel="stylesheet" href="<c:url value="css/main.min.css"/>">
        <link rel="stylesheet" href="<c:url value="css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="css/color.css"/>">
        <link rel="stylesheet" href="<c:url value="css/responsive.css"/>">
    </head>
    <body>
        <!--<div class="se-pre-con"></div>-->
        <div class="theme-layout">
            <div class="container-fluid pdng0">
                <div class="row merged">
                    <tiles:insertAttribute name="leftLogin"/>
                    <tiles:insertAttribute name="content"/>
                </div>
            </div>
        </div>
        <script data-cfasync="false" src="<c:url value="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"/>"></script><script src="<c:url value="js/main.min.js"/>"></script>

        <script src="<c:url value="js/script.js"/>"></script>

    </body>	

</html>