package fpoly.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpoly.carshop.entity.CodeProduct;

@Repository
public interface CodeProductRepository extends JpaRepository<CodeProduct, Integer> {
    CodeProduct findByProduct_ProductIdAndCode(String id, Integer code);
}
