package com.lzl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.lzl.model.EdocEntry;
import com.lzl.service.EdocCategoryService;
import com.lzl.service.EdocEntryService;

@Controller
@RequestMapping("/edocEntry")
public class EdocEntryController {

	@Autowired
	private EdocCategoryService EdocCategoryService;
	
	@Autowired
	private EdocEntryService edocEntryService;

	@RequestMapping("/add")
	public String add(EdocEntry edocEntry,Model model) {
		
		int row = edocEntryService.add(edocEntry);
		System.out.println(row);
		model.addAttribute("categoryId",edocEntry.getEdocCategory().getId());
		model.addAttribute("categories", EdocCategoryService.listAll());
		model.addAttribute("entries", edocEntryService.queryEdocEntriesByCategoryId(
				edocEntry.getEdocCategory().getId()));
		
		return "main";
	}
	
	
	@RequestMapping("/toUpdate/{id}")
	public String toUpdate(@PathVariable("id")Integer id,@RequestParam("categoryId") Integer categoryId,Model model) {
		EdocEntry edocEntry = edocEntryService.queryByPrimaryKey(id);
		model.addAttribute("entry", edocEntry);
		model.addAttribute("categoryId",categoryId);
		return "edit";
	}
	
	@RequestMapping("/update")
	public String update(EdocEntry edocEntry,Model model) {
		int row = edocEntryService.update(edocEntry);
		model.addAttribute("categoryId",edocEntry.getEdocCategory().getId());
		model.addAttribute("categories", EdocCategoryService.listAll());
		model.addAttribute("entries", edocEntryService.queryEdocEntriesByCategoryId(
				edocEntry.getEdocCategory().getId()));
		
		return "main";
		
	}
	
	@RequestMapping("/delete/{id}")
	public String toDelete (@PathVariable("id")Integer id,@RequestParam("categoryId") Integer categoryId,EdocEntry edocEntry,RedirectAttributesModelMap model) {
		EdocEntry edocEntry1 = edocEntryService.queryByPrimaryKey(id);
		model.addFlashAttribute("categoryId",edocEntry1.getEdocCategory().getId());
		model.addFlashAttribute("entry", edocEntry);
		model.addFlashAttribute("categoryId",categoryId);
		String r = null;
		if(categoryId != null)
			r = "edocCategory/edocEntries?categoryId="+categoryId;
		int row = edocEntryService.delete(edocEntry1);
		if(row > 0) {
			model.addFlashAttribute("msg", "删除成功");
			if(r != null) 
				return "redirect:/" + r;
		}
		return "redirect:/";
	}
}
