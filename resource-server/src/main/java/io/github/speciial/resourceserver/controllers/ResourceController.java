package io.github.speciial.resourceserver.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ResourceController {

    @GetMapping("/messages")
    public String getMessages() {
        return "Some Random Secure Message!";
    }

}
