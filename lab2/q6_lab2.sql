SELECT Region, Population, AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM country
GROUP BY Region
ORDER BY AvgLifeExpectancy DESC;