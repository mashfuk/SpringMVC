package com.spring;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Person;
import com.spring.model.SearchCriteria;
import com.spring.service.PersonService;

@Controller
public class StudentController {

	private PersonService personService;

	@Autowired(required = true)
	@Qualifier(value = "personService")
	public void setPersonService(PersonService ps) {
		this.personService = ps;
	}

	@RequestMapping(value = "/students", method = RequestMethod.GET)
	public String listStudents(Model model, @ModelAttribute("searchCriteria") SearchCriteria sc) {
		model.addAttribute("person", new Person());
		model.addAttribute("listPersons", this.personService.listPersons());
		return "student";
	}

	@RequestMapping(value = "/student/search", method = RequestMethod.POST)
	public String listSearchStudent(@RequestParam("name") String name,
			@ModelAttribute("searchCriteria") SearchCriteria sc,Model model) {
		
//		SimpleDateFormat fromUser = new SimpleDateFormat("MM/dd/yyyy");
//		SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
//
//		try {
//
//		    String reformattedStr = myFormat.format(fromUser.parse(name));
//		} catch (ParseException e) {
//		    e.printStackTrace();
//		}

		model.addAttribute("listPersons", this.personService.listPersons(name));
		return "student";

	}

}
