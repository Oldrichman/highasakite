package fi.hoptimusprime.highasakite.bean;

import java.util.Date;

public class TapahtumaImpl implements Tapahtuma {
	private int Tapid, TapLuojaid, teemaId, paikkakuntaid;
	private String paikka, TapNimi, aika, lisatiedot;
	private Date pvm;
	
	
	public int getTapid() {
		return Tapid;
	}
	public void setTapid(int tapid) {
		Tapid = tapid;
	}
	public int getTapLuojaid() {
		return TapLuojaid;
	}
	public void setTapLuojaid(int tapLuojaid) {
		TapLuojaid = tapLuojaid;
	}
	public int getTeemaId() {
		return teemaId;
	}
	public void setTeemaId(int teemaId) {
		this.teemaId = teemaId;
	}
	public int getPaikkakuntaid() {
		return paikkakuntaid;
	}
	public void setPaikkakuntaid(int paikkakuntaid) {
		this.paikkakuntaid = paikkakuntaid;
	}
	public String getPaikka() {
		return paikka;
	}
	public void setPaikka(String paikka) {
		this.paikka = paikka;
	}
	public String getTapNimi() {
		return TapNimi;
	}
	public void setTapNimi(String tapNimi) {
		TapNimi = tapNimi;
	}
	public String getAika() {
		return aika;
	}
	public void setAika(String aika) {
		this.aika = aika;
	}
	public String getLisatiedot() {
		return lisatiedot;
	}
	public void setLisatiedot(String lisatiedot) {
		this.lisatiedot = lisatiedot;
	}
	public Date getPvm() {
		return pvm;
	}
	public void setPvm(Date pvm) {
		this.pvm = pvm;
	}
	
	@Override
	public String toString() {
		return "TapahtumaImpl [Tapid=" + Tapid + ", TapLuojaid=" + TapLuojaid
				+ ", teemaId=" + teemaId + ", paikkakuntaid=" + paikkakuntaid
				+ ", paikka=" + paikka + ", TapNimi=" + TapNimi + ", aika="
				+ aika + ", lisatiedot=" + lisatiedot + ", pvm=" + pvm + "]";
	}

	
}
