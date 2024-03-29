package fi.hoptimusprime.highasakite.bean;


import java.util.Date;
import java.util.List;

public class TapahtumaImpl implements Tapahtuma {
	private int Tapid, TapLuojaid, teemaId, paikkakuntaid;
	private String paikka, TapNimi, aika, lisatiedot, tapluojanimi, tapluojaemail;
	private Date pvm;
	private List<OsallistujaImpl> osallistujat;
	
	public String getTapluojanimi() {
		return tapluojanimi;
	}
	
	public void setTapluojanimi(String tapluojanimi) {
		this.tapluojanimi = tapluojanimi;
	}
	
	
	public List<OsallistujaImpl> getOsallistujat() {
		return osallistujat;
	}

	public void setOsallistujat(List<OsallistujaImpl> osallistujat) {
		this.osallistujat = osallistujat;
	}
	
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
		this.TapLuojaid = tapLuojaid;
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
	
	public void setPvm(Date pvm){
		this.pvm = pvm;
	}
	
	public String getTapluojaemail() {
		return tapluojaemail;
	}
	public void setTapluojaemail(String tapluojaemail) {
		this.tapluojaemail = tapluojaemail;
	}
	@Override
	public String toString() {
		return "TapahtumaImpl [Tapid=" + Tapid + ", TapLuojaid=" + TapLuojaid
				+ ", teemaId=" + teemaId + ", paikkakuntaid=" + paikkakuntaid
				+ ", paikka=" + paikka + ", TapNimi=" + TapNimi + ", aika="
				+ aika + ", lisatiedot=" + lisatiedot + ", pvm=" + pvm + "]";
	}

	
}
