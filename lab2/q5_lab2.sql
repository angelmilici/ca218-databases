SELECT Name, Count(Name) AS CityCount, CountryCode, ID
FROM City
GROUP BY CountryCode
ORDER BY CityCount DESC;