package com.klef.jfsd.springboot.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Administrator;
import com.klef.jfsd.springboot.model.Donar;
import com.klef.jfsd.springboot.model.Donations;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.model.Volunteer;
import com.klef.jfsd.springboot.service.AdministratorService;
import com.klef.jfsd.springboot.service.DonarService;
import com.klef.jfsd.springboot.service.DonationsService;
import com.klef.jfsd.springboot.service.EmailSendingService;
import com.klef.jfsd.springboot.service.ManagerService;
import com.klef.jfsd.springboot.service.VolunteerService;

@Controller
public class ClientController 
{
	@Autowired 
	private AdministratorService administratorService;
	
	@Autowired
	private VolunteerService volunteerService;
	
	@Autowired
	private DonarService donarService;
	
	@Autowired
	private DonationsService donationsService;
	
	@Autowired
	private ManagerService managerService;
	
	@Autowired
	private EmailSendingService senderService;  
	
	@EventListener()
	//====================================================================>
	
	@GetMapping("/")
	public ModelAndView HomePage(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("HomePage/HomePage");
		HttpSession session=request.getSession();
		int donarscount=donarService.getdonarscount();
		int donationscount=donationsService.getdonationscount();
		session.setAttribute("donarscount",donarscount);
		session.setAttribute("donationscount",donationscount);
		return mv;
	}

	
	@GetMapping("/AdminHome")
	public String AdminHome()
	{
		return "AdminHome/AdminHome";
	}
	
	@GetMapping("/ManagerHome")
	public String ManagerHome()
	{
		return "ManagerHome/ManagerHome";
	}
	
	@GetMapping("/VolunteerHome")
	public String VolunteerHome()
	{
		return "VolunteerHome/VolunteerHome";
	}
	
	@GetMapping("/PasswordChangeSuccess")
	public String VolunteerValidateOTP()
	{
		return "PasswordChangeSuccess/PasswordChangeSuccess";
	}
	
	@GetMapping("/DVO")
	public String DVO()
	{
		return "DonarValidateOTP/DonarValidateOTP";
	}
	

	
	
	
	
	//Admin Login=======================================================>
	
	@GetMapping("/AdminLogin")
	public ModelAndView AdminLogin()
	{
		ModelAndView mv=new ModelAndView("AdminLogin/AdminLogin");
		return mv;
	}
	
