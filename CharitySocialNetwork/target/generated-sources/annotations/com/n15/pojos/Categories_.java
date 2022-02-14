package com.n15.pojos;

import com.n15.pojos.Posts;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-14T21:35:34")
@StaticMetamodel(Categories.class)
public class Categories_ { 

    public static volatile SingularAttribute<Categories, String> images;
    public static volatile CollectionAttribute<Categories, Posts> postsCollection;
    public static volatile SingularAttribute<Categories, String> name;
    public static volatile SingularAttribute<Categories, Integer> idcategories;

}