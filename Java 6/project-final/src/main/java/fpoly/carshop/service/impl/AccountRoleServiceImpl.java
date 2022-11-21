package fpoly.carshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.carshop.entity.AccountRole;
import fpoly.carshop.repository.AccountRoleRepository;
import fpoly.carshop.service.AccountRoleService;

@Service
public class AccountRoleServiceImpl implements AccountRoleService {
    @Autowired
    private AccountRoleRepository accountRoleRepository;
    @Override
    public void save(AccountRole accountRole) {
     this.accountRoleRepository.save(accountRole);
    }
}
