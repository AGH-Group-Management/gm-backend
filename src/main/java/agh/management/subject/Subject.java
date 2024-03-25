package agh.management.subject;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Subjects")
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Description")
    private String description;

    @Column(name = "Semester")
    private int semester;

    @Column(name = "PathID")
    private int pathId;

    @Column(name = "isrequired")
    private boolean required;

    @Column(name = "maxSlots")
    private int maxSlots;

}
