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
@Table(name = "competition_text")
public class CompetitionText implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "COMP_ID")
	private String comp_id;

	@Column(name = "COMP_CATEGORY_ID")
	private int comp_category_id;

	@Column(name = "USER_ID")
	private String user_name;

	@Column(name = "SUMMARY")
	private String summary;

	@Column(name = "CONTENT")
	private String content;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;

	@Column(name = "POINTS")
	private int points;

	@Column(name = "CLIENT")
	private String client;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "IS_SAVED")
	private String is_saved;

	@Column(name = "TITLE")
	private String title;

	@ManyToOne(targetEntity = CompetitionCategory.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "COMP_CATEGORY_ID", referencedColumnName = "CATEGORY_PK", insertable = false, updatable = false)
	private CompetitionCategory competitionCategory;

	public CompetitionCategory getCompetitionCategory() {
		return competitionCategory;
	}

	public void setCompetitionCategory(CompetitionCategory competitionCategory) {
		this.competitionCategory = competitionCategory;
	}

	@ManyToOne(targetEntity = Competition.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "COMP_ID", referencedColumnName = "COMP_ID", insertable = false, updatable = false)
	private Competition competition;

	public Competition getCompetition() {
		return competition;
	}

	public void setCompetition(Competition competition) {
		this.competition = competition;
	}
		
	
	public CompetitionText(){
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

	public int getComp_category_id() {
		return comp_category_id;
	}

	public void setComp_category_id(int comp_category_id) {
		this.comp_category_id = comp_category_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getIs_saved() {
		return is_saved;
	}

	public void setIs_saved(String is_saved) {
		this.is_saved = is_saved;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return title;
	}

}
