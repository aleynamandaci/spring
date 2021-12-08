package com.aleynamandaci.spring.controller;

import com.aleynamandaci.spring.entity.Form;
import com.aleynamandaci.spring.repository.FormRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@RestController

public class FormController {
    @Autowired
    private FormRepository formRepository;

    @GetMapping("/saveForm")
    public String saveForm(Model model) {
        model.addAttribute("form", new Form());
        return "save-form";
    }



    @PostMapping("/saveForm")
    public RedirectView saveForm(@ModelAttribute("form") Form form, RedirectAttributes redirectAttributes) {
        final RedirectView redirectView = new RedirectView("/", true);
        Form saveForm = formRepository.save(form);
        redirectAttributes.addFlashAttribute("saveForm", saveForm);
        redirectAttributes.addFlashAttribute("savedFormSuccess", true);
        return redirectView;
    }
}
