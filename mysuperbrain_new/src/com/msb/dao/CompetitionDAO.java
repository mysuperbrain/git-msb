package com.msb.dao;

import java.util.List;

import com.msb.model.Competition;
import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.EntryComments;
import com.msb.model.PMDCompetition;
import com.msb.model.WhatIsYourTalent;

public interface CompetitionDAO {

	public List<Competition> getCompetitionsByCategory(int competionCategory,String competition_by);
	
	public Competition getCompetitionDetails(int compid);
	
	public Competition loadCompetitionDetails(int compid);
	
	public Integer saveTextCompetition(CompetitionText competitionText);
	
	public boolean updateCompetition(Competition competition);
	
	public Integer getStudentTotalTextSubmissionsOfACompetition(String username,String comp_id,Integer comp_cat_id);
	
	public Integer savePainting(CompetitionPainting painting);
	
	public Integer getStudentTotalPaintSubmissionsOfACompetition(String username,String comp_id);
	
	public Integer getStudentTotalPMDCometitionSubmissionsOfACompetition(String username,String comp_id,String submission_type);
	
	public Integer getPaintingMaxID();
	
	public Integer savePMDCompetitions(PMDCompetition pmdCompetition);
	
	public Integer getPMDCompetitionMaxID();
	
	public Integer saveWhatIsYourTalent(WhatIsYourTalent  whatIsYourTalent);
	 
	public Integer getWhatIsYourTalentMaxID();
	
	public Integer getStudentTotalWiytSubmissionsCount(String username);
	
	public CompetitionText getTextCompetitionSubmission(Integer id);
	
	public CompetitionPainting getPaintingCompetitionSubmission(Integer id);
	
	public PMDCompetition getPMDCompetitionSubmission(Integer id);
	
	public WhatIsYourTalent getWhatIsYourTalentSubmission(Integer id);
	
	public boolean updateTextSubmissionPoints(Integer id,int points);
	
	public List<EntryComments> getEntryComments(int id,String entry_type);
	
	public boolean saveComment(EntryComments comments);
	
	public boolean updatePaintingSubmissionPoints(Integer id,int points);
	
	public boolean updatePMDSubmissionPoints(Integer id,int points);
	
	
	
	public boolean updateWiytSubmissionPoints(Integer id,int points);
}
 