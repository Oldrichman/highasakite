package fi.hoptimusprime.highasakite.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String getView(@PathVariable Model model){
		List <Tapahtuma> tapahtumat = tdao.haeKaikki();
		model.addAttribute("tapahtumat", tapahtumat);
		return "views/testilista";
	}
	


}
