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
@Table(name = "PANORAMA_EVENTS_SUBMISSION")
public class PMDCompetition implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "SUBMISSION_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "COMP_ID")
	private String comp_id;

	@Column(name = "USER_NAME")
	private String user_name;

	@Column(name = "ENTRY_SUMMARY")
	private String entry_summary;

	@Column(name = "SUBMIT_DATE")
	private java.util.Date submit_date;

	@Column(name = "POINTS")
	private int points;

	@Column(name = "CLIENT")
	private String client;

	@Column(name = "STATUS")
	private int status;

	@Column(name = "TITLE")
	private String title;

	@Column(name = "SUBMISSION_FILE_NAME")
	private String submission_file_name;

	@Column(name = "SUBMISSION_TYPE")
	private String submission_type;

	@Column(name = "USER_SEGMENT")
	private String user_segment;

	@ManyToOne(targetEntity = Competition.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "COMP_ID", referencedColumnName = "COMP_ID", insertable = false, updatable = false)
	private Competition competition;

	public Competition getCompetition() {
		return competition;
	}

	public void setCompetition(Competition competition) {
		this.competition = competition;
	}

	public PMDCompetition() {
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEntry_summary() {
		return entry_summary;
	}

	public void setEntry_summary(String entry_summary) {
		this.entry_summary = entry_summary;
	}

	public String getSubmission_file_name() {
		return submission_file_name;
	}

	public void setSubmission_file_name(String submission_file_name) {
		this.submission_file_name = submission_file_name;
	}

	public String getSubmission_type() {
		return submission_type;
	}

	public void setSubmission_type(String submission_type) {
		this.submission_type = submission_type;
	}

	public String getUser_segment() {
		return user_segment;
	}

	public void setUser_segment(String user_segment) {
		this.user_segment = user_segment;
	}

	@Override
	public String toString() {
		return title;
	}

}
