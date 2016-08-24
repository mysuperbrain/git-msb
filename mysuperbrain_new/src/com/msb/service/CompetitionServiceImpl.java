package com.msb.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.CompetitionDAO;
import com.msb.model.Competition;
import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.EntryComments;
import com.msb.model.PMDCompetition;
import com.msb.model.WhatIsYourTalent;
import com.msb.util.MsbUtil;

@Service
public class CompetitionServiceImpl implements CompetitionService {

	@Autowired
	CompetitionDAO competitiondao;

	@Override
	public List<Competition> getCompetitionsByCategory(int competionCategory,
			String competition_by) {

		List<Competition> competitions = competitiondao
				.getCompetitionsByCategory(competionCategory, competition_by);
		Iterator<Competition> iterator = competitions.iterator();
		while (iterator.hasNext()) {
			Competition competition = (Competition) iterator.next();
			competition
					.setIs_competition_closed(MsbUtil
							.isCompetitionClosed(competition.getLast_date()
									.toString()));

		}
		return competitions;

	}

	@Override
	public Competition getCompetitionDetails(int compid) {
		Competition competition = competitiondao.getCompetitionDetails(compid);
		competition.setIs_competition_closed(MsbUtil
				.isCompetitionClosed(competition.getLast_date().toString()));
		return competition;
	}

	@Override
	public Competition loadCompetitionDetails(int compid) {

		return competitiondao.loadCompetitionDetails(compid);
	}

	@Override
	public Integer saveTextCompetition(CompetitionText competitionText) {

		return competitiondao.saveTextCompetition(competitionText);

	}

	@Override
	public boolean updateCompetitionVisits(Competition competition) {

		return competitiondao.updateCompetition(competition);
	}

	@Override
	public boolean updateCompetitionTotalEntries(Competition competition) {

		return competitiondao.updateCompetition(competition);
	}

	@Override
	public Integer getStudentTotalTextSubmissionsOfACompetition(
			String username, String comp_id, Integer comp_cat_id) {

		return competitiondao.getStudentTotalTextSubmissionsOfACompetition(
				username, comp_id, comp_cat_id);
	}

	@Override
	public Integer savePainting(CompetitionPainting painting) {

		return competitiondao.savePainting(painting);
	}

	@Override
	public Integer getStudentTotalPaintSubmissionsOfACompetition(
			String username, String comp_id) {

		return competitiondao.getStudentTotalPaintSubmissionsOfACompetition(
				username, comp_id);
	}

	@Override
	public Integer getPaintingMaxID() {

		return competitiondao.getPaintingMaxID();
	}

	@Override
	public Integer getStudentTotalPhotographySubmissionsOfACompetition(
			String username, String comp_id, String submission_type) {

		return competitiondao
				.getStudentTotalPMDCometitionSubmissionsOfACompetition(
						username, comp_id, submission_type);
	}

	@Override
	public Integer savePhotography(PMDCompetition photography) {

		return competitiondao.savePMDCompetitions(photography);
	}

	@Override
	public Integer getPhotographyMaxID() {

		return competitiondao.getPMDCompetitionMaxID();
	}

	@Override
	public Integer saveDance(PMDCompetition dance) {
		return competitiondao.savePMDCompetitions(dance);
	}

	@Override
	public Integer getDanceMaxID() {
		return competitiondao.getPMDCompetitionMaxID();
	}

	@Override
	public Integer getStudentTotalDanceSubmissionsOfACompetition(
			String username, String comp_id, String submission_type) {
		return competitiondao
				.getStudentTotalPMDCometitionSubmissionsOfACompetition(
						username, comp_id, submission_type);
	}

	@Override
	public Integer getStudentTotalMusicSubmissionsOfACompetition(
			String username, String comp_id, String submission_type) {

		return competitiondao
				.getStudentTotalPMDCometitionSubmissionsOfACompetition(
						username, comp_id, submission_type);
	}

	@Override
	public Integer saveMuisc(PMDCompetition muisc) {
		return competitiondao.savePMDCompetitions(muisc);
	}

	@Override
	public Integer getMiscMaxID() {

		return competitiondao.getPMDCompetitionMaxID();
	}

	@Override
	public Integer getStudentTotalDialogueSubmissionsOfACompetition(
			String username, String comp_id, String submission_type) {
		return competitiondao
				.getStudentTotalPMDCometitionSubmissionsOfACompetition(
						username, comp_id, submission_type);
	}

	@Override
	public Integer saveDialogue(PMDCompetition dialogue) {
		return competitiondao.savePMDCompetitions(dialogue);
	}

	@Override
	public Integer getDialogueMaxID() {
		return competitiondao.getPMDCompetitionMaxID();
	}

	@Override
	public Integer saveWhatIsYourTalent(WhatIsYourTalent whatIsYourTalent) {
		return competitiondao.saveWhatIsYourTalent(whatIsYourTalent);
	}

	@Override
	public Integer getWhatIsYourTalentMaxID() {
		return competitiondao.getWhatIsYourTalentMaxID();
	}

	@Override
	public Integer getStudentTotalWiytSubmissionsCount(String username) {
		return competitiondao.getStudentTotalWiytSubmissionsCount(username);
	}

	@Override
	public CompetitionText getTextCompetitionSubmission(Integer id) {

		return competitiondao.getTextCompetitionSubmission(id);
	}

	@Override
	public CompetitionPainting getPaintingCompetitionSubmission(Integer id) {
		return competitiondao.getPaintingCompetitionSubmission(id);
	}

	@Override
	public PMDCompetition getPMDDCompetitionSubmission(Integer id) {
		return competitiondao.getPMDCompetitionSubmission(id);
	}

	@Override
	public WhatIsYourTalent getWhatIsYourTalentSubmission(Integer id) {
		return competitiondao.getWhatIsYourTalentSubmission(id);
	}

	@Override
	public boolean updateTextSubmissionPoints(Integer id, int points) {

		return competitiondao.updateTextSubmissionPoints(id, points);
	}

	@Override
	public List<EntryComments> getEntryComments(int id, String entry_type) {

		return competitiondao.getEntryComments(id, entry_type);
	}

	@Override
	public boolean saveComment(EntryComments comments) {

		return competitiondao.saveComment(comments);
	}

	@Override
	public boolean updatePaintingSubmissionPoints(Integer id, int points) {
		return competitiondao.updatePaintingSubmissionPoints(id, points);
	}

	@Override
	public boolean updatePMDSubmissionPoints(Integer id, int points) {
		return competitiondao.updatePMDSubmissionPoints(id, points);
	}

	@Override
	public boolean updateWiytSubmissionPoints(Integer id, int points) {
		return competitiondao.updateWiytSubmissionPoints(id, points);
	}

}
