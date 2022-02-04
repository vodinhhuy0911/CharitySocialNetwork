package com.n15.pojos;

import com.n15.pojos.Comment;
import com.n15.pojos.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-04T00:23:49")
@StaticMetamodel(Posts.class)
public class Posts_ { 

    public static volatile SingularAttribute<Posts, Date> timeEnd;
    public static volatile SingularAttribute<Posts, String> image;
    public static volatile SingularAttribute<Posts, Date> timeStart;
    public static volatile SingularAttribute<Posts, Integer> like;
    public static volatile SingularAttribute<Posts, Long> price;
    public static volatile CollectionAttribute<Posts, Comment> commentCollection;
    public static volatile SingularAttribute<Posts, Integer> id;
    public static volatile SingularAttribute<Posts, Date> published;
    public static volatile SingularAttribute<Posts, User> userid;
    public static volatile SingularAttribute<Posts, String> content;

}