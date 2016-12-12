package com.ELearningAcademic.controller;

import com.ELearningAcademic.DAOImplement.AccountDAOImplement;
import com.ELearningAcademic.model.Account;
import com.ELearningAcademic.util.Utils;
import com.ELearningAcademic.validator.AccountValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by root on 12/11/16.
 */
@Controller
public class MainController {

    @Autowired
    private AccountDAOImplement accountDAOImplement;

    @Autowired
    private AccountValidator accountValidator;

    @InitBinder
    public void initDataBinder( WebDataBinder dataBinder ) {
        Object target = dataBinder.getTarget();
        if ( target == null ) {
            System.out.println("No targer found !");
            return;
        }
        if ( target.getClass() == Account.class) {
            dataBinder.setValidator( accountValidator );
            System.out.println("Account info : " + target );
        } else {
            System.out.println("Target Object info : " + target ) ;
        }
    }

    @RequestMapping( value = "/index")
    public String homepage(ModelMap modelMap, HttpServletRequest request) {
        System.out.println("In homepage");
        Account accountForm = Utils.getAccountInSession( request );
        this.addAccountFormToHeader( modelMap, request, accountForm );
        return "index";
    }

//    @RequestMapping( value = "/login", method = RequestMethod.GET )
//    public String login(ModelMap modelMap, HttpServletRequest request) {
//        System.out.println("In login HTTP_GET");
//        return "redirect:/index";
//    }

    @RequestMapping( value = "/signup", method = RequestMethod.POST )
    public String signup(ModelMap modelMap, HttpServletRequest request,
                         @ModelAttribute( "accountForm" ) @Validated Account account,
                         BindingResult bindingResult ) {
        if ( bindingResult.hasErrors() ) {
            System.out.println("Error: field not valid");
            return "redirect:/intro";
        }
        try {
            accountDAOImplement.createAccount( account );
            Utils.storeAccountInSession( request, account );
        } catch ( Exception ex ) {
            System.out.println("Error has raised in signup page");
            ex.printStackTrace();
        }
        return "redirect:/index";
    }

    @RequestMapping( value = "/logout", method = RequestMethod.GET )
    public String logout(ModelMap modelMap, HttpServletRequest request) {
        System.out.println("In Logout and redirect to homepage");
        return "index";
    }

    public ModelAndView addAccountFormToHeader(ModelMap modelMap, HttpServletRequest request, Account account ) {
        modelMap.addAttribute( "accountForm", account );
        return new ModelAndView( "header", modelMap ) ;
    }

    @RequestMapping( value = "/intro")
    public String functionInDevelopmentProgress(ModelMap modelMap, HttpServletRequest request) {
        return "/intro";
    }

    @RequestMapping( value = "/about")
    public String about(ModelMap modelMap, HttpServletRequest request) {
        return "about";
    }

    @RequestMapping( value = "/contact")
    public String contact(ModelMap modelMap, HttpServletRequest request) {
        return "contact";
    }

    @RequestMapping( value = "/gallery")
    public String galleryShow(ModelMap modelMap, HttpServletRequest request) {
        return "gallery";
    }

    @RequestMapping( value = "/typo")
    public String typoDemo(ModelMap modelMap, HttpServletRequest request) {
        return "typo";
    }

    @RequestMapping( value = "/403")
    public String accessDenied(ModelMap modelMap, HttpServletRequest request) {
        return "403";
    }

    @RequestMapping( value = "/account_info")
    public String accountInfo() {
        return "index";
    }
}
