package com.aleynamandaci.spring.controller;

import com.aleynamandaci.spring.entity.Form;
import com.aleynamandaci.spring.entity.Person;
import com.aleynamandaci.spring.repository.FormRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FormController {
    @Autowired
    private FormRepository formRepository;

    @GetMapping("/getForm")
    public Iterable<Form> getForm(){
        return formRepository.findAll();
    }


    @PostMapping(value="/saveForm")
    public Long saveForm (@RequestBody Form form){
        formRepository.save(form);
        return 1L;
    }
}
