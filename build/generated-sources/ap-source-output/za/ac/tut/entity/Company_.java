package za.ac.tut.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entity.Address;
import za.ac.tut.entity.JobDiscription;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-05-21T03:48:13")
@StaticMetamodel(Company.class)
public class Company_ { 

    public static volatile SingularAttribute<Company, String> password;
    public static volatile SingularAttribute<Company, Address> address;
    public static volatile SingularAttribute<Company, Integer> phone;
    public static volatile SingularAttribute<Company, String> approval;
    public static volatile SingularAttribute<Company, String> name;
    public static volatile ListAttribute<Company, JobDiscription> jobDescription;
    public static volatile SingularAttribute<Company, String> id;

}