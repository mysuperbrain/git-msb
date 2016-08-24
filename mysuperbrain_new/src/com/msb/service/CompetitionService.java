package com.msb.service;

import java.util.List;

import com.msb.model.Competition;
import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.EntryComments;
import com.msb.model.PMDCompetition;
import com.msb.model.WhatIsYourTalent;

public interface CompetitionService {

	public List<Competition> getCompetitionsByCategory(int competionCategory,
			String competition_by);

	public Competition getCompetitionDetails(int compid);

	public Competition loadCompetitionDetails(int compid);

	public Integer saveTextCompetition(CompetitionText competitionText);

	public boolean updateCompetitionVisits(Competition competition);

	public boolean updateCompetitionTotalEntries(Competition competition);

	public Integer getStudentTotalTextSubmissionsOfACompetition(
			String username, String comp_id, Integer comp_cat_id);

	public Integer savePainting(CompetitionPainting painting);

	public Integer getStudentTotalPaintSubmissionsOfACompetition(
			String username, String comp_id);

	public Integer getPaintingMaxID();

	public Integer getStudentTotalPhotographySubmissionsOfACompetition(
			String username, String comp_id, String submission_type);

	public Integer savePhotography(PMDCompetition photography);

	public Integer getPhotographyMaxID();

	public Integer saveDance(PMDCompetition dance);

	public Integer getDanceMaxID();

	public Integer getStudentTotalDanceSubmissionsOfACompetition(
			String username, String comp_id, String submission_type);

	public Integer getStudentTotalMusicSubmissionsOfACompetition(
			String username, String comp_id, String submission_type);

	public Integer saveMuisc(PMDCompetition music);

	public Integer getMiscMaxID();

	public Integer getStudentTotalDialogueSubmissionsOfACompetition(
			String username, String comp_id, String submission_type);

	public Integer saveDialogue(PMDCompetition dialogue);

	public Integer getDialogueMaxID();
	
	public Integer saveWhatIsYourTalent(WhatIsYourTalent  whatIsYourTalent);
	 
	public Integer getWhatIsYourTalentMaxID();
	
	public Integer getStudentTotalWiytSubmissionsCount(String username);
	
	public CompetitionText getTextCompetitionSubmission(Integer id);
	
	public CompetitionPainting getPaintingCompetitionSubmission(Integer id);
	
	public PMDCompetition getPMDDCompetitionSubmission(Integer id);
	
	
	
	public WhatIsYourTalent getWhatIsYourTalentSubmission(Integer id);
	
	public boolean updateTextSubmissionPoints(Integer id,int points);

	
	public List<EntryComments> getEntryComments(int id,String entry_type);
	
	public boolean saveComment(EntryComments comments);
	
	public boolean updatePaintingSubmissionPoints(Integer id,int points);
	
	public boolean updatePMDSubmissionPoints(Integer id,int points);
	
	public boolean updateWiytSubmissionPoints(Integer id,int points);
}
