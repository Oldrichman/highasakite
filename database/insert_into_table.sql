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
	VALUES (2, 2, 'Ravintola', 'Viininmaisteluilta', '25-10-2016', '18:00', 1, 'Dresscode: smart casual.');	

	
