package fi.hoptimusprime.highasakite.bean;

public interface Osallistuja {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getEtunimi();
	public abstract void setEtunimi(String etunimi);
	
	public abstract String getSukunimi();
	public abstract void setSukunimi(String sukunimi);
	
	public abstract String getEmail();
	public abstract void setEmail(String email);
	

}
