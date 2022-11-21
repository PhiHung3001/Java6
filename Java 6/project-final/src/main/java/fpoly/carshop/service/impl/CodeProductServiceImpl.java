package fpoly.carshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.carshop.entity.CodeProduct;
import fpoly.carshop.repository.CodeProductRepository;
import fpoly.carshop.service.CodeProductService;
@Service
public class CodeProductServiceImpl implements CodeProductService {
    @Autowired
    private CodeProductRepository codeProductRepository;
    @Override
    public void save(CodeProduct code) {
        this.codeProductRepository.save(code);
    }

    @Override
    public CodeProduct findByProduct(Integer id) {
        return null;
    }
}
