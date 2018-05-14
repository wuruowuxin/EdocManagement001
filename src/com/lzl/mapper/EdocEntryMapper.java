package com.lzl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lzl.model.EdocEntry;

/**
 * 电子文档条目表的mapper接口
 * 2018-5-9
 * @author Administrator
 *
 */
public interface EdocEntryMapper {

	List<EdocEntry> listAll();

	int insert(EdocEntry edocEntry);

	List<EdocEntry> queryEdocEntriesByCategoryId(@Param("categoryId")Integer categoryId);

	int update(EdocEntry edocEntry);

	EdocEntry queryByPrimaryKey(@Param("id")Integer id);

	int delete(EdocEntry edocEntry);

}
