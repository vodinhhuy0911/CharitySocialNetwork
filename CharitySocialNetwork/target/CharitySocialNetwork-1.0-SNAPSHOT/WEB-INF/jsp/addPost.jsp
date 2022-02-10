<%-- 
    Document   : addPost
    Created on : Feb 8, 2022, 2:05:31 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="post" var="action"></c:url>
<div class="col-lg-6">
    <div class="central-meta">
        <div class="editing-info">
            <h5 class="f-title"><i class="fas fa-info-circle"></i>Add Post</h5>
            <form:form method="post" action="${action}" enctype="multipart/form-data" modelAttribute="product">
                <div class="form-group half">	
                    <form:input type="text" path="titles" id="input" required="required"/>
                    <label class="control-label" for="input">Title</label><i class="mtrl-select"></i>
                </div>
                <div class="form-group half">	
                    <form:input type="text" path="content" required="required"/>
                    <label class="control-label" for="input">Content</label><i class="mtrl-select"></i>
                </div>
                <div class="form-group">	
                    <form:input type="text" path="price" required="required"/>
                    <label class="control-label" for="input">Price</label><i class="mtrl-select"></i>
                </div>
                <div class="form-group">	
                    <form:input type="file" path="file" required="required"/>
                    <label class="control-label" for="input">Display Image</label><i class="mtrl-select"></i>
                </div>
                <input type="submit" value="Post"/>
                
                
            </form:form>
        </div>
    </div>	
</div><!-- centerl meta -->