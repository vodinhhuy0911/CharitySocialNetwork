package com.n15.pojos;

import com.n15.pojos.Comment;
import com.n15.pojos.Posts;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-01T15:20:47")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> lastName;
    public static volatile SingularAttribute<User, String> firstName;
    public static volatile SingularAttribute<User, Integer> iduser;
    public static volatile SingularAttribute<User, String> sdt;
    public static volatile SingularAttribute<User, String> images;
    public static volatile SingularAttribute<User, String> password;
    public static volatile CollectionAttribute<User, Posts> postsCollection;
    public static volatile CollectionAttribute<User, Comment> commentCollection;
    public static volatile SingularAttribute<User, Boolean> active;
    public static volatile SingularAttribute<User, String> userRole;
    public static volatile SingularAttribute<User, String> email;
    public static volatile SingularAttribute<User, String> username;

}