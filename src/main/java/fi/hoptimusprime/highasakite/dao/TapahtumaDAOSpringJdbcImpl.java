package fi.hoptimusprime.highasakite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import org.springframework.stereotype.Repository;

import fi.hoptimusprime.highasakite.bean.Tapahtuma;
import fi.hoptimusprime.highasakite.bean.TapahtumaLuoja;

@Repository
public class TapahtumaDAOSpringJdbcImpl implements TapahtumaDAO{
	
	@Inject
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public TapahtumaLuoja etsi(int id) {
		String sql = "select id, etunimi, sukunimi, email from TapahtumanLuoja where id = ?";
		Object[] parametrit = new Object[] { id };
		RowMapper<TapahtumaLuoja> mapper = new TapahtumaLuojaRowMapper();
		
		TapahtumaLuoja l;
	    
	    l = jdbcTemplate.queryForObject(sql , parametrit, mapper);
	    
	    return l;
	                                  

	}

// TAPAHTUMIEN TULOSTUS
	
	public List<Tapahtuma> haeKaikki(){
		String sql = "select paikka, TapLuojaId, TapNimi, pvm, aika, lisatiedot from Tapahtuma";
		RowMapper<Tapahtuma> mapper = new TapahtumaRowMapper();
		List<Tapahtuma> tapahtumat = jdbcTemplate.query(sql, mapper);
		for(int i = 0; i < tapahtumat.size(); i++) {
			TapahtumaLuoja luoja = etsi(tapahtumat.get(i).getTapLuojaid());
			tapahtumat.get(i).setTapluojanimi(luoja.getEtunimi() + " " + luoja.getSukunimi());
		}
		
		return tapahtumat;
	}

}
