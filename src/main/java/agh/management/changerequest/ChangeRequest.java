package agh.management.changerequest;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "ChangeRequest")
public class ChangeRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @OneToOne
    @JoinColumn(name = "Request_ID", referencedColumnName = "ID")
    private int requestID;

    @Column(name = "Subject1ID")
    private int subject1ID;

    @Column(name = "Subject2ID")
    private int subject2ID;
}
