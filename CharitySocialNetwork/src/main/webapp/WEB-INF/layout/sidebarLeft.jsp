<%-- 
    Document   : sidebarLeft
    Created on : Feb 1, 2022, 4:38:16 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="fixed-sidebar left">
                <div class="menu-left">
                    <ul class="left-menu">
                        <li><a href="<c:url value="/"/>" title="Newsfeed Page" data-toggle="tooltip" data-placement="right"><i class="icon-news"></i></a></li>
                        <li><a href="insights.html" title="Account Stats" data-toggle="tooltip" data-placement="right"><i class="icon-chart-growth"></i></a></li>
                        <li><a href="<c:url value="/message"/>" title="Messages" data-toggle="tooltip" data-placement="right"><i class="icon-bubble-dots"></i></a></li>
                        <li><a href="<c:url value="/editProfileBasic"/>" title="Setting" data-toggle="tooltip" data-placement="right"><i class="icon-chart-settings"></i></a></li>
                        <li><a href="faq.html" title="Faq's" data-toggle="tooltip" data-placement="right"><i class="icon-bubble-question"></i></a></li>
                        <li><a href="timeline-friends.html" title="Friends" data-toggle="tooltip" data-placement="right"><i class="icon-group-work"></i></a></li>
                        <li><a href="notifications.html" title="Notification" data-toggle="tooltip" data-placement="right"><i class="icon-smartphone-notification"></i></a></li>
                        <li><a href="notifications.html" title="Images" data-toggle="tooltip" data-placement="right"><i class="icon-picture"></i></a></li>
                        <li><a href="notifications.html" title="Video" data-toggle="tooltip" data-placement="right"><i class="icon-bubble-video"></i></a></li>
                        <li><a href="<c:url value="/auction"/>" title="Auction" data-toggle="tooltip" data-placement="right"><i class="fas fa-balance-scale"></i></a></li>
                        <li><a href="notifications.html" title="Logout" data-toggle="tooltip" data-placement="right"><i class="icon-exit"></i></a></li>
                    </ul>
                </div>
            </div><!-- left sidebar menu -->