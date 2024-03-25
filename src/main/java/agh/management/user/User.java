package agh.management.user;
import agh.management.role.Role;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "Users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Surname")
    private String surname;

    @Column(name = "Password")
    private String password;

    @Column(name = "Email")
    private String email;

    @ManyToOne
    @JoinColumn(name = "RoleId", referencedColumnName = "id")
    private Role role;
    public User() {
    }

    public User(String name, String surname, String password, String email, Role role) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.email = email;
        this.role = role;
    }

}