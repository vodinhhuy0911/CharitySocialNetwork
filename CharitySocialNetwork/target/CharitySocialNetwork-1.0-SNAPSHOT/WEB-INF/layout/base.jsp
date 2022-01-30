<%-- 
    Document   : index
    Created on : Jan 26, 2022, 9:38:33 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->

        <link href="https://doannguyennet.github.io/iconsfont/linearicons.css" rel="stylesheet"/>
        <link href="https://doannguyennet.github.io/iconsfont/linearicons.min.css" rel="stylesheet"/>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Winku Social Network Toolkit</title>
        <link rel="icon" href="<c:url value="/images/fav.png"/>" type="image/png" sizes="16x16"> 

        <link rel="stylesheet" href="<c:url value="/css/main.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/color.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/responsive.css"/>">

    </head>
    <body>
        <!--<div class="se-pre-con"></div>-->
        <div class="theme-layout">
            <div class="topbar stick">
                <tiles:insertAttribute name ="header"/>
                <section>
                    <div class="gap gray-bg">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row" id="page-contents">
                                        <div class="col-lg-3">
                                            <aside class="sidebar static">
                                                <tiles:insertAttribute name="leftContent1"/>

                                                <tiles:insertAttribute name="leftContent2"/>
                                            </aside>
                                        </div><!-- sidebar -->
                                        <tiles:insertAttribute name="content"/>
                                        <div class="col-lg-3">
                                            <aside class="sidebar static">
                                                <tiles:insertAttribute name = "rightContent1"/>

                                                <tiles:insertAttribute name = "rightContent2"/>
                                            </aside>
                                        </div><!-- sidebar -->
                                    </div>	
                                </div>
                            </div>
                        </div>
                    </div>	
                </section>

                <footer>
                    <div class="container">
                        <tiles:insertAttribute name = "footer"/>
                    </div>
                </footer><!-- footer --> 
            </div>


            <script data-cfasync="false" src="<c:url value="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"/>"></script>
            <script src="<c:url value="/js/main.min.js"/>"></script>
            <script src="<c:url value="/js/map-init.js"/>"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
            <script src="<c:url value="/js/script.js"/>"></script>
    </body>	

</html>