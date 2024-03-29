package agh.management.dziekan;

import agh.management.user.User;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "Dziekans")
public class Dziekan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "DziekanID", referencedColumnName = "id")
    private User dziekan;
}
