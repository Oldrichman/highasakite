package fi.hoptimusprime.highasakite.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.RowMapper;

import fi.hoptimusprime.highasakite.bean.Tapahtuma;
import fi.hoptimusprime.highasakite.bean.TapahtumaImpl;

public class TapahtumaRowMapper implements RowMapper<Tapahtuma> {
	
	public Tapahtuma mapRow(ResultSet rs, int rowNum) throws SQLException {
		Tapahtuma t = new TapahtumaImpl();
		t.setAika(rs.getString("aika"));
		t.setLisatiedot(rs.getString("lisatiedot"));
		t.setPaikka(rs.getString("paikka"));
		t.setPvm(rs.getDate("pvm"));
		t.setTapNimi(rs.getString("TapNimi"));
		t.setTapLuojaid(rs.getInt("TapLuojaId"));
		
		return t;
	}


}
