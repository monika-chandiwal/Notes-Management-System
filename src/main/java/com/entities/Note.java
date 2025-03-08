package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.*;

@Entity
@Table (name="notes")
public class Note {
  @Id
  private int id;
  private String title;
  @Column(length=1500)
  private String content;
  private String addedDate;
  private String updateDate;
public int getId() {
	return id;
}
public void setId() {
	this.id = new Random().nextInt(100000);
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
public String getAdddedDate() {
	return addedDate;
}
@SuppressWarnings("deprecation")
public void setAdddedDate(Date adddedDate) {
	this.addedDate = adddedDate.toLocaleString();;
}

@SuppressWarnings("deprecation")
public Note(String title, String content, Date date) {
	super();
	this.id=100000 +new Random().nextInt(900000);
	this.title=title;
	this.content=content;
	this.addedDate=date.toLocaleString();
}
public Note() {
	super();
}
public String getUpdateDate() {
	return updateDate;
}
@SuppressWarnings("deprecation")
public void setUpdateDate(Date updateDate) {
	this.updateDate = updateDate.toLocaleString();
}
}
