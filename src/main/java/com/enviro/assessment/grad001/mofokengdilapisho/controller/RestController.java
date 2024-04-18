package com.enviro.assessment.grad001.mofokengdilapisho.controller;

import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.web.bind.annotation.RestController
public class RestController {

    @GetMapping("/test")
    public String test() {
        return "test is working";
    }



}
