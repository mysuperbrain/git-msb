package com.msb.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

import com.msb.util.MsbUtil;

@Entity
@Table(name = "USER_DETAILS")
@SecondaryTables({
		@SecondaryTable(name = "USER_IMAGE", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "id", referencedColumnName = "id") }),
		@SecondaryTable(name = "STUDENT_ACTIVATION", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "student_id", referencedColumnName = "id")}), })
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String mail;
	private String name;
	private int id;
	private String mname;
	private String lname;
	private Integer gender;
	private String phone;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String school;
	private String school_code;
	private String zipcode;
	private String standard;
	private String section;
	private String city;
	private String state;
	private String country;
	private String achievements;
	private String aboutme;
	private String rolemodel;
	private int auth;
	private String txnref;
	private String guardian_mail;
	private String guardian;
	private Date reg_date;
	private Date exp_date;
	private String category;
	private String acode;
	private int login_cnt;
	private int points;
	private String reference;
	private String teacher_mail;
	private String teacher_name;
	private String ref_code;
	private Date askanexpert_date;
	private int isPremium;
	private int active;
	private int mail_verified;
	private String cpassword;
	// private UserProfileImage userProfileImage;
	// private UserActivation userActivation;
	private byte[] image;
	private String activation_code;

	public User() {
		setReg_date(MsbUtil.getCurrentDate());
		setPoints(250);
		setAuth(1);
		setExp_date(MsbUtil.getExpDt());
		setAcode("FTUSR");
	}

	/*
	 * @OneToOne(cascade = CascadeType.ALL, mappedBy = "user") public
	 * UserActivation getUserActivation() { return userActivation; }
	 * 
	 * public void setUserActivation(UserActivation userActivation) {
	 * this.userActivation = userActivation; }
	 */

	/*
	 * @OneToOne(cascade = CascadeType.ALL, mappedBy = "user") public
	 * UserProfileImage getUserProfileImage() { return userProfileImage; }
	 * 
	 * public void setUserProfileImage(UserProfileImage userProfileImage) {
	 * this.userProfileImage = userProfileImage; }
	 */

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Size(min = 8, max = 15)
	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Size(min = 8, max = 20)
	@Pattern(regexp = "^[a-zA-Z][a-zA-Z0-9._]+$")
	@Column(name = "user_name")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Email
	@Column(name = "mail")
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Size(min = 3, max = 30)
	@Pattern(regexp = "^[A-z]+$")
	@Column(name = "first_name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Size(min = 0, max = 15)
	@Column(name = "middle_name")
	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	@Size(min = 0, max = 15)
	@Column(name = "last_name")
	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	@Column(name = "gender")
	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	@Size(min = 10, max = 10)
	@Pattern(regexp = "^[0-9]+$")
	@Column(name = "phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Past
	@Column(name = "birth_date")
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	@Size(min = 3, max = 50)
	@Column(name = "school")
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Column(name = "school_code")
	public String getSchool_code() {
		return school_code;
	}

	public void setSchool_code(String school_code) {
		this.school_code = school_code;
	}

	@Column(name = "zipcode")
	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	@Column(name = "class")
	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	@Size(min = 1, max = 150)
	@Column(name = "section")
	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	@Size(min = 3, max = 30)
	@Pattern(regexp = "^[A-z]+$")
	@Column(name = "city")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "state")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "country")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "Achievements")
	public String getAchievements() {
		return achievements;
	}

	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}

	@Column(name = "about_me")
	public String getAboutme() {
		return aboutme;
	}

	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}

	@Column(name = "role_models")
	public String getRolemodel() {
		return rolemodel;
	}

	@Size(min = 0, max = 80)
	public void setRolemodel(String rolemodel) {
		this.rolemodel = rolemodel;
	}

	@Column(name = "auth")
	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Column(name = "txnref")
	public String getTxnref() {
		return txnref;
	}

	public void setTxnref(String txnref) {
		this.txnref = txnref;
	}

	@Email
	@Column(name = "guardian")
	public String getGuardian_mail() {
		return guardian_mail;
	}

	public void setGuardian_mail(String guardian_mail) {
		this.guardian_mail = guardian_mail;
	}

	@Size(min = 3, max = 30)
	@Pattern(regexp = "^[A-z ]+$")
	@Column(name = "guardian_name")
	public String getGuardian() {
		return guardian;
	}

	public void setGuardian(String guardian) {
		this.guardian = guardian;
	}

	@Column(name = "reg_date")
	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Column(name = "exp_date")
	public Date getExp_date() {
		return exp_date;
	}

	public void setExp_date(Date exp_date) {
		this.exp_date = exp_date;
	}

	@Column(name = "ctgry")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "acode")
	public String getAcode() {
		return acode;
	}

	public void setAcode(String acode) {
		this.acode = acode;
	}

	@Column(name = "login_cnt")
	public int getLogin_cnt() {
		return login_cnt;
	}

	public void setLogin_cnt(int login_cnt) {
		this.login_cnt = login_cnt;
	}

	@Column(name = "points")
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	@Size(min = 0, max = 15)
	@Column(name = "reference")
	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	@Email
	@Column(name = "teacher_mail")
	public String getTeacher_mail() {
		return teacher_mail;
	}

	public void setTeacher_mail(String teacher_mail) {
		this.teacher_mail = teacher_mail;
	}

	@Size(min = 0, max = 30)
	@Column(name = "teacher_name")
	public String getTeacher_name() {
		return teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

	@Column(name = "ref_code")
	public String getRef_code() {
		return ref_code;
	}

	public void setRef_code(String ref_code) {
		this.ref_code = ref_code;
	}

	@Column(name = "askanexpert_date")
	public Date getAskanexpert_date() {
		return askanexpert_date;
	}

	public void setAskanexpert_date(Date askanexpert_date) {
		this.askanexpert_date = askanexpert_date;
	}

	@Column(name = "ispremium")
	public int getIsPremium() {
		return isPremium;
	}

	public void setIsPremium(int isPremium) {
		this.isPremium = isPremium;
	}

	@Column(name = "active")
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	@Column(name = "mail_verified")
	public int getMail_verified() {
		return mail_verified;
	}

	public void setMail_verified(int mail_verified) {
		this.mail_verified = mail_verified;
	}

	@Size(min = 8, max = 15)
	@Transient
	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	@Column(table = "STUDENT_ACTIVATION")
	public String getActivation_code() {
		return activation_code;
	}

	public void setActivation_code(String activation_code) {
		this.activation_code = activation_code;
	}

	@Column(table = "USER_IMAGE")
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "LoginModel{" + "userName=" + username + ", name=" + name + '}';
	}

}
