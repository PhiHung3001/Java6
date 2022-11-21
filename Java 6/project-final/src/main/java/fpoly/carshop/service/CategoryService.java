package fpoly.carshop.service;

import org.springframework.stereotype.Service;

import fpoly.carshop.entity.Categories;
import fpoly.carshop.entity.Position;

import java.util.List;


public interface CategoryService {
    List<Categories> finAll();
}
