package agh.management.user;

import agh.management.role.Role;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Users")
public class User {
    @Setter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String password;

    private String surname;

    private String email;

    @ManyToOne
    @JoinColumn(name = "RoleId", referencedColumnName = "id")
    private Role roleId;

    public User(){

    }
}