	@PostMapping("/AdminLoginVerification")
	public ModelAndView AdminLoginVerification(HttpServletRequest request)
	{
		
		
		String email=request.getParameter("administratoremail");
		String password=request.getParameter("administratorpassword");
		
		Administrator administrator=administratorService.AdminLoginVerification(email, password);
		
		if(administrator!=null)
		{
			ModelAndView mv=new ModelAndView("AdminHome/AdminHome");
			String fullname=administratorService.getfullname(email);
			HttpSession session=request.getSession();
			session.setAttribute("fullname",fullname);
			
			return mv;
			
		}
		else
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("AdminLogin/AdminLogin");
			mv.addObject("msg","Incorrect Credentials");
			return mv;
		}
		
			
	}
	
	
	//Admin Adding Managers=======================================>
	
	@GetMapping("/AdminAddingManagers")
	public ModelAndView AdminAddingManagers()
	{
		ModelAndView mv= new ModelAndView("AdminAddingManagers/AdminAddingManagers","managers",new Manager());
		return mv;
	}
	
		
	@PostMapping("/AddingManagers")
	public ModelAndView AddingVManagers(@ModelAttribute("managers")Manager manager)
	{
		ModelAndView mv=new ModelAndView();
		List<Manager> managers=managerService.VerifyDuplicates(manager.getEmailid(),manager.getContactno(),manager.getBranch());
		if(managers.size()>0)
		{
			mv.setViewName("AdminAddingManagers/AdminAddingManagers");
			mv.addObject("duplicateerror","Duplicate Account");
		}
		else
		{
			managerService.AddingManagers(manager);
			mv.setViewName("AdminAddingManagersSuccess/AdminAddingManagersSuccess");
			
		    String manageremail = manager.getEmailid();
			
		    senderService.sendEmail(manageremail,"Congratulations & Welcome to Help India NGO","Dear "+manager.getFullname()+",\n\nCongratulations!\n\nWe are pleased to welcome you as the newest team member at Help India NGO and we hope you find the role of REGION MANAGER at "+manager.getBranch()+" to be meaningful and rewarding.\n\nYour Default Credentials are:\nEmail: "+manager.getEmailid()+"\nContact no: "+manager.getContactno()+"\nPassword:"+manager.getPassword()+"\nYou can reset your password at anytime.\n\nKind regards,\nNithin Chiguru.");
		  
		    
		}
		
			
		return mv;
	}
	
	
	
	
	//Admin Viewing Managers=======================================================>
	
	@GetMapping("/viewallbranchmanagers")
	public ModelAndView viewallbranchmanagers()
	{
		ModelAndView mv=new ModelAndView("ViewManagers/ViewManagers");
		List<Manager> managerslist=administratorService.viewallbranchmanagers();
		mv.addObject("managerslist",managerslist);
		return mv;
	}
	
	//Admin Viewing Volunteers========================================================>
	
	@GetMapping("/AdminViewingVolunteers")
	public ModelAndView AdminViewingVolunteers()
	{
		ModelAndView mv=new ModelAndView("AdminSelectingBranch/AdminSelectingBranch");
		return mv;
	}
	
	@PostMapping("/ViewingVolunteers")
	public ModelAndView ViewingVolunteers(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("AdminViewingBranchVolunteers/AdminViewingBranchVolunteers");	
		
		String[] adminchoosingvolunteerbranch=request.getParameterValues("branch");
		
		
		List<Volunteer> volunteerslist=administratorService.viewbranchvolunteers(adminchoosingvolunteerbranch);	
		mv.addObject("volunteerslist",volunteerslist);
		return mv;
	}
	
		
	//Manager Login=======================================================>
		
	@GetMapping("/ManagerLogin")
	public ModelAndView ManagerLogin()
	{
		ModelAndView mv=new ModelAndView("ManagerLogin/ManagerLogin");
		return mv;
	}
	
	@PostMapping("/ManagerLoginVerification")
	public ModelAndView ManagerLoginVerification(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String email=request.getParameter("manageremail");
		String password=request.getParameter("managerpassword");
		
		Manager manager=managerService.ManagerLoginVerification(email, password);
		
		if(manager!=null)
		{
			mv.setViewName("ManagerHome/ManagerHome");
			HttpSession session =request.getSession();
			
			String branch=managerService.GetBranch(email, password);
			String fullname=managerService.getfullname(email);
			session.setAttribute("branch",branch);
			session.setAttribute("fullname", fullname);
		}
		else
		{
			mv.setViewName("ManagerLogin/ManagerLogin");
			mv.addObject("msg","Incorrect Credentials");
		}
		
		return mv;	
	}
	
		

	
	//Manager Adding Volunteers=======================================>
	
	@GetMapping("/ManagerAddingVolunteers")
	public ModelAndView AdminAddingVolunteers()
	{
		ModelAndView mv= new ModelAndView("ManagerAddingVolunteers/ManagerAddingVolunteers","volunteer",new Volunteer());
		return mv;
	}
	
	@PostMapping("/AddingVolunteers")
	public ModelAndView AddingVolunteers(@ModelAttribute("volunteer")Volunteer volunteer,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		List<Volunteer> volunteers=volunteerService.VerifyDuplicates(volunteer.getEmailid(),volunteer.getContactno());
		if(volunteers.size()>0)
		{
			mv.setViewName("ManagerAddingVolunteers/ManagerAddingVolunteers");
			mv.addObject("duplicateerror","Duplicate Account");
		}
		else
		{
			volunteerService.AddingVolunteers(volunteer);
			HttpSession session =request.getSession();
			String branch=(String)session.getAttribute("branch");
			String email=request.getParameter("emailid");
			String managername=request.getParameter("fullname");
			
			volunteerService.SetBranch(branch,email);
			
			mv.setViewName("ManagerAddingVolunteersSuccess/ManagerAddingVolunteersSuccess");	
			
			String volunteeremail = volunteer.getEmailid();
			
		    senderService.sendEmail(volunteeremail,"Congratulations & Welcome to Help India NGO","Dear "+volunteer.getFullname()+",\n\nCongratulations!\n\nWe are pleased to welcome you as the newest team member at Help India NGO and we hope you find the role of VOLUNTEER at "+branch+" to be meaningful and rewarding.\n\nYour Default Credentials are:\nEmail: "+volunteer.getEmailid()+"\nContact no: "+volunteer.getContactno()+"\nPassword:"+volunteer.getPassword()+"\nYou can reset your password at anytime.\n\nKind regards,\n"+managername+".");
		  
		}
		
		
		return mv;
	}
	
	//Manager Viewing his Volunteers=======================================>
	
	@GetMapping("/ManagerViewingHisVolunteers")
	public ModelAndView ManagerViewingHisVolunteers(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("ManagerViewingHisVolunteers/ManagerViewingHisVolunteers");
		
		HttpSession session =request.getSession();
		String branch=(String)session.getAttribute("branch");
		
		List<Volunteer> volunteerslist=managerService.ManagerViewingHisVolunteers(branch);
		mv.addObject("volunteerslist",volunteerslist);
		return mv;
	}
	
	//Manager Viewing Donations============================================>
	
	@GetMapping("/ManagerViewingDonations")
	public ModelAndView ManagerViewingDonations(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("ManagerViewingDonations/ManagerViewingDonations");
		HttpSession session =request.getSession();
		String branch=(String)session.getAttribute("branch");
		List<Donations> donationslists=donationsService.viewalldonations(branch);
		mv.addObject("donationslists",donationslists);
		return mv;
	}
	
	//Manager Assigning Volunteers to Donations============================>
	
	@GetMapping("/AssignVolunteer")
	public ModelAndView AssignVolunteer(@RequestParam("id")int did,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerAssigningVolunteer/ManagerAssigningVolunteer");
		HttpSession session =request.getSession();
		String branch=(String)session.getAttribute("branch");
		session.setAttribute("donationid",did);
		List<Volunteer> volunteerslist=managerService.viewallvolunteers(branch);
		mv.addObject("volunteerslist",volunteerslist);
		return mv;
	}
	
	@PostMapping("/AssignedVolunteer")
	public ModelAndView AssignedVolunteer(HttpServletRequest request)
	{
		HttpSession session =request.getSession();	
		String volunteername=request.getParameter("volunteer");
		int donationid=(int) session.getAttribute("donationid");
		donationsService.SetVolunteer(volunteername,donationid);
		
		ModelAndView mv=new ModelAndView("ManagerViewingDonations/ManagerViewingDonations");
		String branch=(String)session.getAttribute("branch");
		List<Donations> donationslists=donationsService.viewalldonations(branch);
		mv.addObject("donationslists",donationslists);
			
		return mv;
	}
	
	//Manager Reset Password==============================================>
	
	
	@GetMapping("/ManagerResetPasswordRequest")
	public ModelAndView ManagerResetPasswordRequest()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ManagerResetPassword/ManagerResetPassword");
		return mv;
	}
	
	@PostMapping("/ManagerResetPassword")
	public ModelAndView ManagerResetPassword(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("manageremail");
		HttpSession session=request.getSession();
		session.setAttribute("manageremail",email);
		List<Manager> managerlist=managerService.getManager(email);
		if(managerlist.size()>0)
		{
			mv.setViewName("ManagerValidateOTP/ManagerValidateOTP");
			
			Random random=new Random();
			int otp1=random.nextInt(10000);
			String otp=Integer.toString(otp1);
			
			
			managerService.updateotp(otp,email);
			String fullname=managerService.getfullname(email);
			
			
		    senderService.sendEmail(email,"Help India NGO Reset Password","Dear "+fullname+",\n\nYour OTP is: "+otp+"\n\nThank You,\nTeam Help India NGO");
		    
		}
		else
		{
			mv.setViewName("ManagerResetPassword/ManagerResetPassword");
			mv.addObject("msg","Invalid Email");
		}
		return mv;
	}
	
	@PostMapping("/ManagerValidateOTP")
	public ModelAndView ManagerValidateOTP(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String eotp=request.getParameter("otp");
		String email=(String) session.getAttribute("manageremail");
		String aotp=managerService.getotp(email);
		
		if(eotp.equals(aotp))
		{
			mv.setViewName("ManagerChangePassword/ManagerChangePassword");
		}
		else
		{
			mv.setViewName("ManagerValidateOTP/ManagerValidateOTP");
			mv.addObject("msg","Invalid OTP");
		}
		return mv;
	}
	
	@PostMapping("/ManagerUpdatePassword")
	public ModelAndView UpdatePassword(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String newpassword=request.getParameter("password");
		String email=(String) session.getAttribute("manageremail");
		
		managerService.updatepassword(newpassword,email);
		mv.setViewName("PasswordChangeSuccess/PasswordChangeSuccess");
		return mv;
		
	}
	
	
	//Volunteer Login======================================================>
	
	@GetMapping("/VolunteerLogin")
	public ModelAndView VolunteerLogin()
	{
		ModelAndView mv=new ModelAndView("VolunteerLogin/VolunteerLogin");
		return mv;
	}
	
	@PostMapping("/VolunteerLoginVerification")
	public ModelAndView VolunteerLoginVerification(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String email=request.getParameter("volunteeremail");
		String password=request.getParameter("volunteerpassword");
		
		Volunteer volunteer =volunteerService.VolunteerLoginVerification(email, password);
		
		if(volunteer!=null)
		{
			mv.setViewName("VolunteerHome/VolunteerHome");
			HttpSession session =request.getSession();
			
			String fullname=volunteerService.getfullname(email);
			int vid=volunteerService.getid(email);
			session.setAttribute("fullname", fullname);
			session.setAttribute("vid", vid);
			
			String branch=volunteerService.GetBranch(email, password);
			session.setAttribute("branch",branch);
		}
		else
		{
			mv.setViewName("VolunteerLogin/VolunteerLogin");
			mv.addObject("msg","Incorrect Credentials");
		}
		
		return mv;	
	}
	
	
	
	
	
	//Volunteer Viewing Pickup Orders================================>
	
	@GetMapping("/VolunteerViewingPickupOrders")
	public ModelAndView VolunteerViewingPickupOrders(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("VolunteerViewingPickupOrders/VolunteerViewingPickupOrders");
		HttpSession session =request.getSession(); 
		String fullname=(String)session.getAttribute("fullname");
		int vid=(int) session.getAttribute("vid");
		List<Donations> orders=donationsService.viewallorders(vid,fullname);
		mv.addObject("orders",orders);
		return mv;
	}	
	
	//Volunteer Marking Status Completed=======================================================================>
	
	@GetMapping("/MarkCompleted")
	public ModelAndView MarkCompleted(@RequestParam("id")int donationid,HttpServletRequest request)
	{
		donationsService.MarkCompleted(donationid);
		ModelAndView mv=new ModelAndView("VolunteerViewingPickupOrders/VolunteerViewingPickupOrders");
		HttpSession session =request.getSession(); 
		String fullname=(String)session.getAttribute("fullname");
		int vid=(int) session.getAttribute("vid");
		List<Donations> orders=donationsService.viewallorders(vid,fullname);
		mv.addObject("orders",orders);
		return mv;
	}
	
	//Volunteer Marking Status Pending=======================================================================>
	
	@GetMapping("/MarkPending")
	public ModelAndView MarkPending(@RequestParam("id")int donationid,HttpServletRequest request)
	{
		donationsService.MarkPending(donationid);
		ModelAndView mv=new ModelAndView("VolunteerViewingPickupOrders/VolunteerViewingPickupOrders");
		HttpSession session =request.getSession(); 
		String fullname=(String)session.getAttribute("fullname");
		int vid=(int) session.getAttribute("vid");
		List<Donations> orders=donationsService.viewallorders(vid,fullname);
		mv.addObject("orders",orders);
		return mv;
	}
		
	//Volunteer Viewing Completed Orders===================================================>
		
	@GetMapping("/VolunteerViewingCompletedOrders")
	public ModelAndView VolunteerViewingCompletedOrders(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView("VolunteerViewingCompletedOrders/VolunteerViewingCompletedOrders");
		HttpSession session =request.getSession(); 
		String fullname=(String)session.getAttribute("fullname");
		int vid=(int) session.getAttribute("vid");
		List<Donations> completedorders=donationsService.ViewCompletedOrders(vid,fullname);
		mv.addObject("completedorders",completedorders);
		return mv;
	}
	
	//Volunteer Reset Password==============================================>
	
	
		@GetMapping("/VolunteerResetPasswordRequest")
		public ModelAndView VolunteerResetPasswordRequest()
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("VolunteerResetPassword/VolunteerResetPassword");
			return mv;
		}
		
		@PostMapping("/VolunteerResetPassword")
		public ModelAndView VolunteerResetPassword(HttpServletRequest request)
		{
			ModelAndView mv=new ModelAndView();
			String email=request.getParameter("volunteeremail");
			HttpSession session=request.getSession();
			session.setAttribute("volunteeremail",email);
			List<Volunteer> volunteerlist=volunteerService.getVolunteer(email);
			if(volunteerlist.size()>0)
			{
				mv.setViewName("VolunteerValidateOTP/VolunteerValidateOTP");
				
				Random random=new Random();
				int otp1=random.nextInt(10000);
				String otp=Integer.toString(otp1);
				
				
				volunteerService.updateotp(otp,email);
				String fullname=volunteerService.getfullname(email);
				
				
			    senderService.sendEmail(email,"Help India NGO Reset Password","Dear "+fullname+",\n\nYour OTP is: "+otp+"\n\nThank You,\nTeam Help India NGO");
			    
			}
			else
			{
				mv.setViewName("VolunteerResetPassword/VolunteerResetPassword");
				mv.addObject("msg","Invalid Email");
			}
			return mv;
		}
		
		@PostMapping("/VolunteerValidateOTP")
		public ModelAndView VolunteerValidateOTP(HttpServletRequest request)
		{
			ModelAndView mv=new ModelAndView();
			HttpSession session=request.getSession();
			String eotp=request.getParameter("otp");
			String email=(String) session.getAttribute("volunteeremail");
			String aotp=volunteerService.getotp(email);
			
			if(eotp.equals(aotp))
			{
				mv.setViewName("VolunteerChangePassword/VolunteerChangePassword");
			}
			else
			{
				mv.setViewName("VolunteerValidateOTP/VolunteerValidateOTP");
				mv.addObject("msg","Invalid OTP");
			}
			return mv;
		}
		
		@PostMapping("/VolunteerUpdatePassword")
		public ModelAndView VolunteerUpdatePassword(HttpServletRequest request)
		{
			ModelAndView mv=new ModelAndView();
			HttpSession session=request.getSession();
			String newpassword=request.getParameter("password");
			String email=(String) session.getAttribute("volunteeremail");
			
			volunteerService.updatepassword(newpassword,email);
			mv.setViewName("PasswordChangeSuccess/PasswordChangeSuccess");
			return mv;
			
		}
	
	//Donar Registration===================================================>
	
	@GetMapping("/DonarLoginAndRegistration-Registration")
	public ModelAndView DonarRegistration()
	{
		ModelAndView mv= new ModelAndView("DonarLoginAndRegistration/DonarLoginAndRegistration","donar",new Donar());
		return mv;
	}
	
	@PostMapping("/DonarRegistration")
	public ModelAndView DonarRegistration(@ModelAttribute("donar")Donar donar,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		List<Donar> donars=donarService.VerifyDuplicates(donar.getEmailid(),donar.getContactno());
		if(donars.size()>0)
		{
			mv.setViewName("DonarLoginAndRegistration/DonarLoginAndRegistration");
			mv.addObject("duplicateerror","Duplicate Account");
		}
		else
		{
			donarService.DonarRegistration(donar);
			mv.setViewName("RegistrationSuccess/RegistrationSuccess");
			
			String donaremail = donar.getEmailid();
			
		    senderService.sendEmail(donaremail,"Congratulations & Welcome to Help India NGO","Dear "+donar.getFullname()+",\n\nCongratulations!\n\nWe are pleased to welcome you as the newest team member at Help India NGO and we hope you find the role of DONAR to be meaningful and rewarding.\n\nYour Credentials are:\nEmail: "+donar.getEmailid()+"\nContactno: "+donar.getContactno()+"\nPassword:"+donar.getPassword()+"\nYou can reset your password at anytime.\n\nKind regards,\nTeam Help India NGO.");
		  
		}
		
		
		return mv;
	}
	
	//Donar Login===============================================================>
	
	@GetMapping("/DonarLoginAndRegistration-Login")
	public ModelAndView DonarLogin()
	{
		ModelAndView mv=new ModelAndView("DonarLoginAndRegistration/DonarLoginAndRegistration");
		return mv;
	}
	
	@PostMapping("/DonarLoginVerification")
	public ModelAndView DonarLoginVerification(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();	
		
		String email=request.getParameter("donaremail");
		String password=request.getParameter("donarpassword");
		
		Donar donar =donarService.DonarLoginVerification(email, password);
		
		if(donar!=null)
		{
			mv.setViewName("DonarForm/DonarForm");
			HttpSession session =request.getSession();
			
			String fullname=donarService.getfullname(email);
			session.setAttribute("fullname", fullname);
		}
		else
		{
			mv.setViewName("DonarLoginAndRegistration/DonarLoginAndRegistration");
			mv.addObject("msg","Incorrect Credentials");
		}
		
		return mv;	
	}
	
	
	//Donation Form===============================================>
	
	
	@GetMapping("/DonarForm")
	public ModelAndView DonarForm()
	{
		ModelAndView mv= new ModelAndView("DonarForm/DonarForm","donations",new Donations());
		return mv;
	}
	
	@PostMapping("/Donations")
	public ModelAndView DonationsForm(@ModelAttribute("donations")Donations donations)
	{
		donationsService.DonationsFormSubmission(donations);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DonarFormSubmittedSuccess/DonarFormSubmittedSuccess");
		
		return mv;
	}
	
	//Donar Reset Password==============================================>
	
	
	@GetMapping("/DonarResetPasswordRequest")
	public ModelAndView DonarResetPasswordRequest()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DonarResetPassword/DonarResetPassword");
		return mv;
	}
		
	@PostMapping("/DonarResetPassword")
	public ModelAndView DonarResetPassword(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email=request.getParameter("donaremail");
		HttpSession session=request.getSession();
		session.setAttribute("donaremail",email);
		List<Donar> donarlist=donarService.getDonar(email);
		if(donarlist.size()>0)
		{
			mv.setViewName("DonarValidateOTP/DonarValidateOTP");
				
			Random random=new Random();
			int otp1=random.nextInt(10000);
			String otp=Integer.toString(otp1);
				
			donarService.updateotp(otp,email);
			String fullname=donarService.getfullname(email);
				
				
			senderService.sendEmail(email,"Help India NGO Reset Password","Dear "+fullname+",\n\nYour OTP is: "+otp+"\n\nThank You,\nTeam Help India NGO");
			    
		}
		else
		{
			mv.setViewName("DonarResetPassword/DonarResetPassword");
			mv.addObject("msg","Invalid Email");
		}
		return mv;
	}
		
	@PostMapping("/DonarValidateOTP")
	public ModelAndView DonarValidateOTP(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String eotp=request.getParameter("otp");
		String email=(String) session.getAttribute("donaremail");
		String aotp=donarService.getotp(email);
			
		if(eotp.equals(aotp))
		{
			mv.setViewName("DonarChangePassword/DonarChangePassword");
		}
		else
		{
			mv.setViewName("DonarValidateOTP/DonarValidateOTP");
			mv.addObject("msg","Invalid OTP");
		}
		return mv;
	}
		
	@PostMapping("/DonarUpdatePassword")
	public ModelAndView DonarUpdatePassword(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		String newpassword=request.getParameter("password");
		String email=(String) session.getAttribute("donaremail");
			
		donarService.updatepassword(newpassword,email);
		mv.setViewName("PasswordChangeSuccess/PasswordChangeSuccess");
		return mv;
			
	}
	

}
