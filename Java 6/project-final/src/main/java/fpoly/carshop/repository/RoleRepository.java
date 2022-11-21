package fpoly.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpoly.carshop.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role,Integer> {
}
