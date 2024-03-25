package agh.management.vacationrequest;

import agh.management.request.Request;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Entity
@Getter
@Setter
@Table(name = "Vacationrequest")
public class VacationRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name = "Requests_ID", referencedColumnName = "ID")
    private Request request;

    @Column(name = "StartDate")
    private Date startDate;


    @Column(name = "EndDate")
    private Date endDate;
}