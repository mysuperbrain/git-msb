package com.msb.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.msb.model.Competition;
import com.msb.model.CompetitionPainting;
import com.msb.model.CompetitionText;
import com.msb.model.EntryComments;
import com.msb.model.PMDCompetition;
import com.msb.model.WhatIsYourTalent;

@Repository
@Transactional
public class CompetitionDAOImpl implements CompetitionDAO {

	@Autowired
	private SessionFactory sessionFactory;

	/*
	 * @PersistenceContext EntityManager entityManger;
	 */

	@SuppressWarnings("unchecked")
	@Override
	public List<Competition> getCompetitionsByCategory(int competionCategory,
			String competition_by) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Competition.class);
			Criterion category = Restrictions.eq("comp_category",
					competionCategory);
			Criterion status = Restrictions.eq("status", 1);

			Criterion competitionBy = Restrictions.eq("competition_by",
					competition_by);

			Criterion criterion = Restrictions.and(category, status);

			criteria.add(Restrictions.and(criterion, competitionBy));
			List<Competition> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public Competition getCompetitionDetails(int compid) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Competition) session.get(Competition.class, compid);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Competition loadCompetitionDetails(int compid) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Competition) session.load(Competition.class, compid);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Integer saveTextCompetition(CompetitionText competitionText) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(competitionText);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public boolean updateCompetition(Competition competition) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.update(competition);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Integer getStudentTotalTextSubmissionsOfACompetition(
			String username, String comp_id, Integer comp_cat_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(CompetitionText.class);
			Criterion category = Restrictions.eq("comp_category_id",
					comp_cat_id);
			Criterion comp = Restrictions.eq("comp_id", comp_id);

			Criterion user = Restrictions.eq("user_name", username);

			Criterion criterion = Restrictions.and(category, comp);

			criteria.add(Restrictions.and(criterion, user));
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer savePainting(CompetitionPainting painting) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(painting);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getStudentTotalPaintSubmissionsOfACompetition(
			String username, String comp_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(CompetitionPainting.class);

			Criterion comp = Restrictions.eq("comp_id", comp_id);

			Criterion user = Restrictions.eq("user_name", username);

			criteria.add(Restrictions.and(comp, user));
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getPaintingMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(CompetitionPainting.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			return id + 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getStudentTotalPMDCometitionSubmissionsOfACompetition(
			String username, String comp_id, String submission_type) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(PMDCompetition.class);

			Criterion comp = Restrictions.eq("comp_id", comp_id);

			Criterion user = Restrictions.eq("user_name", username);

			Criterion criterion = Restrictions.and(comp, user);

			Criterion submission = Restrictions.eq("submission_type",
					submission_type);

			criteria.add(Restrictions.and(criterion, submission));
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer savePMDCompetitions(PMDCompetition pmdCompetition) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(pmdCompetition);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getPMDCompetitionMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(PMDCompetition.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			return id + 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer saveWhatIsYourTalent(WhatIsYourTalent whatIsYourTalent) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(whatIsYourTalent);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getWhatIsYourTalentMaxID() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(WhatIsYourTalent.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			return id + 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Integer getStudentTotalWiytSubmissionsCount(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(WhatIsYourTalent.class);
			Criterion user_name = Restrictions.eq("user_name", username);
			criteria.add(user_name);
			criteria.setProjection(Projections.rowCount());
			Integer row_count = (int) (long) criteria.uniqueResult();
			System.out.println(row_count);
			return row_count;

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public CompetitionText getTextCompetitionSubmission(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (CompetitionText) session.get(CompetitionText.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public CompetitionPainting getPaintingCompetitionSubmission(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (CompetitionPainting) session.get(CompetitionPainting.class,
					id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public PMDCompetition getPMDCompetitionSubmission(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (PMDCompetition) session.get(PMDCompetition.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public WhatIsYourTalent getWhatIsYourTalentSubmission(Integer id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (WhatIsYourTalent) session.get(WhatIsYourTalent.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean updateTextSubmissionPoints(Integer id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(CompetitionText.class);
			criteria.add(Restrictions.eq("id", id));
			CompetitionText competitionText = (CompetitionText) criteria
					.uniqueResult();
			competitionText.setPoints(competitionText.getPoints() + points);
			session.update(competitionText);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EntryComments> getEntryComments(int id, String entry_type) {
		Session session = sessionFactory.getCurrentSession();
		List<EntryComments> comments = new ArrayList<EntryComments>();
		try {
			Criteria criteria = session.createCriteria(EntryComments.class);

			Criterion comp = Restrictions.eq("entry_id", id);

			Criterion user = Restrictions.eq("entry_type", entry_type);

			criteria.add(Restrictions.and(comp, user));
			comments = criteria.list();
			return comments;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveComment(EntryComments comments) {
		Session session = sessionFactory.getCurrentSession();
		session.save(comments);
		return true;
	}

	@Override
	public boolean updatePaintingSubmissionPoints(Integer id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session
					.createCriteria(CompetitionPainting.class);
			criteria.add(Restrictions.eq("id", id));
			CompetitionPainting competitionPaint = (CompetitionPainting) criteria
					.uniqueResult();
			competitionPaint.setPoints(competitionPaint.getPoints() + points);
			session.update(competitionPaint);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updatePMDSubmissionPoints(Integer id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(PMDCompetition.class);
			criteria.add(Restrictions.eq("id", id));
			PMDCompetition pmdCompetition = (PMDCompetition) criteria
					.uniqueResult();
			pmdCompetition.setPoints(pmdCompetition.getPoints() + points);
			session.update(pmdCompetition);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateWiytSubmissionPoints(Integer id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(WhatIsYourTalent.class);
			criteria.add(Restrictions.eq("id", id));
			WhatIsYourTalent wiytCompetition = (WhatIsYourTalent) criteria
					.uniqueResult();
			wiytCompetition.setPoints(wiytCompetition.getPoints() + points);
			session.update(wiytCompetition);

			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

}
