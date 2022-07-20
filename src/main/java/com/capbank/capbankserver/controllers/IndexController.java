package com.capbank.capbankserver.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@SuppressWarnings("SpringMVCViewInspection")
@Controller
public class IndexController {

    @GetMapping("/")
    public ModelAndView getIndex(){
        ModelAndView getIndexPage = new ModelAndView("index");
        getIndexPage.addObject("PageTitle", "Home");
        System.out.println("in index controller");
        return getIndexPage;
    }

    @GetMapping("/login")
    public ModelAndView getLogin(){
        ModelAndView getLogin = new ModelAndView("login");
        System.out.println("in login page");
        getLogin.addObject("PageTitle", "Login");
        return getLogin;
    }

    @SuppressWarnings("SpringMVCViewInspection")
    @GetMapping("/register")
    public ModelAndView getRegister(){
        ModelAndView getRegister = new ModelAndView("register");
        System.out.println("in register page");
        getRegister.addObject("PageTitle", "Register");
        return getRegister;
    }


}
