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
	VALUES (2, 2, 'Ravintola', 'Viininmaisteluilta', '25-10-2016', '18:00', 1, 'Dresscode: smart casual.');	

	
