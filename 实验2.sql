USE world;

SELECT Name,Continent 
FROM country ORDER BY NAME DESC;

SELECT Continent,COUNT(Name) AS country_count  
FROM country  
GROUP BY Continent;

SELECT Continent,COUNT(Name) AS numCountry
FROM country
GROUP BY Continent
HAVING COUNT(Name) > 30
ORDER BY numCountry DESC;

SELECT SUM(Population)
FROM country
WHERE Continent='Asia';

SELECT Name,Population
FROM city
WHERE CountryCode='USA';

SELECT Name,Code
FROM country
WHERE Population >100000000;

SELECT Name,Population
FROM country
ORDER BY NAME DESC
LIMIT 10;

SELECT Name,LifeExpectancy
FROM country
WHERE  LifeExpectancy <= 80 AND LifeExpectancy >= 70
ORDER BY LifeExpectancy DESC;

SELECT Name,Code
FROM country
WHERE Continent = 'Europe' OR Continent = 'Africa';

SELECT Name,SurfaceArea
FROM country
ORDER BY SurfaceArea DESC
LIMIT 5;

SELECT Name,SurfaceArea/Population AS SP
FROM country
WHERE Population > 0 AND SurfaceArea/Population > 0.1;

SELECT Name, Continent  
FROM country  
WHERE SUBSTRING(Code, 1, 1) = 'C';

SELECT Name, Continent  
FROM country  
WHERE Name LIKE '%island%';

SELECT Name,Code,Continent 
FROM country
WHERE LifeExpectancy IS NULL;

SELECT Name,Code,LifeExpectancy
FROM country
WHERE LifeExpectancy > 70 AND Continent='Asia' OR LifeExpectancy > 70 AND Continent='Europe';

SELECT *  
FROM country  
WHERE Continent = 'Africa'  
ORDER BY Region ASC, LifeExpectancy DESC;

SELECT AVG(LifeExpectancy)
FROM country
WHERE Continent='Asia';

SELECT Continent,MAX(LifeExpectancy)
FROM country
GROUP BY Continent;

SELECT Continent,COUNT(Code) AS count_C
FROM country
GROUP BY Continent
HAVING count(Code) > 10
ORDER BY count_C DESC;

SELECT CountryCode,count(Language)
FROM countrylanguage
GROUP BY CountryCode
HAVING count(Language) >= 6
ORDER BY count(Language) DESC;

SELECT Name,Population
FROM city
WHERE Name LIKE '%hai%' AND CountryCode = 'CHN';

SELECT District  
FROM city  
WHERE CountryCode = 'CHN' AND Name LIKE '%hai%'  
GROUP BY District  
HAVING COUNT(*) > 1;



