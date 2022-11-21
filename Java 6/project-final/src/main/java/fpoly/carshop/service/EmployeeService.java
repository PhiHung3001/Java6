package fpoly.carshop.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import fpoly.carshop.dto.DtoEmployee;
import fpoly.carshop.entity.Employee;


public interface EmployeeService {
    Page<Employee> finAll(Pageable pageable);
    Employee findById(String id);
    void saveEmployee(DtoEmployee employee);
    void updateEmployee(DtoEmployee employee);
    void delete(String id);
    Page<Employee> seacrhEmployee(String name, Pageable pageable);
}
