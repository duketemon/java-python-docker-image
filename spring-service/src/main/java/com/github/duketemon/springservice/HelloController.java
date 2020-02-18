package com.github.duketemon.springservice;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "<h1>Spring Boot application is working!</h1>";
    }

}