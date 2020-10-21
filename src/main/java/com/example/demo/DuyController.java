package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.ConnectData.ConnectionDAO;
import com.example.ConnectData.FormDAO;
import com.example.model.Job;

@Controller
public class DuyController {

	Integer idUser ;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	private String form() {
		return "form-login";
	}

	@RequestMapping(value = "/form", method = RequestMethod.POST)
	private String submitForm(HttpServletRequest request,HttpSession session,Model model) {
		String account = request.getParameter("account");
		String pass = request.getParameter("password");
		int id = FormDAO.getIdUser(account, pass);
		System.out.println("ID: "+id);
		if (id > 0) {
			session.setAttribute("IDUSER", id);
			idUser = id;
			session.setAttribute("MENU", ConnectionDAO.getMenuByIdUser(id));
			return "home";
		} else {
			model.addAttribute("message","Check Account OR PassWord !!!!");
			return "form-login";
		}
	}
	
	@RequestMapping(value = "/form-create", method = RequestMethod.POST)
	private String formCreate(HttpServletRequest request,Model model) {
		String account = request.getParameter("account");
		String pass = request.getParameter("password");
		
		boolean flag = FormDAO.createAccount(account,pass);
		boolean flag2 =FormDAO.addRole(FormDAO.getIdUser(account, pass));
		if(flag==true && flag2==true) {
			model.addAttribute("message","Create New Account Success");
			
		}
		return "form-login";
	}
	 
	@RequestMapping(value = "/create-job", method = RequestMethod.GET)
	private String createjob(Model model, @Validated @ModelAttribute("Job") Job job, BindingResult errors,HttpSession session) {
		model.addAttribute("MENU", session.getAttribute("MENU"));
		model.addAttribute("message", "");
		return "create-job";
	}

	@RequestMapping(value = "/create-job", method = RequestMethod.POST)
	private String createJobPost(Model model, @Validated @ModelAttribute("Job") Job job, BindingResult errors,
			HttpSession session) {

		if (errors.hasErrors()) {
			model.addAttribute("message", "Please Fix Errors (T^T)");
			return "create-job";
		} else {
			model.addAttribute("message", "Congratulation (>.<)");
			ConnectionDAO.insertNewJob(idUser, job.getTitle(), job.getDes(), job.getImg(),
					java.time.LocalDate.now().toString(), job.getTimeEnd(), "New");

			int id = ConnectionDAO.getIdJob(job.getDes());
			ConnectionDAO.InsertPhase(id, job.getId1(), 1, "y", "n");
			ConnectionDAO.InsertPhase(id, job.getId2(), 2, "n", "n");
			ConnectionDAO.InsertPhase(id, job.getId3(), 3, "n", "n");
			ConnectionDAO.InsertPhase(id, job.getId4(), 4, "n", "n");
			return "home";
		}
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	private String home() {
		return "home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
	private String showList(Model model) {
		// Trả Về 1 ArrayList chứa các Job phải làm trên homepage
		model.addAttribute("MyJob", ConnectionDAO.getMyjob(idUser));
		return "home";
	}
	
	@RequestMapping(value = "/show-List-job", method = RequestMethod.GET)
	private String listJob(Model model) {
		model.addAttribute("MyJob", ConnectionDAO.getMyjob(idUser));
		return "/show-List-job";
	}

	@RequestMapping(value = "/submitjob",method = RequestMethod.POST)
	private String submit(HttpServletRequest request,Model model) {
		int idOfJob = Integer.parseInt(request.getParameter("idJob"));
		int myPhase = ConnectionDAO.getPhaseDetailById(idUser, idOfJob);
		System.out.print(idOfJob);
		ConnectionDAO.updateFlag(idOfJob, idUser);
		ConnectionDAO.updateFlagNext(idOfJob, myPhase);
		ConnectionDAO.updateStatus(idOfJob, myPhase);
		model.addAttribute("MyJob", ConnectionDAO.getMyjob(idUser));
		return "/show-List-job";
	}

	@RequestMapping(value = "/revenue", method = RequestMethod.GET)
	private String Revenue() {
		return "revenue";
	}

	@RequestMapping(value = "/revenue", method = RequestMethod.POST)
	private void myRevenue(HttpServletRequest request, Model model) {
		String start = request.getParameter("day_start");
		String end = request.getParameter("day_end");
		System.out.println(start);
		System.out.println(end);
		model.addAttribute("MyRevenue", ConnectionDAO.revenueJob(idUser, start, end));
	}
}
