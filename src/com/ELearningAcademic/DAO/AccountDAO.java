package com.ELearningAcademic.DAO;

import com.ELearningAcademic.model.Account;

/**
 * Created by root on 12/11/16.
 */
public interface AccountDAO {

    public Account fetchAccount( String username );
    public void createAccount( Account account );
}
