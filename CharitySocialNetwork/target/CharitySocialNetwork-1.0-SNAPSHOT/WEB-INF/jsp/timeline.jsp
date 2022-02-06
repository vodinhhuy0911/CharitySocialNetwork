<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/register" var="action"/>
            <section>
                <div class="feature-photo">
                    <figure><img src="images/resources/timeline-1.jpg" alt=""></figure>
                    <div class="add-btn">
                        <span>1205 followers</span>
                        <a href="#" title="" data-ripple="">Add Friend</a>
                    </div>
                    <form:form method="post" action="${action}" class="edit-phto">
                        <i class="fa fa-camera-retro"></i>
                        <label class="fileContainer">
                            Edit Cover Photo
                            <form:form path="images" type="file"/>
                            <input type="submit" value="save"/>
                        </label>
                    </form:form>
                    <div class="container-fluid">
                        <div class="row merged">
                            <div class="col-lg-2 col-sm-3">
                                <div class="user-avatar">
                                    <figure>
                                        <img class="avatar-display" src="${currentUser.images}" alt="">
                                        <form:form method="post" action="${action}" class="edit-phto">
                                            <i class="fa fa-camera-retro"></i>
                                            <label class="fileContainer">
                                                Edit Display Photo
                                                <input path="coverPhoto" id="coverPhoto" type="file"/>
                                                <input type="submit" value="save"/>
                                            </label>
                                        </form:form>
                                    </figure>
                                </div>
                            </div>
                            <div class="col-lg-10 col-sm-9">
                                <div class="timeline-info">
                                    <ul>
                                        <li class="admin-name">
                                            <h5>${currentUser.firstName} - ${currentUser.lastName}</h5>
                                            <span>Nickname</span>
                                        </li>
                                        <li>
                                            <a class="active" href="time-line.html" title="" data-ripple="">time line</a>
                                            <a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
                                            <a class="" href="timeline-videos.html" title="" data-ripple="">Videos</a>
                                            <a class="" href="timeline-friends.html" title="" data-ripple="">Friends</a>
                                            
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!-- top area -->
