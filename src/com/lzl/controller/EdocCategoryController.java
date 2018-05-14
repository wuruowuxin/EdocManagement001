package com.lzl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lzl.model.EdocEntry;
import com.lzl.service.EdocCategoryService;
import com.lzl.service.EdocEntryService;

@Controller
@RequestMapping("/edocCategory")
public class EdocCategoryController {

	@Autowired
	private EdocCategoryService edocCategoryService;
	
	@Autowired
	private EdocEntryService edocEntryService;
	
	@RequestMapping("/edocEntries")
	public String queryEntriesByCategoryId(@RequestParam("categoryId") Integer categoryId,Model model) {
		List<EdocEntry> entries= edocEntryService.queryEdocEntriesByCategoryId(categoryId);
		model.addAttribute("categoryId",categoryId);
		model.addAttribute("entries",entries);
		model.addAttribute("categories", edocCategoryService.listAll());
		return "main";
	}
	
}
