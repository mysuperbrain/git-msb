package com.msb.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.msb.model.EntryComments;
import com.msb.model.User;
import com.msb.model.UserLikeValidation;
import com.msb.service.CompetitionService;
import com.msb.service.MailService;
import com.msb.service.UserService;
import com.msb.util.MsbUtil;
import com.msb.validator.LoginValidator;
import com.msb.validator.RegisterValidator;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private MailService mailService;

	@Autowired
	private CompetitionService competitionService;

	@Autowired
	LoginValidator userValidator;

	@Autowired
	RegisterValidator registerValidator;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		// webDataBinder.setValidator(registerValidator);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// Create a new CustomDateEditor
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		// Register it as custom editor for the Date type
		webDataBinder.registerCustomEditor(Date.class, editor);

	}

	@RequestMapping(value = "/validateLogin", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		User userData = (User) session.getAttribute("Student");
		if (userData != null)
			return new ModelAndView("index");
		else
			return new ModelAndView("login", "user", new User());

	}

	@RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") User user,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);

		if (user.getUsername() != null && !user.getUsername().isEmpty()
				&& user.getPassword() != null && !user.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			System.out.println("in submit" + user);
			String username = user.getUsername();
			String password = user.getPassword();
			User userData = userService.validateUser(username, password);

			if (userData != null) {

				if (userData.getActive() == 1) {
					session.setAttribute("Student", userData);
					if (next != null && !next.isEmpty())
						modelAndView.setViewName("redirect:" + next);
					else
						modelAndView.setViewName("redirect:/index");
					return modelAndView;
				} else {
					modelAndView.getModel().put("AuthError",
							"Please activate your account before login");
					modelAndView.setViewName("login");
					return modelAndView;
				}
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("login");
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {

		session.removeAttribute("Student");
		session.invalidate();
		return new ModelAndView("login", "user", new User());
	}

	@ResponseBody
	@RequestMapping(value = "/getpwd", method = RequestMethod.POST)
	public String getPwd(@RequestParam String userNameOrMail) {

		if (userNameOrMail != null && !userNameOrMail.isEmpty()) {
			Map<String, String> pwdmap = userService
					.getStudentPassword(userNameOrMail);
			String pwd = null;
			String mail = null;
			if (pwdmap != null && pwdmap.size() > 0) {
				Map.Entry<String, String> entry = pwdmap.entrySet().iterator()
						.next();
				mail = entry.getKey();
				pwd = entry.getValue();
				System.out.println(pwd + " " + mail);

				String SUBJECT = "Password For MySuperBrain";
				String TEXT = "Dear SuperBrain"
						+ "<br/> Password for your MySuperBrian account is<b> "
						+ pwd + "</b>";
				if (mail != null && !mail.isEmpty()) {
					mailService.sendMail(SUBJECT, TEXT, mail, false);
					return "mailsent";
				} else
					return "mailempty";

			} else {
				return "passwordempty";
			}
		} else {
			return "emptyfield";
		}

	}

	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	public ModelAndView register(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			@ModelAttribute("user") @Valid User user, BindingResult result,
			HttpSession session) throws IOException {
		registerValidator.validate(user, result);
		if (!result.hasErrors()) {

			String activation_code = MsbUtil.getActivationCode();
			user.setActivation_code(activation_code);
			boolean isStudentSaved = userService.saveStudent(user,
					photo.getInputStream());
			String subject = "Thank You For The Registration on MySuperBrain";
			if (isStudentSaved) {
				String body = MsbUtil.buildStudentRegistrationMail(user,
						activation_code);
				boolean isMailSent = mailService.sendMail(subject, body,
						user.getMail(), false);
				if (isMailSent)
					return new ModelAndView(
							"redirect:/register-landing?success=true");
				else
					return new ModelAndView(
							"redirect:/register-landing?success=false");
			} else
				return new ModelAndView(
						"redirect:/register-landing?success=false");
		} else {

			return new ModelAndView("register");
		}

	}

	@RequestMapping(value = "/studentactivation/{activationcode}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable String activationcode) {
		boolean isActivated = userService
				.activateRegisteredUser(activationcode);
		if (isActivated)
			return new ModelAndView("student-activation");
		else
			return new ModelAndView("student-activation-invalid");
	}

	@RequestMapping(value = "/user/profile", method = RequestMethod.GET)
	public ModelAndView getProfile(HttpSession session) {

		User userData = (User) session.getAttribute("Student");

		if (userData != null) {

			return new ModelAndView("profile", "user", userData);
		} else
			return new ModelAndView("login", "user", new User());

	}

	@RequestMapping(value = "/user/changepwd", method = RequestMethod.GET)
	public ModelAndView chnagePWDGet() {

		return new ModelAndView("changepwd");

	}

	@RequestMapping(value = "/user/changepwd", method = RequestMethod.POST)
	public ModelAndView chnagePWDPost(@RequestParam Map<String, String> params,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("Student");

		if (!params.get("oldpwd").equals(user.getPassword())) {
			return new ModelAndView("redirect:/user/changepwd?invalid=true");
		} else {
			user.setPassword(params.get("newpwd"));
			if (userService.changePassword(user)) {
				return new ModelAndView("redirect:/user/changepwd?success=true");
			} else {
				return new ModelAndView(
						"redirect:/user/changepwd?success=false");
			}
		}

	}

	@RequestMapping(value = "/user/edit-profile", method = RequestMethod.GET)
	public ModelAndView editProfile(HttpSession session) {

		User userData = (User) session.getAttribute("Student");
		Integer profileCompleteness = getProfileCompleteness(userData);
		if (userData != null) {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("user", userData);
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("edit-profile");
			return modelAndView;
		} else
			return new ModelAndView("login", "user", new User());

	}

	@RequestMapping(value = "/user/update-profile-picture", method = RequestMethod.POST)
	public ModelAndView updateProfile(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) throws IOException {
		User userData = (User) session.getAttribute("Student");
		byte[] image = IOUtils.toByteArray(photo.getInputStream());
		userData.setImage(image);
		if (userService.updateProfilePicture(userData)) {
			return new ModelAndView("redirect:/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/user/edit-profile?success=false");
		}

	}

	@RequestMapping(value = "/user/update-userdetails", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(
			@RequestParam Map<String, String> userdetails, HttpSession session)
			throws IOException {

		/*
		 * for (Map.Entry<String, String> entry : userdetails.entrySet()) {
		 * System.out .println(entry.getKey() + "::::::::::" +
		 * entry.getValue()); }
		 */
		User userData = (User) session.getAttribute("Student");
		userData = setUserData(userData, userdetails);
		if (userService.updateUserDetails(userData)) {
			return new ModelAndView("redirect:/user/edit-profile?success=true");
		} else {
			return new ModelAndView("redirect:/user/edit-profile?success=false");
		}

	}

	@RequestMapping(value = "/user/referafriend", method = RequestMethod.POST)
	public ModelAndView referAFriend(
			@RequestParam(value = "email", required = true) String mailString,
			HttpSession session) throws IOException {
		User userData = (User) session.getAttribute("Student");
		String SUBJECT = "MySuperBrain.com Invitation";
		String TEXT = MsbUtil.buildStudentReferralMail(userData);
		if (mailService.sendMail(SUBJECT, TEXT, mailString, true)) {
			return new ModelAndView("redirect:/index?referred=true");
		} else {
			return new ModelAndView("redirect:/index?referred=false");
		}

	}

	private User setUserData(User user, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(user, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return user;
	}

	@SuppressWarnings("unchecked")
	private Integer getProfileCompleteness(User user) {
		Integer profilePoints = 0;
		try {
			Map<String, String> userfields = BeanUtils.describe(user);
			Integer eachFieldPoints = 100 / userfields.size();
			for (Entry<String, String> entry : userfields.entrySet()) {
				if (entry.getValue() != null && !entry.getValue().isEmpty()) {
					profilePoints = profilePoints + eachFieldPoints;
				}
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return profilePoints;
	}

	@ResponseBody
	@RequestMapping(value = "/validate-user-like", method = RequestMethod.POST)
	public String validateUserLike(
			@ModelAttribute UserLikeValidation userLikeValidation,
			HttpSession session, @RequestParam("fb_login") String fbLogin) {
		User userData = (User) session.getAttribute("Student");

		if (userData != null) {
			userLikeValidation.setUsername(userData.getUsername());
			if (userService.isStudentLiked(userLikeValidation)) {
				return "already-voted";
			} else {
				userLikeValidation.setLikeDate(MsbUtil.getCurrentDate());
				if (userService.saveStudentLike(userLikeValidation)) {
					userService.updateUserPoints(
							userLikeValidation.getEntry_username(), 2);
					updateCompetitionPoints(userLikeValidation.getComp_type(),
							userLikeValidation.getEntry_id());
					return "voted";
				}
			}

		} else if (userLikeValidation.getUsername() != null && fbLogin != null
				&& fbLogin.equals("yes")) {
			System.out.println(userLikeValidation.getUsername());
			if (userService.isStudentLiked(userLikeValidation)) {
				return "already-voted";
			} else {
				userLikeValidation.setLikeDate(MsbUtil.getCurrentDate());
				if (userService.saveStudentLike(userLikeValidation)) {
					userService.updateUserPoints(
							userLikeValidation.getEntry_username(), 2);
					updateCompetitionPoints(userLikeValidation.getComp_type(),
							userLikeValidation.getEntry_id());
					return "voted";
				}
			}
		} else
			return "nouser";
		return null;

	}

	@ResponseBody
	@RequestMapping(value = "/comment-entry", method = RequestMethod.POST)
	public String commentEntry(@ModelAttribute EntryComments entryComment,
			HttpSession session) {
		User userData = (User) session.getAttribute("Student");

		if (userData != null) {
			if (competitionService.saveComment(entryComment))
				return "success";
			else
				return "failure";
		} else {
			return "nouser";
		}

	}

	private boolean updateCompetitionPoints(String comp_type, int id) {
		if (comp_type.equalsIgnoreCase("txt")) {
			competitionService.updateTextSubmissionPoints(id, 2);
			return true;
		} else if (comp_type.equalsIgnoreCase("paint")) {
			competitionService.updatePaintingSubmissionPoints(id, 2);
			return true;
		} else if (comp_type.equalsIgnoreCase("photography")
				|| comp_type.equalsIgnoreCase("music")
				|| comp_type.equalsIgnoreCase("dance")
				|| comp_type.equalsIgnoreCase("dialogue")) {
			competitionService.updatePMDSubmissionPoints(id, 2);
			return true;
		} else if (comp_type.equalsIgnoreCase("wiyt")) {
			competitionService.updateWiytSubmissionPoints(id, 2);
			return true;
		} 
		return false;
	}

}
