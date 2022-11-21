package fpoly.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpoly.carshop.entity.Categories;



@Repository
public interface CategoryRepository extends JpaRepository<Categories, Integer> {
}
