SELECT co.name, Language, co.Population, cl.Percentage
FROM Country co
JOIN CountryLanguage cl
ON co.Code = cl.CountryCode
WHERE (co.population / 100) * cl.Percentage > 1000000
ORDER BY (co.population / 100) * cl.Percentage DESC