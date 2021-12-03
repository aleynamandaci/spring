package com.aleynamandaci.spring.repository;

import com.aleynamandaci.spring.entity.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;


public interface PersonRepository extends JpaRepository<Person,Long> {
}
