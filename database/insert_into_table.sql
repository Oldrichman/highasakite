/* Tapahtuman luojan tietojen lisääminen */

INSERT INTO Tapahtumanluoja (etunimi, sukunimi, email)
	VALUES ('Aleksi', 'Ahonen', 'höpöhöpö@gmail.com');
	
INSERT INTO Tapahtumanluoja (etunimi, sukunimi, email)
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
	
INSERT INTO Tapahtuma (paikka, TapNimi, pvm, aika, lisatiedot)
	VALUES ('Ravintola', 'Viininmaisteluilta', '25-10-2016', '18:00', 'Dresscode: smart casual.');	

	
