SELECT c.Name, cl.Language, cl.Percentage
FROM CountryLanguage cl
JOIN Country c
ON cl.CountryCode = c.Code
WHERE cl.Language = (SELECT Language FROM countrylanguage 
		    WHERE CountryCode = cl.CountryCode
                    ORDER BY Percentage DESC LIMIT 1);

