SELECT Name, District FROM world.city;

SELECT Name AS RussianCities FROM world.city
WHERE CountryCode = 'RUS'
ORDER BY Name;

SELECT Name AS 'CitiesOfSpain&Portugal&Greece' FROM world.city
WHERE CountryCode IN ('ESP', 'PRT', 'GRC')
ORDER BY Name DESC;

SELECT Name AS Cities, Population FROM world.city
WHERE Population BETWEEN 300000 AND 500000;

SELECT Name AS 'CitiesFrom"A"' FROM world.city
WHERE Name LIKE 'A%';

SELECT Name AS 'CitiesContain"A"' FROM world.city
WHERE Name LIKE '%a%';

SELECT Name AS RussianCities, Population FROM world.city
WHERE CountryCode = 'RUS' AND Population >= 1000000;

SELECT Name AS SpainAndGreekCities, CountryCode, Population FROM world.city
WHERE (CountryCode = 'ESP' AND Name LIKE 'A%') OR (CountryCode = 'GRC' AND Population < 200000); 
