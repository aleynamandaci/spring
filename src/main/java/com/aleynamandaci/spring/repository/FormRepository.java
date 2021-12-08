package com.aleynamandaci.spring.repository;

import com.aleynamandaci.spring.entity.Form;
import org.springframework.data.jpa.repository.JpaRepository;


public interface FormRepository extends JpaRepository<Form,Long> {
}
