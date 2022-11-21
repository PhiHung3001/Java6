package fpoly.carshop.service;

import fpoly.carshop.dto.DtoAccount;
import fpoly.carshop.entity.Account;

public interface AccountService {
    Account findById(String userName);
    void save(Account account);
    void changePassWord(DtoAccount account);
}
