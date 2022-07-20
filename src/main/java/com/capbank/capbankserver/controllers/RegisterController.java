package com.capbank.capbankserver.controllers;

import com.capbank.capbankserver.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class RegisterController {

    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegister = new ModelAndView("register");
        System.out.println("in register page");
        getRegister.addObject("PageTitle", "Register");
        return getRegister;
    }

    @PostMapping("/register")
    public ModelAndView register(@Valid @ModelAttribute("registerUser")User user, BindingResult result,
                                 @RequestParam("first_name") String first_name,
                                 @RequestParam("last_name") String last_name,
                                 @RequestParam("email") String email,
                                 @RequestParam("password") String password,
                                 @RequestParam("confirm_password") String confirm_password){

        ModelAndView registerPage = new ModelAndView("register");

//        check for errors
        if(result.hasErrors() && confirm_password.isEmpty()){
            registerPage.addObject("confirm_pass", "Passwords must match");
            return registerPage;
        }

        return registerPage;

    }

}
