package fi.hoptimusprime.highasakite.bean;

import java.util.Date;

public interface Tapahtuma {
	
	public abstract int getTapid();
	public abstract void setTapid(int tapid);
	
	public abstract int getTapLuojaid();
	public abstract void setTapLuojaid(int tapLuojaid);
	
	public abstract int getTeemaId();
	public abstract void setTeemaId(int teemaId);
	
	public abstract int getPaikkakuntaid();
	public abstract void setPaikkakuntaid(int paikkakuntaid);
	
	public abstract String getPaikka();
	public abstract void setPaikka(String paikka);
	
	public abstract String getTapNimi();
	public abstract void setTapNimi(String tapNimi);
	
	public abstract String getAika();
	public abstract void setAika(String aika);
	
	public abstract String getLisatiedot();
	public abstract void setLisatiedot(String lisatiedot);
	
	public abstract Date getPvm();
	public abstract void setPvm(Date pvm);

}
