SELECT CountryCode, AVG(Population) AS AveragePopulation FROM world.city
GROUP BY CountryCode
ORDER BY AveragePopulation DESC;

SELECT CountryCode, COUNT(*) As CitiesCount FROM world.city
GROUP BY CountryCode;

SELECT CountryCode, COUNT(*) As CitiesCount FROM world.city
GROUP BY CountryCode
HAVING COUNT(*) >= 2
ORDER BY CitiesCount;

SELECT CountryCode, COUNT(*) As BigCitiesCount FROM world.city
WHERE Population >= 1000000
GROUP BY CountryCode
HAVING COUNT(*) >= 2;


