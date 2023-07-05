package za.ac.tut.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entity.Video;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-05-21T03:48:13")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile SingularAttribute<Student, String> password;
    public static volatile SingularAttribute<Student, Integer> phone;
    public static volatile SingularAttribute<Student, String> surname;
    public static volatile SingularAttribute<Student, Integer> studNum;
    public static volatile SingularAttribute<Student, String> name;
    public static volatile ListAttribute<Student, Video> videos;
    public static volatile SingularAttribute<Student, String> id;
    public static volatile SingularAttribute<Student, String> cvName;

}