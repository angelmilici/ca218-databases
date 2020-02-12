SELECT ci.Name AS CityName, c.Name AS CountryName
FROM city ci, country c
WHERE ci.CountryCode = c.Code
AND ci.Name LIKE 'A%';