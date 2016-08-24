package com.msb.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.springframework.web.multipart.MultipartFile;

import com.msb.constants.MsbConstants;
import com.msb.model.User;

public class MsbUtil {

	public static Date getCurrentDate() {

		java.util.Date today = new java.util.Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS z");
		df.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
		String IST = df.format(today);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate = null;
		try {
			utilDate = format.parse(IST);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date currentDate = new java.sql.Date(utilDate.getTime());
		return currentDate;

	}

	public static Date getExpDt() {

		Calendar calender = Calendar.getInstance(TimeZone.getTimeZone("IST"),
				Locale.ENGLISH);
		calender.add(Calendar.YEAR, 1);
		long time = calender.getTimeInMillis();
		Date expdt = new Date(time);
		System.out.println("Expiry Date is " + expdt);
		return expdt;

	}

	public static String getActivationCode() {

		String aCode = UUID.randomUUID().toString();

		System.out.println("Activation code is : " + aCode);
		return aCode;
	}

	public static String buildStudentRegistrationMail(User user,
			String activationCode) {
		String body = "<div class=\"well\">"
				+ "<div class=\"row\"><img src=\"mysuperbrain.com/assets/logo.png\" alt=\"Logo\" height=\"120px\" width=\"120px\"></div>"
				+ "<div class=\"row\"><div class=\"col-md-1\"></div><div class=\"col-md-10\">"
				+ "<h3>Welcome to MySuperBrain "

				+ " !</h3>" + "<p>You have registered with the Username as <b>"
				+ user.getUsername()
				+ "</b></p>"
				+ "<p>Please click the below activation link to activate your account :</p>"
				+ "<a href=\"http://mysuperbrain.com/studentactivation/"
				+ activationCode
				+ "\">Activate MySuperBrain Account</a>"
				+ "<p>For future reference, we are sharing the details you	provided us with :</p>"
				+ "<br>"
				+ "<div class=\"col-md-2\"></div>"
				+ "<table>"
				+ "<thead></thead>"
				+ "<tbody>"
				+ "<tr><td>User Name :</td><td>"
				+ user.getUsername()
				+ "</td></tr>"
				+ "<tr><td>User Password :</td><td>"
				+ user.getPassword()
				+ "</td></tr>"

				+ "<tr><td>Email ID :</td><td>"
				+ user.getMail()
				+ "</td></tr>"
				+ "<tr><td>Mobile/Phone Number :</td><td>"
				+ user.getPhone()
				+ "</td></tr>"

				+ "</tbody>"
				+ "</table>"
				+ "<br>"
				+ "<p>If you need assistance or have any queries, feel free to call us up at 97013 20902</p>"
				+ "<p>You can also email us at <a href=\"#\">contact@mysuperbrain.com</a> and our team will get in touch with you as soon as possible.</p>"
				+ "<h3>All the best !</h3>"
				+ "<p>Regards,</p>"
				+ "<p>Team MSB.</p>" + "</div>" + "</div>" + "</div>";
		return body;
	}

	public static String buildStudentReferralMail(User user) {
		String TEXT = "Dear Friend,\n"
				+ "<p>As you know, I have always wanted to Discover, Improve and Showcase my skills on a global platform. It has also been the case with you. I have come across www.MySuperBrain.com which is an amazing platform for school students like us.</p> "
				+ "<p>We can participate in Quizzes, Competitions, play educational games and improve our knowledge. MSB has competitions in many areas like:</p>"
				+ "a.Writing"
				+ "<br/>"
				+ "b.Painting"
				+ "<br/>"
				+ "c.Singing"
				+ "<br/>"
				+ "d.Dance"
				+ "<br/>"
				+ "e.Projects"
				+ "<br/>"

				+ "g.Photography etc"
				+ "<br/>"
				+ "<p>Whenever we submit entries, they are open for everyone to view and vote. You, me, our families or friends, teachers and even people that we never meet or know can look at our amazing creations and support us and get us points. We can check how we fare against students from across the world. </p>"
				+ "<p>What are you waiting for? Come join me and thousands of other students from across the world and let the world know what you are capable of.</p>"
				+ "Thanks,<br/>" + user.getUsername();
		return TEXT;
	}

	public static int getCompetitionCategoryID(String categoryName) {

		if ("essay".equalsIgnoreCase(categoryName))
			return MsbConstants.WRITING_COMPETITION;
		if ("painting".equalsIgnoreCase(categoryName))
			return MsbConstants.PAINTING_COMPETITION;
		if ("project".equalsIgnoreCase(categoryName))
			return MsbConstants.PROJECT_COMPETITION;
		if ("poetry".equalsIgnoreCase(categoryName))
			return MsbConstants.POETRY_COMPETITION;
		if ("outofthebox".equalsIgnoreCase(categoryName))
			return MsbConstants.OUT_OF_THE_BOX_COMPETITION;
		if ("social".equalsIgnoreCase(categoryName))
			return MsbConstants.SOCIAL_COMPETITION;
		if ("groupskills".equalsIgnoreCase(categoryName))
			return MsbConstants.GROUP_SKILLS_COMPETITION;
		if ("photography".equalsIgnoreCase(categoryName))
			return MsbConstants.PHOTOGRAPHY_COMPETITION;
		if ("singing".equalsIgnoreCase(categoryName))
			return MsbConstants.SINGING_COMPETITION;
		if ("dance".equalsIgnoreCase(categoryName))
			return MsbConstants.DANCING_COMPETITION;
		if ("dialogue".equalsIgnoreCase(categoryName))
			return MsbConstants.DIALOGUE_COMPETITION;
		if ("storywriting".equalsIgnoreCase(categoryName))
			return MsbConstants.STORYWRITING_COMPETITION;
		if ("crafts".equalsIgnoreCase(categoryName))
			return MsbConstants.CRAFTS_COMPETITION;
		return 0;

	}

	public static boolean isCompetitionClosed(String competitionEndDate) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date competitionLastdate = null;
		try {
			competitionLastdate = df.parse(competitionEndDate);

			java.util.Date today = new java.util.Date();
			if (df.parse(df.format(today)).after(competitionLastdate)) {
				return true;
			} else
				return false;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public static File multipartToFile(MultipartFile multipart)
			throws IllegalStateException, IOException {
		File convFile = new File(multipart.getOriginalFilename());
		multipart.transferTo(convFile);
		return convFile;
	}

	public static String readWordDocument(String filepath, String filename)
			throws IOException {
		
		FileInputStream fs = null;
		StringBuilder textEntry = new StringBuilder();
		XWPFDocument documentx=null;
		HWPFDocument document=null;
		WordExtractor wordExtractor=null;
		try {
			fs = new FileInputStream(filepath);
			if (fs.available() >= 512) {
				
				if (filename.endsWith("docx")) {

					documentx = new XWPFDocument(fs);

					List<XWPFParagraph> paragraphs = documentx.getParagraphs();

					for (XWPFParagraph para : paragraphs) {
						textEntry.append("<p>" + para.getText() + "</p>");
					}
					
					
				} else if (filename.endsWith("doc")) {

					document = new HWPFDocument(fs);
					wordExtractor = new WordExtractor(document);

					String[] paragraphs = wordExtractor.getParagraphText();

					for (int i = 0; i < paragraphs.length; i++) {

						textEntry.append("<p>" + paragraphs[i] + "</p>");
					}
					
				}
				
				return textEntry.toString();
			} else {
				return "User did not provided valid content";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fs != null)
				fs.close();
			if(documentx!=null)
				documentx.close();
			if(wordExtractor!=null)
				wordExtractor.close();
			
		}
		return null;
	}
	public static boolean isDateIsToday(String likeDate) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date likedate = null;
		try {
			likedate = df.parse(likeDate);

			java.util.Date today = new java.util.Date();
			if (df.parse(df.format(today)).equals(likedate)) {
				return true;
			} else
				return false;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

}
