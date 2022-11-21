package fpoly.carshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.carshop.entity.Categories;
import fpoly.carshop.repository.CategoryRepository;
import fpoly.carshop.service.CategoryService;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;
    @Override
    public List<Categories> finAll() {
        return this.categoryRepository.findAll();
    }
}
