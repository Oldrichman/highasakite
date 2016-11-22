package fi.hoptimusprime.highasakite.dao;

import java.util.List;

import fi.hoptimusprime.highasakite.bean.Osallistuja;
import fi.hoptimusprime.highasakite.bean.Tapahtuma;


public interface TapahtumaDAO {
	
	public abstract List<Tapahtuma> haeKaikki();
	
	public abstract void talleta (Osallistuja osallistuja);

}
