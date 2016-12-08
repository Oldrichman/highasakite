package fi.hoptimusprime.highasakite.dao;

import java.util.List;

import fi.hoptimusprime.highasakite.bean.OsallistujaImpl;
import fi.hoptimusprime.highasakite.bean.Tapahtuma;
import fi.hoptimusprime.highasakite.bean.TapahtumaImpl;


public interface TapahtumaDAO {
	
	public abstract List<Tapahtuma> haeKaikki();
	
	public abstract void talleta (OsallistujaImpl osallistuja, Integer tapahtumaId);
	public abstract void TalletaOsallistujaTapahtumaan(OsallistujaImpl ol, TapahtumaImpl ti);
}
