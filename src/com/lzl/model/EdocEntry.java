package com.lzl.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 电子文档条目表实体类
 * 2018-5-9
 * @author Administrator
 *
 */
public class EdocEntry {


	private Integer id;
	
	private EdocCategory edocCategory;
	
	private String title;
	
	private String summary;
	
	private String uploadUser;
	
	//日期格式化
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public EdocCategory getEdocCategory() {
		return edocCategory;
	}

	public void setEdocCategory(EdocCategory edocCategory) {
		this.edocCategory = edocCategory;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getUploadUser() {
		return uploadUser;
	}

	public void setUploadUser(String uploadUser) {
		this.uploadUser = uploadUser;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	
	
}
