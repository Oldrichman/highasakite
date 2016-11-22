package fi.hoptimusprime.highasakite.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.hoptimusprime.highasakite.bean.Osallistuja;
import fi.hoptimusprime.highasakite.bean.OsallistujaImpl;

public class OsallistujaRowMapper implements RowMapper<OsallistujaImpl> {

	public OsallistujaImpl mapRow(ResultSet rs, int rowNum) throws SQLException {
		OsallistujaImpl ol = new OsallistujaImpl();
		ol.setId(rs.getInt("id"));
		ol.setEtunimi(rs.getString("etunimi"));
		ol.setSukunimi(rs.getString("sukunimi"));
		ol.setEmail(rs.getString("email"));
		
		return ol;
	}

}
