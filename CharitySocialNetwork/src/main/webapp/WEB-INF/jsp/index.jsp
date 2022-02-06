<%-- 
    Document   : index
    Created on : Feb 1, 2022, 3:30:34 PM
    Author     : vohuy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-6">
    <div class="central-meta">
        <div class="new-postbox">
            <figure>
                <img class="avatar-timeline" src="${currentUser.images}" alt="">
            </figure>
            <div class="newpst-input">
                <button type="submit" class="custom-btn btn-15">Create auction post</button>
                
            </div>
        </div>
    </div><!-- add post new box -->
    <div class="loadMore">
        <div class="central-meta item">
            <c:forEach var="item" items="${post}">
            <div class="user-post">
                <div class="friend-info">
                    <figure>
                        <img class ="avatar-poster"src="${item.user.images}" alt="">
                    </figure>
                    <div class="friend-name">
                        <ins><a href="time-line.html" title="">${item.user.firstName} ${item.user.lastName}</a></ins>
                        <span>Published: ${item.published}</span>
                    </div>
                    <div class="post-meta">
                        <a href="#"><img src="${item.image}" alt=""></a>
                        <div class="more-pix">
                            <h2 class="main-title text-center">Shoes for Men Black</h2>
                            <div class="row">
                                <div class="offset-md-1 col-lg-10">
                                    <p class="prod-info text-center">
                                        Time start: ${item.timeStart}
                                    </p>
                                    <p class="prod-info text-center">
                                        Time end: ${item.timeEnd}
                                    </p>
                                    <p class="prod-info text-center">
                                        Price: ${item.price}
                                    </p>
                                </div>
                            </div>	
                            <div class="row">
                                <div class="offset-md-1 col-lg-10">
                                    <p class="prod-info text-center">
                                    ${item.content}
                                    </p>
                                </div>
                            </div>	
                        </div>
                        <div class="we-video-info">
                            <ul>
                                <li>
                                    <span class="comment" data-toggle="tooltip" title="Comments">
                                        <i class="fa fa-comments-o"></i>
                                        <ins>52</ins>
                                    </span>
                                </li>
                                <li>
                                    <span class="like" data-toggle="tooltip" title="like">
                                        <i class="far fa-thumbs-up"></i>
                                        <ins>${item.like}</ins>
                                    </span>
                                </li>

                                <li class="social-media">
                                    <div class="menu">
                                        <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-html5"></i></a></div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-facebook"></i></a></div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-google-plus"></i></a></div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-twitter"></i></a></div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-css3"></i></a></div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-instagram"></i></a>
                                            </div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-dribbble"></i></a>
                                            </div>
                                        </div>
                                        <div class="rotater">
                                            <div class="btn btn-icon"><a href="#" title=""><i class="fa fa-pinterest"></i></a>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="coment-area">
                    <ul class="we-comet">
                         <c:forEach var="comment" items="${item.commentCollection}">
                        <li>
                           
                            <div class="comet-avatar">
                                <img class ="avatar-header" src="${comment.user.images}" alt="">
                            </div>
                            <div class="we-comment">
                                <div class="coment-head">
                                    <h5><a href="time-line.html" title="">${comment.user.firstName} - ${comment.user.lastName}</a></h5>
                                    <span>1 year ago</span>
                                    <a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
                                </div>
                                <p>${comment.contentComment}</p>
                            </div>

                        </li>
                        </c:forEach>
                        <li>
                            <a href="#" title="" class="showmore underline">more comments</a>
                        </li>
                        <li class="post-comment">
                            <div class="comet-avatar">
                                <img src="images/resources/comet-1.jpg" alt="">
                            </div>
                            <div class="post-comt-box">
                                <form method="post">
                                    <textarea placeholder="Post your comment"></textarea>
                                    <div class="add-smiles">
                                        <span class="em em-expressionless" title="add icon"></span>
                                    </div>
                                    <div class="smiles-bunch">
                                        <i class="em em---1"></i>
                                        <i class="em em-smiley"></i>
                                        <i class="em em-anguished"></i>
                                        <i class="em em-laughing"></i>
                                        <i class="em em-angry"></i>
                                        <i class="em em-astonished"></i>
                                        <i class="em em-blush"></i>
                                        <i class="em em-disappointed"></i>
                                        <i class="em em-worried"></i>
                                        <i class="em em-kissing_heart"></i>
                                        <i class="em em-rage"></i>
                                        <i class="em em-stuck_out_tongue"></i>
                                    </div>
                                    <button type="submit"></button>
                                </form>	
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div><!-- centerl meta -->