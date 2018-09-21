package com.parts.controller;

import com.parts.model.Part;
import com.parts.service.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PartController {
    @Autowired
    private PartService partService;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String listPart(Model model) {
        int allRecord = partService.listAllPart().size();
        int countPage = (allRecord % 10 == 0) ? allRecord / 10 : allRecord / 10 + 1;
        model.addAttribute("listPart", partService.listPart(1));
        model.addAttribute("countPage", countPage);
        model.addAttribute("countComp", partService.getSobrCountComp());
        return "index";
    }

    @RequestMapping(value = "index{page}", method = RequestMethod.GET)
    public String listPartPage(Model model, @PathVariable("page") int page) {
        int allRecord = partService.listAllPart().size();
        int countPage = (allRecord % 10 == 0) ? allRecord / 10 : allRecord / 10 + 1;
        model.addAttribute("listPart", partService.listPart(page));
        model.addAttribute("countPage", countPage);
        model.addAttribute("countComp", partService.getSobrCountComp());
        return "index";
    }

    @RequestMapping(value = "get/{id}", method = RequestMethod.GET)
    public String getPart(Model model, @PathVariable("id") int id) {
        model.addAttribute("part", partService.getPartById(id));
        return "update";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deletePart(@PathVariable("id") int id) {
        partService.deletePart(id);
        return "redirect:/index";
    }

    @RequestMapping(value = "/part/add", method = RequestMethod.POST)
    public String addPart(@ModelAttribute("part") Part part) {
        partService.addPart(part);
        return "redirect:/index";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String updatePart(@ModelAttribute("part") Part part) {
        partService.updatePart(part);
        return "redirect:/index";
    }
}
