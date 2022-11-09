package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.BranchAdminRequest;
import com.model.BranchRegister;
import com.model.Login;
import com.model.MedicineRecord;
import com.model.Register;
import com.service.BranchAdminRequestServiceIntf;
import com.service.BranchRegisterServiceIntf;
import com.service.MedicineServiceIntf;
import com.service.RegisterServiceIntf;

@Controller
public class MainController {
	@Autowired
	RegisterServiceIntf service;
	@Autowired
	BranchRegisterServiceIntf brservice;
	@Autowired
	MedicineServiceIntf mservice;
	@Autowired
	BranchAdminRequestServiceIntf barservice;


	
	@RequestMapping("/index")
	public ModelAndView indexPage() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/home")
	public ModelAndView homePage() {
		return new ModelAndView("home");
	}

	@RequestMapping("/register")
	public ModelAndView registerPage(@ModelAttribute("register") Register register) {
		return new ModelAndView("register");// jsp
	}

	@RequestMapping("/saveRegister")
	public ModelAndView saveRegister(@Validated @ModelAttribute("register") Register register, BindingResult result) {

		//ModelAndView modelAndView = new ModelAndView("register");
		if (result.hasErrors()) {
			return new ModelAndView("register");
		} else {
			service.saveRegister(register);
			 return new ModelAndView("adminSuccess");
			//modelAndView.addObject("key1", "Your details are submitted successfully......");
			//return modelAndView;
		}
	}
	/*@RequestMapping("/saveRegister")
	public ModelAndView saveRegister(@Validated @ModelAttribute("register") Register register, BindingResult result) {

		ModelAndView modelAndView = new ModelAndView("register");
		if (result.hasErrors()) {
			return new ModelAndView("register");
		} else {
			int validate =service.saveRegister(register);
			// return new ModelAndView("adminSuccess");
			modelAndView.addObject("key1", "Your details are submitted successfully......");
			if(validate!=0)
			{
			return modelAndView;
		}
			return modelAndView;
		}
	}*/

	@RequestMapping("/login")
	public ModelAndView loginPage(@ModelAttribute("login") Register register) {

		return new ModelAndView("login");// jsp
	}

	@RequestMapping("/saveLogin")
	public ModelAndView saveLogin(@ModelAttribute("login") Register register) {
		ModelAndView modelAndView = new ModelAndView("login");
		boolean validate = service.validateLogin(register);
		if (validate) {

			return new ModelAndView("home");

		} else {
			modelAndView.addObject("key1", "Invalid Credentials, try again...");
			return modelAndView;
		}
	}

	@RequestMapping("/branchAdminRegister")
	public ModelAndView branchRegisterPage(@ModelAttribute("branchRegister") BranchRegister branchRegister) {
		return new ModelAndView("branchAdmin");// jsp
	}

	@RequestMapping("/saveBranchRegister")
	public ModelAndView saveBranchRegister(@Validated @ModelAttribute("branchRegister") BranchRegister branchRegister,
			BindingResult result) {
		//ModelAndView modelAndView = new ModelAndView("branchAdmin");
		if (result.hasErrors()) {
			 return new ModelAndView("branchAdmin");
			//return modelAndView;
		} else {
			brservice.saveBranchRegister(branchRegister);
			//modelAndView.addObject("key1", "Your details are submitted successfully......");
			return new ModelAndView("success");

		}
	}

	@RequestMapping("/adminInfo")
	public ModelAndView adminInfo() {
		List<BranchRegister> ls = brservice.adminInfo();
		return new ModelAndView("adminInfo", "listOfUsers", ls);
	}

	@RequestMapping("/viewadmin/{branchAdminId}")
	public ModelAndView viewAdminPage(@PathVariable("branchAdminId") int branchAdminId, Model model) {

		BranchRegister branchRegister = new BranchRegister();
		branchRegister = brservice.branchAdminById(branchAdminId);
		model.addAttribute("command", branchRegister);
		return new ModelAndView("viewadmin");
	}

