package fi.hoptimusprime.highasakite.bean;

public class TapahtumaLuojaImpl implements TapahtumaLuoja {
	
	private int id;
	private String etunimi, sukunimi, email;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEtunimi() {
		return etunimi;
	}
	public void setEtunimi(String etunimi) {
		this.etunimi = etunimi;
	}
	public String getSukunimi() {
		return sukunimi;
	}
	public void setSukunimi(String sukunimi) {
		this.sukunimi = sukunimi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "TapahtumaLuojaImpl [id=" + id + ", etunimi=" + etunimi
				+ ", sukunimi=" + sukunimi + ", email=" + email + "]";
	}
	
	

}
