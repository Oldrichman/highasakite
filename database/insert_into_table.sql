/* Tapahtuman luojan tietojen lis��minen */

INSERT INTO TapahtumanLuoja (etunimi, sukunimi, email)
	VALUES ('Aleksi', 'Ahonen', 'h�p�h�p�@gmail.com');
	
INSERT INTO TapahtumanLuoja (etunimi, sukunimi, email)
	VALUES ('Mikko', 'Hallberg', 'jeejee@gmail.com');
	
/* Teemojen lis�ys */
	
INSERT INTO Teema (nimi)
	VALUES ('Urheilu');
	
INSERT INTO Teema (nimi)
	VALUES ('Ruoka ja juoma');
	
INSERT INTO Teema (nimi)
	VALUES ('Pelit');
	
/* Paikkauntien lis��minen */
	

INSERT INTO Paikkakunta (nimi)
	VALUES ('Helsinki');
	
INSERT INTO Paikkakunta (nimi)
	VALUES ('Espoo');
	
INSERT INTO Paikkakunta (nimi)
	VALUES ('Vantaa');
	
/* Tapahtuman lis��minen */
	
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)
	VALUES (2, 2, 'Ravintola', 'Viininmaisteluilta', '2016-10-25', '18:00', 1, 'Dresscode: smart casual.');	
			
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)	
	VALUES (3, 3, 'Kotona', 'Peli-ilta', '2016-11-11', '15:00', 1, 'Pelaillaan lautapelej�, jee!');
			
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)
	VALUES (4, 3, 'Kotona', 'Lanit', '2016-11-23', '15:00', 2, 'Lanitellaan yhdess�');
	
/* Osallistujien lis��minen */
	
INSERT INTO Osallistuja (etunimi, sukunimi, email)
	VALUES ('Jaakko', 'Jaakkima', 'jaakkojaakkima@gmail.com'),
	       ('Jenna', 'J��r�', 'jennajaara@luukku.com'),
	       ('Juha', 'Juupas', 'juhajuupas@gmail.com');
	      
INSERT INTO TapahtumaOsallistuja (osallistuja_id, tapahtuma_id)
	VALUES (2, 2),
	       (1, 3);
			