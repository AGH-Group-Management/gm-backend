package agh.management.vacationrequest;

import agh.management.request.Request;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
public class VacationRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @OneToOne
    @JoinColumn(name = "Request_ID", referencedColumnName = "ID")
    private Request request;

    @Column(name = "StartDate")
    private Date startDate;


    @Column(name = "EndDate")
    private Date endDate;
}
