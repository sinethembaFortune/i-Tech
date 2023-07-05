package za.ac.tut.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entity.Comment;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-05-21T03:48:13")
@StaticMetamodel(Video.class)
public class Video_ { 

    public static volatile SingularAttribute<Video, String> discription;
    public static volatile ListAttribute<Video, Comment> comments;
    public static volatile SingularAttribute<Video, String> partner;
    public static volatile SingularAttribute<Video, String> approve;
    public static volatile SingularAttribute<Video, String> videoName;
    public static volatile SingularAttribute<Video, Long> id;

}