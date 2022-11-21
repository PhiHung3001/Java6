package fpoly.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpoly.carshop.entity.Position;

@Repository
public interface PositionRepository extends JpaRepository<Position, Integer> {
}
