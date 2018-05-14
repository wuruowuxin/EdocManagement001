package com.lzl.service;

import java.util.List;

import com.lzl.model.EdocEntry;

public interface EdocEntryService {

	List<EdocEntry> queryEdocEntriesByCategoryId(Integer categoryId);

	int add(EdocEntry edocEntry);

	int update(EdocEntry edocEntry);

	List<EdocEntry> listAll();

	EdocEntry queryByPrimaryKey(Integer id);

	int delete(EdocEntry edocEntry);

}
