package agh.management.role;

import jakarta.persistence.*;

@Entity
@Table  (name = "Roles")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    public Long getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

}
