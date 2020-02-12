SELECT c.Name, ci.Name, ci.Population / c.Population * 100 AS Percentage
FROM Country c, City ci
WHERE c.Code = ci.CountryCode
AND c.LifeExpectancy > 75
GROUP BY Percentage DESC