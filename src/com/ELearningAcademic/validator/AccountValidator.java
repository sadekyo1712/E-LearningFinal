package com.ELearningAcademic.validator;

import com.ELearningAcademic.model.Account;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by root on 12/11/16.
 */
@Component
public class AccountValidator implements Validator {

    private EmailValidator emailValidator = EmailValidator.getInstance() ;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass == Account.class ;
    }

    @Override
    public void validate( Object target, Errors errors ) {

        Account account = ( Account )target;
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "username", "NotEmpty.customerForm.username" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "password", "NotEmpty.customerForm.password" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "name", "NotEmpty.customerForm.name" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "email", "NotEmpty.customerForm.email" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "address", "NotEmpty.customerForm.address" );
        ValidationUtils.rejectIfEmptyOrWhitespace( errors, "phone", "NotEmpty.customerForm.phone" );

        if ( !emailValidator.isValid( account.getEmail() ) )
            errors.rejectValue( "email", "Pattern.customerForm.email" );
    }
}
