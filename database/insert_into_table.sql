/* Tapahtuman luojan tietojen lisääminen */

INSERT INTO TapahtumanLuoja (etunimi, sukunimi, email)
	VALUES ('Aleksi', 'Ahonen', 'höpöhöpö@gmail.com');
	
INSERT INTO TapahtumanLuoja (etunimi, sukunimi, email)
	VALUES ('Mikko', 'Hallberg', 'jeejee@gmail.com');
	
/* Teemojen lisäys */
	
INSERT INTO Teema (nimi)
	VALUES ('Urheilu');
	
INSERT INTO Teema (nimi)
	VALUES ('Ruoka ja juoma');
	
INSERT INTO Teema (nimi)
	VALUES ('Pelit');
	
/* Paikkauntien lisääminen */
	

INSERT INTO Paikkakunta (nimi)
	VALUES ('Helsinki');
	
INSERT INTO Paikkakunta (nimi)
	VALUES ('Espoo');
	
INSERT INTO Paikkakunta (nimi)
	VALUES ('Vantaa');
	
/* Tapahtuman lisääminen */
	
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)
	VALUES (2, 2, 'Ravintola', 'Viininmaisteluilta', '2016-10-25', '18:00', 1, 'Dresscode: smart casual.');	
			
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)	
	VALUES (3, 3, 'Kotona', 'Peli-ilta', '2016-11-11', '15:00', 1, 'Pelaillaan lautapelejä, jee!');
			
INSERT INTO Tapahtuma (TapLuojaId, teema, paikka, TapNimi, pvm, aika, paikkakunta, lisatiedot)
	VALUES (4, 3, 'Kotona', 'Lanit', '2016-11-23', '15:00', 2, 'Lanitellaan yhdessä');
	
/* Osallistujien lisääminen */
	
INSERT INTO Osallistuja (etunimi, sukunimi, email)
	VALUES ('Jaakko', 'Jaakkima', 'jaakkojaakkima@gmail.com'),
	       ('Jenna', 'Jäärä', 'jennajaara@luukku.com'),
	       ('Juha', 'Juupas', 'juhajuupas@gmail.com');
	      
INSERT INTO TapahtumaOsallistuja (osallistuja_id, tapahtuma_id)
	VALUES (2, 2),
	       (1, 3);
			