package agh.management.subject;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;

    private String description;

    private int semester;

    @Column(name = "isRequired")
    private boolean required;

    @Column(name = "maxSlots")
    private int maxSlots;

}
