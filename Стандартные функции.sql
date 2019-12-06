SELECT UPPER(Name) AS CountryName, LOWER(Continent) AS Continent FROM world.country
ORDER BY CHAR_LENGTH(Name) DESC;

SELECT Name AS CountryName, SurfaceArea / (2 * PI()) AS CircleRadius FROM world.country
ORDER BY CircleRadius DESC;

USE shop;

AlTER TABLE products ADD  


