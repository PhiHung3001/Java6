package fpoly.carshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.AccountRole;
import fpoly.carshop.entity.AccountRoleKey;

import java.util.List;

@Repository
public interface AccountRoleRepository extends JpaRepository<AccountRole, AccountRoleKey> {
    List<AccountRole> findAllByAccount(Account account);
}

