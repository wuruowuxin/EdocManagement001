package com.lzl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzl.mapper.EdocCategoryMapper;
import com.lzl.model.EdocCategory;
import com.lzl.service.EdocCategoryService;

@Service("EdocCategoryService")
public class EdocCategoryServiceImpl implements EdocCategoryService{

	@Autowired
	private EdocCategoryMapper categoryMapper;
	
	@Override
	public List<EdocCategory> listAll() {
		return categoryMapper.listAll();
	}

}
