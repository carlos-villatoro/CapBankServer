package com.capbank.capbankserver.controller_advisor;

import com.capbank.capbankserver.models.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class Advisor {

//    set model globally
    @ModelAttribute("registerUser")
    public User getUserDefaults(){
        return new User();
    }
}
