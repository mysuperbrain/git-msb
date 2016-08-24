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
import javax.persistence.Transient;

@Entity
@Table(name = "competition")
public class Competition implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COMP_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int comp_id;

	@Column(name = "TITLE")
	private String title;

	@Column(name = "DESCRIPTION")
	private String description;

	@Column(name = "USER_SEGMENT")
	private int user_segment;

	@Column(name = "COMP_CATEGORY")
	private int comp_category;

	@Column(name = "LAST_DATE")
	private java.util.Date last_date;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "POSTED_DATE")
	private java.util.Date posted_date;

	@Column(name = "COMPETITION_BY")
	private String competition_by;

	@Column(name = "NO_OF_VISITS")
	private int no_of_visits;

	@Column(name = "NO_OF_ENTRIES")
	private int no_of_entries;

	@Column(name = "RULES")
	private String rules;

	@Column(name = "ORGANIZED_BY_LOGO")
	private byte[] logo;

	@Transient
	private boolean is_competition_closed;

	@ManyToOne(targetEntity = CompetitionCategory.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "COMP_CATEGORY", referencedColumnName = "CATEGORY_PK", insertable = false, updatable = false)
	private CompetitionCategory competitionCategory;

	public CompetitionCategory getCompetitionCategory() {
		return competitionCategory;
	}

	public void setCompetitionCategory(CompetitionCategory competitionCategory) {
		this.competitionCategory = competitionCategory;
	}

	@ManyToOne(targetEntity = UserSegment.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "USER_SEGMENT", referencedColumnName = "SEGMENT_PK", insertable = false, updatable = false)
	private UserSegment userSegment;

	public UserSegment getUserSegment() {
		return userSegment;
	}

	public void setUserSegment(UserSegment userSegment) {
		this.userSegment = userSegment;
	}

	public int getComp_id() {
		return comp_id;
	}

	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getUser_segment() {
		return user_segment;
	}

	public void setUser_segment(int user_segment) {
		this.user_segment = user_segment;
	}

	public int getComp_category() {
		return comp_category;
	}

	public void setComp_category(int comp_category) {
		this.comp_category = comp_category;
	}

	public java.util.Date getLast_date() {
		return last_date;
	}

	public void setLast_date(java.util.Date last_date) {
		this.last_date = last_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public java.util.Date getPosted_date() {
		return posted_date;
	}

	public void setPosted_date(java.util.Date posted_date) {
		this.posted_date = posted_date;
	}

	public String getCompetition_by() {
		return competition_by;
	}

	public void setCompetition_by(String competition_by) {
		this.competition_by = competition_by;
	}

	public int getNo_of_visits() {
		return no_of_visits;
	}

	public void setNo_of_visits(int no_of_visits) {
		this.no_of_visits = no_of_visits;
	}

	public int getNo_of_entries() {
		return no_of_entries;
	}

	public void setNo_of_entries(int no_of_entries) {
		this.no_of_entries = no_of_entries;
	}

	public String getRules() {
		return rules;
	}

	public void setRules(String rules) {
		this.rules = rules;
	}

	public byte[] getLogo() {
		return logo;
	}

	public void setLogo(byte[] logo) {
		this.logo = logo;
	}

	public boolean isIs_competition_closed() {
		return is_competition_closed;
	}

	public void setIs_competition_closed(boolean is_competition_closed) {
		this.is_competition_closed = is_competition_closed;
	}

	@Override
	public String toString() {
		return title;
	}

}
