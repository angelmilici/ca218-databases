SELECT c.Name, c.Population, COUNT(DISTINCT Language) AS LangCount
FROM country c
JOIN countrylanguage cl ON c.Code = cl.CountryCode
WHERE c.Population > (SELECT AVG(Population) FROM country)
GROUP BY c.Name
ORDER BY LangCount DESC;