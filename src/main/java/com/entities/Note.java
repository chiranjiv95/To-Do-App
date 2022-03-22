package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Notes")
public class Note {
	
	@Id
	private int id;
	private String title;
	
	@Column(length=1000)
	private String content;
	private Date dateAdded;
	
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Note(String title, String content, Date dateAdded) {
		super();
		this.id = new Random().nextInt(100);
		this.title = title;
		this.content = content;
		this.dateAdded = dateAdded;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}
	
	
	
}
