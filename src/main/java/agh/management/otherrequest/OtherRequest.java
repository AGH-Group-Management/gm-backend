package agh.management.otherrequest;

import agh.management.request.Request;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Otherrequests")
public class OtherRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name = "Requests_ID", referencedColumnName = "ID")
    private Request request;

}
