package com.msb.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.Competition;
import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.PMDCompetition;
import com.msb.model.User;
import com.msb.model.WhatIsYourTalent;
import com.msb.service.CompetitionService;
import com.msb.service.UserService;
import com.msb.util.MsbUtil;
import com.msb.validator.TextCompetitionValidator;

@Controller
public class CompetitionsController {

	@Autowired
	private ServletContext servletContext;

	@Autowired
	CompetitionService competitionService;
	
	@Autowired
	UserService userService;

	@Autowired
	TextCompetitionValidator textCompetitionValidator;

	@RequestMapping(value = "/competitions", method = RequestMethod.GET)
	public String competitions() {
		return "competitions";
	}

	@RequestMapping(value = "/competition_list", method = RequestMethod.GET)
	public String competitionsList() {
		return "competition_list";
	}

	@RequestMapping(value = "/competitions/{client}", method = RequestMethod.GET)
	public ModelAndView competitions(
			@PathVariable(value = "client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("client", client);
		modelAndView.setViewName("competitions");
		return modelAndView;

	}

	@RequestMapping(value = "/user/competition_painting_saved", method = RequestMethod.GET)
	public String paintingCompetitionSaved() {
		return "competition_painting_saved";
	}

	@RequestMapping(value = "/user/text-competition-saved", method = RequestMethod.GET)
	public String textCompetitionSaved() {
		return "competition_text_saved";
	}

	@RequestMapping(value = "/user/competition_photography_saved", method = RequestMethod.GET)
	public String photographyCompetitionSaved() {
		return "competition_photography_saved";
	}

	@RequestMapping(value = "/user/competition_dance_saved", method = RequestMethod.GET)
	public String danceCompetitionSaved() {
		return "competition_photography_saved";
	}

	@RequestMapping(value = "/user/competition_singing_saved", method = RequestMethod.GET)
	public String singingCompetitionSaved() {
		return "competition_singing_saved";
	}

	@RequestMapping(value = "/user/competition_dialogue_saved", method = RequestMethod.GET)
	public String dialogueCompetitionSaved() {
		return "competition_dialogue_saved";
	}

	@RequestMapping(value = "/user/what_is_your_talent_saved", method = RequestMethod.GET)
	public String wiytCompetitionSaved() {
		return "what_is_your_talent_saved";
	}

	@RequestMapping(value = "/{competition_by}/{competition_type}/competition-list", method = RequestMethod.GET)
	public ModelAndView getCompetitions(
			@PathVariable(value = "competition_type") String competition_type,
			@PathVariable(value = "competition_by") String competition_by) {

		List<Competition> competitions = competitionService
				.getCompetitionsByCategory(
						MsbUtil.getCompetitionCategoryID(competition_type),
						competition_by);

		if (competitions != null && competitions.size() > 0) {
			ModelAndView modelAndView = new ModelAndView();

			modelAndView.addObject("competitionList", competitions);
			modelAndView.setViewName("competition_list");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competition_list?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_text/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView competitionsSubmissionForm(
			@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);
			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalTextSubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()),
								competition.getComp_category());
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}
			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_text");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_paint/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView paintingSubmissionForm(@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);

			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalPaintSubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()));
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}

			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_paint");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_photography/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView photographySubmissionForm(
			@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);

			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalPhotographySubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()),
								"Photography");
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}

			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_photography");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_dance/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView danceSubmissionForm(@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);

			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalDanceSubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()),
								"Dance");
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}

			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_dance");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_singing/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView singingSubmissionForm(@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);

			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalMusicSubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()),
								"Music");
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}

			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_singing");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/competition_dialogue/{id}", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView dialogueSubmissionForm(@PathVariable("id") String id,
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		Competition competition = competitionService
				.getCompetitionDetails(Integer.parseInt(id));
		if (competition != null) {
			User userData = (User) session.getAttribute("Student");
			competition.setNo_of_visits(competition.getNo_of_visits() + 1);
			competitionService.updateCompetitionVisits(competition);

			if (!competition.isIs_competition_closed()) {
				Integer user_total_competition_submissions = competitionService
						.getStudentTotalDialogueSubmissionsOfACompetition(
								userData.getUsername(),
								String.valueOf(competition.getComp_id()),
								"Dialogue");
				if (user_total_competition_submissions > 3)
					modelAndView.addObject("submissions_exceeded", true);
				else
					modelAndView.addObject("submissions_exceeded", false);
			}

			modelAndView.addObject("client", client);
			modelAndView.addObject("competition", competition);
			modelAndView.setViewName("competition_dialogue");
			return modelAndView;
		} else
			return new ModelAndView("redirect:/competitions?success=false");

	}

	@RequestMapping(value = "/user/{client}/what_is_your_talent", method = {
			RequestMethod.POST, RequestMethod.GET })
	public ModelAndView wiytSubmissionForm(
			@PathVariable("client") String client, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();

		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalWiytSubmissionsCount(userData.getUsername());
		if (user_total_competition_submissions >= 3)
			modelAndView.addObject("submissions_exceeded", true);
		else
			modelAndView.addObject("submissions_exceeded", false);

		modelAndView.addObject("client", client);

		modelAndView.setViewName("what_is_your_talent");
		return modelAndView;

	}

	@RequestMapping(value = "/user/submit-text-competition", method = RequestMethod.POST)
	public ModelAndView submitCompetitionText(
			@ModelAttribute("competitionText") CompetitionText competitionText,
			HttpSession session, BindingResult result) throws IOException {
		textCompetitionValidator.validate(competitionText, result);
		if (!result.hasErrors()) {
			User userData = (User) session.getAttribute("Student");

			Integer user_total_competition_submissions = competitionService
					.getStudentTotalTextSubmissionsOfACompetition(
							userData.getUsername(),
							String.valueOf(competitionText.getComp_id()),
							competitionText.getComp_category_id());
			if (user_total_competition_submissions >= 3)
				return new ModelAndView(
						"redirect://user/text-competition-saved?success=false&exceeded=true");
			else {
				competitionText.setUser_name(userData.getUsername());
				Integer id = competitionService
						.saveTextCompetition(competitionText);
				if (id != 0) {
					Competition competition = competitionService
							.getCompetitionDetails(Integer
									.parseInt(competitionText.getComp_id()));
					competition
							.setNo_of_entries(competition.getNo_of_entries() + 1);
					competitionService.updateCompetitionVisits(competition);
					userData.setPoints(userData.getPoints()+20);
					userService.updateUserDetails(userData);
					return new ModelAndView(
							"redirect://user/text-competition-saved?success=true&id="
									+ id);
				} else
					return new ModelAndView(
							"redirect://user/text-competition-saved?success=false");
			}
		} else {
			return new ModelAndView("redirect://user/"
					+ competitionText.getClient() + "/competition_text/"
					+ competitionText.getComp_id()
					+ "?success=false&input=false");
		}

	}

	@RequestMapping(value = "/user/submit-painting-competition", method = RequestMethod.POST)
	public ModelAndView submitPainting(
			@ModelAttribute("competitionText") CompetitionPainting painting,
			HttpSession session,
			@RequestParam(value = "paint", required = true) MultipartFile paint)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalPaintSubmissionsOfACompetition(
						userData.getUsername(),
						String.valueOf(painting.getComp_id()));

		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/competition_painting_saved?success=false&exceeded=true");
		else {

			painting.setUser_name(userData.getUsername());
			painting.setSub_id(painting.getComp_id() + "_" + userData.getId());
			String filename = userData.getUsername() + "_"
					+ competitionService.getPaintingMaxID() + "."
					+ paint.getContentType().toString().substring(6);
			painting.setImage_path(filename);
			Integer id = competitionService.savePainting(painting);

			if (id != 0) {

				uploadFile(filename, paint, painting.getComp_id());
				Competition competition = competitionService
						.getCompetitionDetails(Integer.parseInt(painting
								.getComp_id()));
				competition
						.setNo_of_entries(competition.getNo_of_entries() + 1);
				competitionService.updateCompetitionVisits(competition);
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/competition_painting_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/competition_painting_saved?success=false");
		}

	}

	@RequestMapping(value = "/user/submit-photography-competition", method = RequestMethod.POST)
	public ModelAndView submitPhotography(
			@ModelAttribute("photography") PMDCompetition photography,
			HttpSession session,
			@RequestParam(value = "photo", required = true) MultipartFile photo)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalPhotographySubmissionsOfACompetition(
						userData.getUsername(),
						String.valueOf(photography.getComp_id()), "Photography");

		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/competition_photography_saved?success=false&exceeded=true");
		else {

			photography.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getPhotographyMaxID() + "."
					+ photo.getContentType().toString().substring(6);
			photography.setSubmission_file_name(filename);
			Integer id = competitionService.savePhotography(photography);

			if (id != 0) {

				uploadFile(filename, photo, "Photography");
				Competition competition = competitionService
						.getCompetitionDetails(Integer.parseInt(photography
								.getComp_id()));
				competition
						.setNo_of_entries(competition.getNo_of_entries() + 1);
				competitionService.updateCompetitionVisits(competition);
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/competition_photography_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/competition_photography_saved?success=false");
		}

	}

	@RequestMapping(value = "/user/submit-dance-competition", method = RequestMethod.POST)
	public ModelAndView submitDance(
			@ModelAttribute("dance") PMDCompetition dance,
			HttpSession session,
			@RequestParam(value = "dance_video", required = true) MultipartFile dance_video)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalDanceSubmissionsOfACompetition(
						userData.getUsername(),
						String.valueOf(dance.getComp_id()), "Dance");

		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/competition_dance_saved?success=false&exceeded=true");
		else {

			dance.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getDanceMaxID() + "."
					+ dance_video.getOriginalFilename().split("\\.")[1];
			dance.setSubmission_file_name(filename);
			Integer id = competitionService.saveDance(dance);

			if (id != 0) {
				uploadFile(filename, dance_video, "Dance");
				Competition competition = competitionService
						.getCompetitionDetails(Integer.parseInt(dance
								.getComp_id()));
				competition
						.setNo_of_entries(competition.getNo_of_entries() + 1);
				competitionService.updateCompetitionVisits(competition);
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/competition_dance_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/competition_dance_saved?success=false");
		}

	}

	@RequestMapping(value = "/user/submit-singing-competition", method = RequestMethod.POST)
	public ModelAndView submitSinging(
			@ModelAttribute("music") PMDCompetition music,
			HttpSession session,
			@RequestParam(value = "music_video", required = true) MultipartFile music_video)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalMusicSubmissionsOfACompetition(
						userData.getUsername(),
						String.valueOf(music.getComp_id()), "Music");

		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/competition_singing_saved?success=false&exceeded=true");
		else {

			music.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getDanceMaxID() + "."
					+ music_video.getOriginalFilename().split("\\.")[1];
			music.setSubmission_file_name(filename);
			Integer id = competitionService.saveMuisc(music);

			if (id != 0) {
				uploadFile(filename, music_video, "Music");
				Competition competition = competitionService
						.getCompetitionDetails(Integer.parseInt(music
								.getComp_id()));
				competition
						.setNo_of_entries(competition.getNo_of_entries() + 1);
				competitionService.updateCompetitionVisits(competition);
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/competition_singing_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/competition_singing_saved?success=false");
		}

	}

	@RequestMapping(value = "/user/submit-dialogue-competition", method = RequestMethod.POST)
	public ModelAndView submitDialogue(
			@ModelAttribute("dialogue") PMDCompetition dialogue,
			HttpSession session,
			@RequestParam(value = "dialogue_video", required = true) MultipartFile dialogue_video)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalDialogueSubmissionsOfACompetition(
						userData.getUsername(),
						String.valueOf(dialogue.getComp_id()), "Dialogue");

		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/competition_dialogue_saved?success=false&exceeded=true");
		else {

			dialogue.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getDanceMaxID() + "."
					+ dialogue_video.getOriginalFilename().split("\\.")[1];
			dialogue.setSubmission_file_name(filename);
			Integer id = competitionService.saveDialogue(dialogue);

			if (id != 0) {
				uploadFile(filename, dialogue_video, "Dialogue");
				Competition competition = competitionService
						.getCompetitionDetails(Integer.parseInt(dialogue
								.getComp_id()));
				competition
						.setNo_of_entries(competition.getNo_of_entries() + 1);
				competitionService.updateCompetitionVisits(competition);
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/competition_dialogue_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/competition_dialogue_saved?success=false");
		}

	}

	@RequestMapping(value = "/user/submit-wiyt-competition", method = RequestMethod.POST)
	public ModelAndView submitWhatIsYourTalent(
			@ModelAttribute("wiyt") WhatIsYourTalent wiyt,
			HttpSession session,
			@RequestParam(value = "wiyt_attachment", required = true) MultipartFile wiyt_attachment)
			throws IOException {
		User userData = (User) session.getAttribute("Student");

		Integer user_total_competition_submissions = competitionService
				.getStudentTotalWiytSubmissionsCount(userData.getUsername());
		if (user_total_competition_submissions >= 3)
			return new ModelAndView(
					"redirect://user/what_is_your_talent_saved?success=false&exceeded=true");
		else {

			wiyt.setUser_name(userData.getUsername());

			String filename = userData.getUsername() + "_"
					+ competitionService.getWhatIsYourTalentMaxID() + "."
					+ wiyt_attachment.getOriginalFilename().split("\\.")[1];
			wiyt.setEntry_file_name(filename);
			Integer id = competitionService.saveWhatIsYourTalent(wiyt);

			if (id != 0) {
				uploadFile(filename, wiyt_attachment, "WIYT");
				userData.setPoints(userData.getPoints()+20);
				userService.updateUserDetails(userData);
				return new ModelAndView(
						"redirect://user/what_is_your_talent_saved?success=true&id="
								+ id);
			} else
				return new ModelAndView(
						"redirect://user/what_is_your_talent_saved?success=false");
		}

	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;

	}

	private void uploadFile(String filename, MultipartFile image,
			String competition) {
		File image_path = new File(servletContext.getRealPath("/")
				+ "user_images/Comp_Sub/" + competition + "/" + filename);
		image_path.getParentFile().mkdirs();
		try {
			FileUtils.writeByteArrayToFile(image_path, image.getBytes());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
