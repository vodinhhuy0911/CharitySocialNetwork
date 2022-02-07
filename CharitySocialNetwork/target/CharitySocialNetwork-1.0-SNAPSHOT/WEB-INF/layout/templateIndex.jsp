<%-- 
    Document   : index
    Created on : Feb 1, 2022, 3:30:34 PM
    Author     : vohuy
--%>

<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/423053773c.js" crossorigin="anonymous"></script>
        <link href="https://doannguyennet.github.io/iconsfont/linearicons.css" rel="stylesheet"/>
        <link href="https://doannguyennet.github.io/iconsfont/linearicons.min.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
        <link rel="icon" href="<c:url value="images/fav.png"/>" type="image/png" sizes="16x16"> 
        <link rel="stylesheet" href="<c:url value="css/main.min.css"/>">
        <link rel="stylesheet" href="<c:url value="css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="css/strip.css"/>">
        <link rel="stylesheet" href="<c:url value="css/color.css"/>">
        <link rel="stylesheet" href="<c:url value="css/responsive.css"/>">
        <link rel="stylesheet" href="<c:url value="css/cssButton.css"/>">
    </head>
    <body>
        <!--<div class="se-pre-con"></div>-->
        <div class="theme-layout">
            <tiles:insertAttribute name="headerIndex"></tiles:insertAttribute>
            <tiles:insertAttribute name="sidebarRight"></tiles:insertAttribute>



            <tiles:insertAttribute name="sidebarLeft"></tiles:insertAttribute>

                <section>
                <tiles:insertAttribute name="userAvatar"></tiles:insertAttribute>
                    <div class="gap2 gray-bg">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row merged20" id="page-contents">
                                        <div class="col-lg-3">
                                        <tiles:insertAttribute name="sidebarStaticLeft"></tiles:insertAttribute>
                                        </div><!-- sidebar -->
                                    <tiles:insertAttribute name="content"></tiles:insertAttribute>
                                        <div class="col-lg-3">
                                        <tiles:insertAttribute name="sidebarStaticRight"></tiles:insertAttribute>
                                        </div><!-- sidebar -->
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </div>	
                </section> 
            </div>

        <script src="<c:url value="js/main.min.js"/>"></script>
        <script src="<c:url value="js/script.js"/>"></script>
        <script src="<c:url value="js/map-init.js"/>"></script>
        <script src="<c:url value="js/echarts.min.js"/>"></script>
        <script src="<c:url value="js/world.js"/>"></script>
        <script src="<c:url value="js/custom.js"/>"></script>
        <script src="<c:url value="js/strip.pkgd.min.js"/>"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

    </body>	
</html>
