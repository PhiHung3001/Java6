package fpoly.carshop.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import fpoly.carshop.dto.DtoCustomer;
import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.Customers;


public interface CustomerService {
    Page<Customers> finAll(Pageable pageable);
    Customers findById(String id);
    Customers findCustomerByAccount(String account);
    void saveCustomer(DtoCustomer customers);
    void updateCustomer(DtoCustomer customers);
    void delete(String id);
    Page<Customers> searchCustomer(String name, Pageable pageable);
    List<Account> finAllAccount();
    Account getAccountByIdCustomer(String id);
}
