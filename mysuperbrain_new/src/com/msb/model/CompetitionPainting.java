package com.msb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "COMP_SUBMISSIONS")
public class CompetitionPainting implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "COMP_ID")
	private String comp_id;

	@Column(name = "SUB_ID")
	private String sub_id;

	@Column(name = "USER_NAME")
	private String user_name;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "SUBMIT_DT")
	private java.util.Date submit_date;

	@Column(name = "POINTS")
	private int points;

	@Column(name = "CLIENT")
	private String client;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "TITLE")
	private String title;

	@Column(name = "IMAGE_PATH")
	private String image_path;

	@ManyToOne(targetEntity = Competition.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "COMP_ID", referencedColumnName = "COMP_ID", insertable = false, updatable = false)
	private Competition competition;

	public Competition getCompetition() {
		return competition;
	}

	public void setCompetition(Competition competition) {
		this.competition = competition;
	}

	public CompetitionPainting() {
		setSubmit_date(MsbUtil.getCurrentDate());
		setPoints(20);
		setStatus(1);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComp_id() {
		return comp_id;
	}

	public void setComp_id(String comp_id) {
		this.comp_id = comp_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSub_id() {
		return sub_id;
	}

	public void setSub_id(String sub_id) {
		this.sub_id = sub_id;
	}

	@Override
	public String toString() {
		return title;
	}

}
