package com.n15.pojos;

import com.n15.pojos.Posts;
import com.n15.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-06T21:47:21")
@StaticMetamodel(Comment.class)
public class Comment_ { 

    public static volatile SingularAttribute<Comment, String> contentComment;
    public static volatile SingularAttribute<Comment, Integer> id;
    public static volatile SingularAttribute<Comment, Date> published;
    public static volatile SingularAttribute<Comment, Posts> postId;
    public static volatile SingularAttribute<Comment, User> user;

}