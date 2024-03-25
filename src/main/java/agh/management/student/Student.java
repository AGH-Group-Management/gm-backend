package agh.management.student;

import agh.management.path.Path;
import agh.management.user.User;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "Students")
public class Student {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name = "StudentID", referencedColumnName = "id")
    private User user;

    @Column(name = "Semester")
    private int semester;

    @ManyToOne
    @JoinColumn(name = "PathID", referencedColumnName = "id")
    private Path path;

    @Column(name = "Index")
    private String indexNumber;
}
