/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.validator;

import com.n15.pojos.User;
import java.util.Set;
import javax.validation.ConstraintViolation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author vohuy
 */
@Component
public class WebAppValidator implements Validator{

    private Set<Validator> springValidator;
    @Autowired
    private javax.validation.Validator beanValidator;
    @Override
    public boolean supports(Class<?> type) {
        return User.class.isAssignableFrom(type);
    }
    
    

    @Override
    public void validate(Object o, Errors errors) {
        Set<ConstraintViolation<Object>> beansValidator = this.beanValidator.validate(o);
        for(ConstraintViolation<Object> obj : beansValidator)
            errors.rejectValue(obj.getPropertyPath().toString(), obj.getMessageTemplate(), obj.getMessage());
        for (Validator v: this.springValidator)
            v.validate(o, errors);
    }

    /**
     * @param springValidator the springValidator to set
     */
    public void setSpringValidator(Set<Validator> springValidator) {
        this.springValidator = springValidator;
    }
    
}
