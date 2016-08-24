package com.msb.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.EntryComments;
import com.msb.model.PMDCompetition;
import com.msb.model.WhatIsYourTalent;
import com.msb.service.CompetitionService;
import com.msb.util.MsbUtil;

@Controller
public class CompetitionsEntryViewController {

	@Autowired
	private ServletContext servletContext;

	@Autowired
	CompetitionService competitionService;

	@RequestMapping(value = "/view/{client}/competition_textentry/{id}", method = RequestMethod.GET)
	public ModelAndView textCompetitionEntryView(@PathVariable("id") String id,
			@PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		CompetitionText competitionText = competitionService
				.getTextCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "TEXT");
		modelAndView.addObject("client", client);
		modelAndView.addObject("text_entry", competitionText);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_textentry_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_painting/{id}", method = RequestMethod.GET)
	public ModelAndView paintingCompetitionEntryView(
			@PathVariable("id") String id, @PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		CompetitionPainting painting = competitionService
				.getPaintingCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "PAINTING");
		modelAndView.addObject("client", client);
		modelAndView.addObject("painting", painting);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_painting_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_photography/{id}", method = RequestMethod.GET)
	public ModelAndView photographyCompetitionEntryView(
			@PathVariable("id") String id, @PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		PMDCompetition photography = competitionService
				.getPMDDCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "PHOTOGRAPHY");
		modelAndView.addObject("client", client);
		modelAndView.addObject("photography", photography);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_photography_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_music/{id}", method = RequestMethod.GET)
	public ModelAndView musicCompetitionEntryView(
			@PathVariable("id") String id, @PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		PMDCompetition music = competitionService
				.getPMDDCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "MUSIC");
		modelAndView.addObject("client", client);
		modelAndView.addObject("music", music);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_music_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_dance/{id}", method = RequestMethod.GET)
	public ModelAndView danceCompetitionEntryView(
			@PathVariable("id") String id, @PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		PMDCompetition dance = competitionService
				.getPMDDCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "DANCE");
		modelAndView.addObject("client", client);
		modelAndView.addObject("dance", dance);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_dance_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_dialogue/{id}", method = RequestMethod.GET)
	public ModelAndView dialogueCompetitionEntryView(
			@PathVariable("id") String id, @PathVariable("client") String client) {
		ModelAndView modelAndView = new ModelAndView();
		PMDCompetition dialogue = competitionService
				.getPMDDCompetitionSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "DIALOGUE");
		modelAndView.addObject("client", client);
		modelAndView.addObject("dialogue", dialogue);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_dialogue_view");
		return modelAndView;

	}

	@RequestMapping(value = "/view/{client}/competition_wiyt/{id}", method = RequestMethod.GET)
	public ModelAndView wiytCompetitionEntryView(@PathVariable("id") String id,
			@PathVariable("client") String client) throws IOException {
		ModelAndView modelAndView = new ModelAndView();
		WhatIsYourTalent wiyt = competitionService
				.getWhatIsYourTalentSubmission(Integer.parseInt(id));
		List<EntryComments> comments=competitionService.getEntryComments(Integer.parseInt(id), "WIYT");
		String wordDocPath = null;
		String entryTextString=null;
		if (wiyt.getEntry_type().equals("text")) {
			wordDocPath = servletContext.getRealPath("/")
					+ "user_images/Comp_Sub/WIYT/" + wiyt.getEntry_file_name();
			entryTextString=MsbUtil.readWordDocument(wordDocPath,wiyt.getEntry_file_name());
		}
		
		modelAndView.addObject("textEntryContent", entryTextString);
		modelAndView.addObject("client", client);
		modelAndView.addObject("wiyt", wiyt);
		modelAndView.addObject("comments", comments);
		modelAndView.setViewName("competition_wiyt_view");
		return modelAndView;

	}

}
