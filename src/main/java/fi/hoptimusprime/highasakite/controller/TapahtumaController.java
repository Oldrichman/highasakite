package fi.hoptimusprime.highasakite.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import fi.hoptimusprime.highasakite.bean.OsallistujaImpl;
import fi.hoptimusprime.highasakite.bean.Tapahtuma;
import fi.hoptimusprime.highasakite.dao.TapahtumaDAO;


@Controller
@RequestMapping (value="/tapahtumat")
public class TapahtumaController {
	
	@Inject
	private TapahtumaDAO tdao;
	
	public TapahtumaDAO getDao(){
		return tdao;
	}
	public void setDao(TapahtumaDAO dao){
		this.tdao = dao;
	}
	
	
	//TAPAHTUMATIETOJEN NÄYTTÄMINEN
	@RequestMapping(value="listaus", method=RequestMethod.GET)
	public String getView(/*@PathVariable*/ Model model){
		System.out.println("tätä kutsuttiin");
		List <Tapahtuma> tapahtumat = tdao.haeKaikki();
		model.addAttribute("tapahtumia", tapahtumat);
		return "sheetpage";
	}
	
	//FORMIN TEKEMINEN
		@RequestMapping(value="uusi", method=RequestMethod.GET)
		public String getCreateForm(Model model) {
			System.out.println("onnistui");
			OsallistujaImpl uusiOsallistuja = new OsallistujaImpl();
			uusiOsallistuja.setEtunimi("etunimi");
			uusiOsallistuja.setSukunimi("sukunimi");
			
			model.addAttribute("osallistuja", uusiOsallistuja);
			return "sheetpage";
		}
	
	//OSALLISTUJAN LISÄÄMINEN TAPAHTUMAAN

	
	@RequestMapping(value="talleta", method=RequestMethod.GET)
    public ResponseEntity<String> talleta(@RequestParam(value = "etunimi") String etunimi, @RequestParam(value = "sukunimi")String sukunimi, @RequestParam(value = "email") String email) {
		System.out.println("Tietokantaan lisätty osallistuja: "+etunimi+" "+sukunimi+", "+email+".");
		OsallistujaImpl osallistuja = new OsallistujaImpl();
		osallistuja.setEtunimi(etunimi);
		osallistuja.setSukunimi(sukunimi);
		osallistuja.setEmail(email);
		tdao.talleta(osallistuja);
		return new ResponseEntity<String>(HttpStatus.OK);//("redirect:/tapahtumat/listaus");
	}
	


}
