package com.bookstore.model;

public class Content {
	private int id;
	private String brief;
	private String content;
	private String reatedDate;
	private String updateDate;
	private String sort;
	private int authorId;
	
	public Content() {
		// TODO Auto-generated constructor stub
	}

	public Content(int id, String brief, String content, String reatedDate, String updateDate, String sort,
			int authorId) {
		super();
		this.id = id;
		this.brief = brief;
		this.content = content;
		this.reatedDate = reatedDate;
		this.updateDate = updateDate;
		this.sort = sort;
		this.authorId = authorId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReatedDate() {
		return reatedDate;
	}

	public void setReatedDate(String reatedDate) {
		this.reatedDate = reatedDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	@Override
	public String toString() {
		return "Content [id=" + id + ", brief=" + brief + ", content=" + content + ", reatedDate=" + reatedDate
				+ ", updateDate=" + updateDate + ", sort=" + sort + ", authorId=" + authorId + "]";
	}
	
	
}
