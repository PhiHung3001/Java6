package fpoly.carshop.service;

import fpoly.carshop.dto.AccountResponse;
import fpoly.carshop.dto.ChangePasswordForm;

public interface LoginService {
    AccountResponse doLogin(String userName, String password);
    boolean doChangePassword(ChangePasswordForm form);
}
