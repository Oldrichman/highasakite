package fi.hoptimusprime.highasakite.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.hoptimusprime.highasakite.bean.TapahtumaLuoja;
import fi.hoptimusprime.highasakite.bean.TapahtumaLuojaImpl;

public class TapahtumaLuojaRowMapper implements RowMapper<TapahtumaLuoja> {

	public TapahtumaLuoja mapRow(ResultSet rs, int rowNum) throws SQLException {
		TapahtumaLuoja tl = new TapahtumaLuojaImpl();
		tl.setEtunimi(rs.getString("etunimi"));
		tl.setSukunimi(rs.getString("sukunimi"));
		tl.setEmail(rs.getString("email"));
		
		return tl;
	}

}
