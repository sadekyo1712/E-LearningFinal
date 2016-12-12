package com.ELearningAcademic.util;

import com.ELearningAcademic.model.Account;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by root on 12/12/16.
 */
public class Utils {

    public static Account getAccountInSession( HttpServletRequest request ) {
        Account account = ( Account )request.getSession().getAttribute("account");
        if ( account == null ) {
            account = new Account();
            request.getSession().setAttribute( "account", account );
        }
        System.out.println("---------------------------------- Logging --------------------------------------------");
        System.out.println("Account in session : " + account );
        System.out.println("---------------------------------------------------------------------------------------");
        return account;
    }

    public static void removeAccountInSession( HttpServletRequest request ) {
        request.getSession().removeAttribute("account");
    }

    public static void storeAccountInSession( HttpServletRequest request, Account account ) {
        request.getSession().setAttribute( "account", account );
    }
}
