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


    @GetMapping("/error")
    public ModelAndView getError(){
        ModelAndView getError = new ModelAndView("error");
        System.out.println("in error page");
        getError.addObject("PageTitle", "Error");
        return getError;
    }

    @GetMapping("/verify")
    public ModelAndView getVerify(){
        ModelAndView getError = new ModelAndView("login");
        System.out.println("in verify page");
        getError.addObject("PageTitle", "Error");
        return getError;
    }

}
