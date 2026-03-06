USE world;
-- CREATE VIEW Eastern_Asia_City
-- AS(
-- 	SELECT ct.CountryCode AS CodeC,ct.name AS CityName,ct.District,c.name AS CName,ct.Population AS ctPopulation
--     FROM city AS ct,country AS c
--     WHERE ct.CountryCode = c.Code AND c.Continent = 'Asia' AND ct.Population >= 1000000
-- );
-- CREATE VIEW CHN_500City
-- AS (
--  	SELECT *
--     FROM Eastern_Asia_City
--     WHERE CodeC = 'CHN' AND ctPopulation >= 5000000
-- );
-- CREATE VIEW Continent
-- AS (
-- 	SELECT Continent,COUNT(Code) AS Country_count
--     FROM country
--     GROUP BY Continent
--     HAVING COUNT(Code)>30
--     ORDER BY Country_count DESC
-- );
-- CREATE TABLE city_new
-- SELECT *
-- FROM city
-- WHERE FALSE;

INSERT INTO city_new(ID,Name,CountryCode,District,Population)
SELECT c.ID,c.Name,c.CountryCode,c.District,c.Population
FROM city c
JOIN country co on c.CountryCode = co.Code
WHERE co.Continent = 'Europe';

INSERT INTO city_new(ID,Name,CountryCode,District,Population)
SELECT c.ID,c.Name,c.CountryCode,c.District,c.Population
FROM city c
JOIN country co on c.CountryCode = co.Code
WHERE co.Continent = 'North America';

DELETE
FROM city_new
WHERE CountryCode = 'UK'

