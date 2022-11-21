package fpoly.carshop.service;

import fpoly.carshop.entity.CodeProduct;

public interface CodeProductService {
    void save(CodeProduct code);
    CodeProduct findByProduct(Integer id);
}
