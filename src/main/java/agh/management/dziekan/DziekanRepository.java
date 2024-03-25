package agh.management.dziekan;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DziekanRepository extends JpaRepository <Dziekan, Long> {
}
