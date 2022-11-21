package fpoly.carshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import fpoly.carshop.dto.DtoAccount;
import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.Customers;
import fpoly.carshop.repository.AccountRepository;
import fpoly.carshop.repository.CustomerRepository;
import fpoly.carshop.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public Account findById(String userName) {
        return this.accountRepository.findById(userName).orElse(null);
    }

    @Override
    public void save(Account account) {
        this.accountRepository.save(account);
    }

    @Override
    public void changePassWord(DtoAccount dto) {
        Customers customers = this.customerRepository.getById(dto.getCustomerId());
        Account account1 = this.accountRepository.getById(dto.getAccount());
        account1.setAccount(dto.getAccount());
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String pass = bCryptPasswordEncoder.encode(dto.getPassword());
        account1.setPassword(pass);
        account1.setDateCreate(dto.getDateCreate());
        account1.setCustomer(customers);
        this.accountRepository.save(account1);

    }
}
