package com.lzl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lzl.model.EdocCategory;
import com.lzl.model.EdocEntry;
import com.lzl.service.EdocCategoryService;
import com.lzl.service.EdocEntryService;

@Controller
@RequestMapping("/")
public class FronIndexController {
	
	@Autowired
	private EdocCategoryService EdocCategoryService;
	
	@Autowired
	private EdocEntryService edocEntryService;
	
	
	@RequestMapping("/")
	public String index(Model model) {
		List<EdocCategory> categories = EdocCategoryService.listAll();
		model.addAttribute("categories", categories);
		List<EdocEntry> entries = edocEntryService.listAll();
		model.addAttribute("entries", entries);
		return "main";
		
	}
}
