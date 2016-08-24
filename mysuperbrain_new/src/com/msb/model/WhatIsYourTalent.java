package com.msb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "WHAT_IS_YOUR_TALENT")
public class WhatIsYourTalent implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ENTRY_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_NAME")
	private String user_name;

	@Column(name = "ENTRY_DESCRIPTION")
	private String description;

	@Column(name = "SUBMISSION_DATE")
	private java.util.Date submit_date;

	@Column(name = "POINTS")
	private int points;

	@Column(name = "CLIENT")
	private String client;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "ENTRY_FILE_NAME")
	private String entry_file_name;

	@Column(name = "ENTRY_TYPE")
	private String entry_type;

	public WhatIsYourTalent() {
		setSubmit_date(MsbUtil.getCurrentDate());
		setPoints(20);
		setStatus(1);
	}

	@Override
	public String toString() {
		return description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public java.util.Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(java.util.Date submit_date) {
		this.submit_date = submit_date;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEntry_file_name() {
		return entry_file_name;
	}

	public void setEntry_file_name(String entry_file_name) {
		this.entry_file_name = entry_file_name;
	}

	public String getEntry_type() {
		return entry_type;
	}

	public void setEntry_type(String entry_type) {
		this.entry_type = entry_type;
	}

}
