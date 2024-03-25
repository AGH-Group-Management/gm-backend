package agh.management.request;

import agh.management.user.User;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@Table(name = "Requests")
public class Request {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name = "Users_ID", referencedColumnName = "ID")
    private User user;

    @Column(name = "Description")
    private String description;

    @Column(name = "Createdon")
    @Temporal(TemporalType.DATE)
    private Date createdOn;

    @Column(name = "Modifiedon")
    @Temporal(TemporalType.DATE)
    private Date modifiedOn;

    @Column(name = "Progress")
    private String progress;
}
