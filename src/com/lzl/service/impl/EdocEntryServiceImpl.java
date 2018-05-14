package com.lzl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzl.mapper.EdocEntryMapper;
import com.lzl.model.EdocEntry;
import com.lzl.service.EdocEntryService;

@Service("EdocEntryService")
public class EdocEntryServiceImpl implements EdocEntryService{

	@Autowired
	private EdocEntryMapper edocEntryMapper;
	
	@Override
	public List<EdocEntry> queryEdocEntriesByCategoryId(Integer categoryId) {
		return edocEntryMapper.queryEdocEntriesByCategoryId(categoryId);
	}

	@Override
	public int add(EdocEntry edocEntry) {
		return edocEntryMapper.insert(edocEntry);
	}

	@Override
	public int update(EdocEntry edocEntry) {
		return edocEntryMapper.update(edocEntry);
	}

	@Override
	public List<EdocEntry> listAll() {
		return edocEntryMapper.listAll();
	}

	@Override
	public EdocEntry queryByPrimaryKey(Integer id) {
		return edocEntryMapper.queryByPrimaryKey(id);
	}

	@Override
	public int delete(EdocEntry edocEntry) {
		return edocEntryMapper.delete(edocEntry);
	}

}
