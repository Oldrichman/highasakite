package fi.hoptimusprime.highasakite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;



import fi.hoptimusprime.highasakite.bean.OsallistujaImpl;
import fi.hoptimusprime.highasakite.bean.Tapahtuma;
import fi.hoptimusprime.highasakite.bean.TapahtumaImpl;
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
	
	public void talleta(OsallistujaImpl ol, Integer tapahtumaId) {
		final String sql = "insert into Osallistuja (etunimi, sukunimi, email) values(?,?,?)";
		
		final String etunimi = ol.getEtunimi();
		final String sukunimi = ol.getSukunimi();
		final String email = ol.getEmail();
		
		
		KeyHolder idHolder = new GeneratedKeyHolder();
		
		jdbcTemplate.update(
	    	    new PreparedStatementCreator() {
	    	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	    	            PreparedStatement ps = connection.prepareStatement(sql, new String[] {"id"});
	    	            ps.setString(1, etunimi);
	    	            ps.setString(2, sukunimi);
	    	            ps.setString(3, email);
	    	            return ps;
	    	        }
	    	    }, idHolder);
		
		ol.setId(idHolder.getKey().intValue());
		
		final Integer id = tapahtumaId;
		
		final String sql2 = ("INSERT INTO TapahtumaOsallistuja (osallistuja_id, tapahtuma_id) VALUES ("+idHolder.getKey().intValue()+","+id+")");
		jdbcTemplate.update(
	    	    new PreparedStatementCreator() {
	    	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	    	            PreparedStatement ps = connection.prepareStatement(sql2);
	    	            return ps;
	    	        }
	    	    });
	}
	
	public void TalletaOsallistujaTapahtumaan(OsallistujaImpl ol, TapahtumaImpl ti) {
		
		final String sql = "INSERT INTO TapahtumaOsallistuja (osallistuja_id, tapahtuma_id) VALUES (?,?) "
						 + "SELECT o.id, t.tapId "
						 + "FROM Osallistuja o "  
						 + "INNER JOIN Tapahtuma t ON o.id = t.tapId"
						 +" WHERE o.id="+ol.getId();
		
		final int OsallistujaId = ol.getId();
		final int TapahtumaId = ti.getTapid();
		
		
		KeyHolder idHolder = new GeneratedKeyHolder();
		
		jdbcTemplate.update(
	    	    new PreparedStatementCreator() {
	    	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	    	            PreparedStatement ps = connection.prepareStatement(sql, new String[] {"osallistuja", "tapahtuma"});
	    	            ps.setInt(1, OsallistujaId);
	    	            ps.setInt(2, TapahtumaId);
	    	            return ps;
	    	        }
	    	    }, idHolder);
		
		ol.setId(idHolder.getKey().intValue());
		ti.setTapid(idHolder.getKey().intValue());
	}
	 
	
	public List<OsallistujaImpl> etsiOsallistujat(Tapahtuma t) {
		String sql = "SELECT id, etunimi, sukunimi, email FROM Osallistuja LEFT JOIN TapahtumaOsallistuja ON  Osallistuja.id = TapahtumaOsallistuja.osallistuja_id WHERE tapahtuma_id = ?";
		Object[] parametrit = new Object[] { t.getTapid() };
		RowMapper<OsallistujaImpl> mapper = new OsallistujaRowMapper();
		
		List<OsallistujaImpl> osallistujat = jdbcTemplate.query(sql , parametrit, mapper);
	    
	    return osallistujat;
	                                  

	}
	
	

// TAPAHTUMIEN TULOSTUS
	
	public List<Tapahtuma> haeKaikki(){
		String sql = "SELECT TapId, paikka, TapLuojaId, TapNimi, pvm, aika, lisatiedot from Tapahtuma";
		RowMapper<Tapahtuma> mapper = new TapahtumaRowMapper();
		List<Tapahtuma> tapahtumat = jdbcTemplate.query(sql, mapper);
		
		for(int i = 0; i < tapahtumat.size(); i++) {
			tapahtumat.get(i).setOsallistujat(etsiOsallistujat(tapahtumat.get(i)));
			TapahtumaLuoja luoja = etsi(tapahtumat.get(i).getTapLuojaid());
			tapahtumat.get(i).setTapluojanimi(luoja.getEtunimi() + " " + luoja.getSukunimi());
			tapahtumat.get(i).setTapluojaemail(luoja.getEmail());
		}
		
		return tapahtumat;
	}

}
