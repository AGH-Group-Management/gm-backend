package agh.management.changerequest;

import agh.management.request.Request;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Changerequest")
public class ChangeRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name = "Requests_ID", referencedColumnName = "ID")
    private Request request;

    @Column(name = "Subject1ID")
    private int subject1ID;

    @Column(name = "Subject2ID")
    private int subject2ID;
}
