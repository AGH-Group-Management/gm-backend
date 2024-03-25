package agh.management.otherrequest;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OtherRequestRepository extends JpaRepository<OtherRequest, Long> {
}
