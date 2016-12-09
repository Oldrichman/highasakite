package fi.hoptimusprime.highasakite.controller;

import java.util.Date;
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
import fi.hoptimusprime.highasakite.bean.TapahtumaImpl;
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
		
	/*@RequestMapping(value="talleta", method=RequestMethod.GET)
    public ResponseEntity<String> talleta(@RequestParam(value = "etunimi") String etunimi, @RequestParam(value = "sukunimi")String sukunimi, @RequestParam(value = "email") String email) {
		System.out.println("Tietokantaan lisätty osallistuja: "+etunimi+" "+sukunimi+", "+email+".");
		OsallistujaImpl osallistuja = new OsallistujaImpl();
		osallistuja.setEtunimi(etunimi);
		osallistuja.setSukunimi(sukunimi);
		osallistuja.setEmail(email); 
		tdao.talleta(osallistuja);
		return new ResponseEntity<String>(HttpStatus.OK);//("redirect:/tapahtumat/listaus");
	}*/
	
	@RequestMapping(value="tapahtumaosallistuja", method=RequestMethod.GET)
	 public ResponseEntity<String> tapahtumaosallistuja(@RequestParam(value = "etunimi") String etunimi, @RequestParam(value = "sukunimi")String sukunimi, @RequestParam(value = "email") String email, @RequestParam(value ="tapahtumaId") int tapahtumaId) {

		System.out.println("Tietokantaan lisätty osallistuja: "+etunimi+" "+sukunimi+", "+email+".");
		System.out.println("Osallistujan lisääminen tapahtumaan onnistui");
		OsallistujaImpl osallistuja = new OsallistujaImpl();
		
		osallistuja.setEtunimi(etunimi);
		osallistuja.setSukunimi(sukunimi);
		osallistuja.setEmail(email);
	
		tdao.talleta(osallistuja, tapahtumaId);

		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@RequestMapping(value="lisaatapahtuma", method=RequestMethod.GET)
	public ResponseEntity<String> lisaatapahtuma(@RequestParam(value = "teema") Integer teema, @RequestParam(value = "tapahtumapaikka") String paikka, @RequestParam(value = "tapahtumanimi") String tapahtumanimi, @RequestParam(value = "paivamaara") Date pvm, @RequestParam(value = "aika") String aika, @RequestParam(value = "paikkakunta") Integer paikkakunta, @RequestParam(value = "lisatiedot") String lisatiedot){
		
		System.out.println("Tietokantaan lisätty tapahtuma: " +teema+" "+paikka+" "+ pvm);
		TapahtumaImpl tapahtuma = new TapahtumaImpl();
		
		tapahtuma.setTeemaId(teema);
		tapahtuma.setPaikka(paikka);
		tapahtuma.setTapNimi(tapahtumanimi);
		tapahtuma.setPvm(pvm);
		tapahtuma.setAika(aika);
		tapahtuma.setPaikkakuntaid(paikkakunta);
		tapahtuma.setLisatiedot(lisatiedot);
		
		tdao.luoTapahtuma(tapahtuma);
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}

}
