package agh.management.student;

import agh.management.path.Path;
import agh.management.user.User;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Student {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "StudentID", referencedColumnName = "id")
    private User user;

    private int semester;

    @ManyToOne
    @JoinColumn(name = "PathID", referencedColumnName = "id")
    private Path path;

    @Column(name = "Index")
    private String indexNumber;
}
