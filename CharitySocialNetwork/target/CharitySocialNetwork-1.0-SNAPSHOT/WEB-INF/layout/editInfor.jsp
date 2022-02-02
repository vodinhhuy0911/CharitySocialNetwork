<%-- 
    Document   : editInfor
    Created on : Feb 2, 2022, 2:57:39 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside class="sidebar static left">
<div class="widget stick-widget">
    <h4 class="widget-title">Edit info</h4>
    <ul class="naves">
        <li>
            <i class="fas fa-info-circle"></i>
            
            <a href="<c:url value="editProfileBasic"/>" title="">Basic info</a>
        </li>
        
        <li>
            <i class="fas fa-lock"></i>
            <a href="<c:url value="editPassword"/>" title="">change password</a>
        </li>
    </ul>
</div><!-- settings widget -->	</aside>