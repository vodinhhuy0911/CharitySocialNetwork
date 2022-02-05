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
            <div class="user-post">
                <div class="friend-info">
                    <figure>
                        <img src="images/resources/friend-avatar10.jpg" alt="">
                    </figure>
                    <div class="friend-name">
                        <ins><a href="time-line.html" title="">Janice Griffith</a></ins>
                        <span>published: june,2 2018 19:PM</span>
                    </div>
                    <div class="post-meta">
                        <a href="#"><img src="images/resources/user-post.jpg" alt=""></a>
                        <div class="more-pix">
                            <h2 class="main-title text-center">Shoes for Men Black</h2>
                            <div class="row">
                                <div class="offset-md-1 col-lg-10">
                                    <p class="prod-info text-center">
                                        Time start:
                                    </p>
                                    <p class="prod-info text-center">
                                        Time end:
                                    </p>
                                    <p class="prod-info text-center">
                                        Price:
                                    </p>
                                </div>
                            </div>	
                            <div class="row">
                                <div class="offset-md-1 col-lg-10">
                                    <p class="prod-info text-center">
                                        Let the rest look at you with starry eyes, as you show off your love for fashion and for the company by carrying this grey handbag from Inc.5. Featuring a sophisticated gusseted design and delicate laser cut details all over,and find the way through the maze of the creative process/journey. this handbag is a cut above the rest. It also has twin grab handles and a zip closure that allows the ease of carrying.
                                    </p>
                                    <p class="prod-info text-center">
                                        Ariadne’s thread is the thread of the divine present in all things.  or rather uncover, their source and find the way through the maze of the creative process/journey.
                                        Let the rest look at you with starry eyes, as you show off your love for fashion and for the company by carrying this grey handbag from Inc.5.
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
                                        <ins>2.2k</ins>
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
                        <li>
                            <div class="comet-avatar">
                                <img src="images/resources/comet-1.jpg" alt="">
                            </div>
                            <div class="we-comment">
                                <div class="coment-head">
                                    <h5><a href="time-line.html" title="">Jason borne</a></h5>
                                    <span>1 year ago</span>
                                    <a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
                                </div>
                                <p>we are working for the dance and sing songs. this car is very awesome for the youngster. please vote this car and like our post</p>
                            </div>

                        </li>
                        <li>
                            <div class="comet-avatar">
                                <img src="images/resources/comet-1.jpg" alt="">
                            </div>
                            <div class="we-comment">
                                <div class="coment-head">
                                    <h5><a href="time-line.html" title="">Donald Trump</a></h5>
                                    <span>1 week ago</span>
                                    <a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
                                </div>
                                <p>we are working for the dance and sing songs. this video is very awesome for the youngster. please vote this video and like our channel
                                    <i class="em em-smiley"></i>
                                </p>
                            </div>
                        </li>
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
        </div>
    </div>
</div><!-- centerl meta -->