	@PostMapping("saveBranchAdmin")
	public ModelAndView updateAdmin(BranchRegister branchRegister) {
		
		brservice.updateAdmin(branchRegister);
		//ModelAndView modelAndView = new ModelAndView("viewadmin");
		return new ModelAndView("updateSuccess");
		//modelAndView.addObject("key1", "Your details are updated successfully.....");
		//return modelAndView;

	}

	@RequestMapping("/deleteadmin/{branchAdminId}")
	public ModelAndView deleteAdminById(@PathVariable("branchAdminId") int branchAdminId) {
		brservice.deleteAdminById(branchAdminId);
		return new ModelAndView("redirect:/adminInfo");
	}

	@RequestMapping("medicineInfo")
	public ModelAndView medicineInfo(@ModelAttribute("medicineRecord") MedicineRecord medicineRecord) {

		List<MedicineRecord> ls = mservice.medicineInfo();
		return new ModelAndView("medicineInfo", "listOfUsers", ls);
	}

	@RequestMapping("medicineRecord")
	public ModelAndView medicineRecordPage(@ModelAttribute("medicineRecord") MedicineRecord medicineRecord) {
		return new ModelAndView("medicineRecord");
	}

	@RequestMapping("saveMedicine")
	public ModelAndView medicineRecord(@Validated @ModelAttribute("medicineRecord") MedicineRecord medicineRecord,
			BindingResult result) {
		
		//ModelAndView modelAndView=new ModelAndView("medicineRecord");
		if (result.hasErrors()) {
			return new ModelAndView("medicineRecord");
			//return modelAndView;
		} else {
			mservice.addMedicine(medicineRecord);
			return new ModelAndView("success");
			//modelAndView.addObject("key1", "Your details are submitted successfully.....");
			//return modelAndView;

		}
	}

	@RequestMapping("/viewmedicine/{medicineId}")

	public ModelAndView viewMedicinePage(@PathVariable("medicineId") int medicineId, Model model) {
		MedicineRecord medicineRecord = new MedicineRecord();
		medicineRecord = mservice.medicineRecordById(medicineId);
		model.addAttribute("command", medicineRecord);
		return new ModelAndView("viewmedicine");
	}

	@PostMapping("/viewMedicineDetails")
	public ModelAndView updateMedicine(MedicineRecord medicineRecord) {
		mservice.updateMedicine(medicineRecord);
		return new ModelAndView("updateSuccess");
	}

	@RequestMapping("/deletemedicine/{medicineId}")
	public ModelAndView deleteMedicineById(@PathVariable("medicineId") int medicineId) {
		mservice.deleteAdminById(medicineId);
		return new ModelAndView("redirect:/medicineInfo");
	}

	@RequestMapping("/branchAdminRequest")
	public ModelAndView branchAdminRequestPage(
			@ModelAttribute("branchAdminRequest") BranchAdminRequest branchAdminRequest) {
		return new ModelAndView("branchAdminRequest");
	}

	@PostMapping("/saveBranchAdminRequest")
	public ModelAndView branchAdminRequest(
			@Validated @ModelAttribute("branchAdminRequest") BranchAdminRequest branchAdminRequest,
			BindingResult result) {

	//	ModelAndView modelAndView = new ModelAndView("branchAdminRequest");
		if (result.hasErrors()) {
			return new ModelAndView("branchAdminRequest");
		} else {
			barservice.saveBranchAdminRequest(branchAdminRequest);
			//modelAndView.addObject("key1", "Your details are submitted successfully......");
			return new ModelAndView("success");
			//return modelAndView;
		}
	}
	
	@RequestMapping("/RequestDetails")
	public ModelAndView branchAdminRequestDetails()
	{
	   List<BranchAdminRequest>ls=barservice.branchAdminRequestDetails();
		
		 return new ModelAndView("RequestDetails","listOfUsers", ls);
	}

	
	/*
	 * @RequestMapping("/logout") public ModelAndView logoutPage() { // ModelAndView
	 * modelAndView.addObject("command","Logout Successfully....."); return new
	 * ModelAndView("login"); }
	 */

}
