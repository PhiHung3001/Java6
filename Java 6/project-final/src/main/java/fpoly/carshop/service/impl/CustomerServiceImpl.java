package fpoly.carshop.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import fpoly.carshop.dto.DtoCustomer;
import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.AccountRole;
import fpoly.carshop.entity.AccountRoleKey;
import fpoly.carshop.entity.Customers;
import fpoly.carshop.entity.Role;
import fpoly.carshop.repository.AccountRepository;
import fpoly.carshop.repository.CustomerRepository;
import fpoly.carshop.repository.RoleRepository;
import fpoly.carshop.service.AccountRoleService;
import fpoly.carshop.service.AccountService;
import fpoly.carshop.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private AccountService accountService;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private AccountRoleService accountRoleService;
    @Autowired
    private AccountRepository accountRepository;


    @Override
    public Page<Customers> finAll(Pageable pageable) {
        return this.customerRepository.findAll(pageable);
    }

    @Override
    public Customers findById(String id) {
        return this.customerRepository.findById(id).orElse(null);
    }

    @Override
    public Customers findCustomerByAccount(String account) {
        return this.customerRepository.findCustomersByAccount_Account(account);
    }

    @Override
    public void saveCustomer(DtoCustomer dtoCustomer){
        Customers customers = new Customers(dtoCustomer.getIdCustomer(),dtoCustomer.getNameCustomer(),dtoCustomer.getPhone(),dtoCustomer.getEmail()
                ,dtoCustomer.getIdCard(),dtoCustomer.getAddress());
        this.customerRepository.save(customers);
        Date date = new Date(System.currentTimeMillis());
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String pass = bCryptPasswordEncoder.encode(dtoCustomer.getPasswork());
        Customers customers1 = customerRepository.getById(dtoCustomer.getIdCustomer());
        Account account = new Account(dtoCustomer.getAccount(),pass,date,customers1);
        this.accountService.save(account);
        AccountRoleKey accountRoleKey = new AccountRoleKey(account.getAccount(),1);
        Role role = this.roleRepository.getById(1);
        AccountRole accountRole = new AccountRole(accountRoleKey,account,role);
        this.accountRoleService.save(accountRole);



    }

    @Override
    public void updateCustomer(DtoCustomer customers) {
        Customers customers1 = this.customerRepository.getById(customers.getIdCustomer());
        customers1.setNameCustomer(customers.getNameCustomer());
        customers1.setPhone(customers.getPhone());
        customers1.setEmail(customers.getEmail());
        customers1.setIdCard(customers.getIdCard());
        customers1.setAddress(customers.getAddress());
        this.customerRepository.save(customers1);
    }

    @Override
    public void delete(String id) {
        customerRepository.deleteById(id);
    }

    @Override
    public Page<Customers> searchCustomer(String name, Pageable pageable) {
        return this.customerRepository.searchCustomer(name,pageable);
    }

    @Override
    public List<Account> finAllAccount() {
        return this.accountRepository.findAll();
    }

    @Override
    public Account getAccountByIdCustomer(String id) {
        return this.accountRepository.findAccountByCustomer_IdCustomer(id);
    }


}
