package agh.management.user.data;
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

    @Column(name = "RoleId")
    private Integer roleId;

    public User() {
    }

    public User(String name, String surname, String password, String email, Integer roleId) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.email = email;
        this.roleId = roleId;
    }

}