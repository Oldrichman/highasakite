SELECT id, etunimi, sukunimi, email, tapahtuma_id
FROM Osallistuja
LEFT JOIN TapahtumaOsallistuja
ON  Osallistuja.id = TapahtumaOsallistuja.osallistuja_id
WHERE tapahtuma_id = ?;