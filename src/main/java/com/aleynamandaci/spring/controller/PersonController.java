package com.aleynamandaci.spring.controller;

import com.aleynamandaci.spring.entity.Person;
import com.aleynamandaci.spring.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {
    @Autowired
    private PersonRepository personRepository;

    @GetMapping("/getPerson")
    public Iterable<Person> getPerson(){
        return personRepository.findAll();
    }


    @PostMapping(value="/savePerson")
    public Long savePerson (@RequestBody Person person){
        personRepository.save(person);
        return 1L;
    }
}
