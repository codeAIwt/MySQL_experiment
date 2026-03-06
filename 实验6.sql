USE world;

SELECT name 
FROM country
WHERE code NOT IN(
	SELECT CountryCode
    FROM CountryLanguage
    WHERE Language IN (
		SELECT language
        FROM countrylanguage
        WHERE CountryCode = 'USA'
    )
);
SELECT C.name 
FROM country C
WHERE NOT EXISTS(
SELECT *
    FROM CountryLanguage C1
    WHERE C.Code = C1.CountryCode
		AND C1.language IN (
		SELECT language
        FROM countrylanguage C2
        WHERE C2.CountryCode = 'USA' 
    )
);

SELECT DISTINCT c.Code, c.Name  
FROM country c  
JOIN countrylanguage cl ON c.Code = cl.CountryCode  
WHERE c.Code <> 'GRC'  
  AND EXISTS (  
      SELECT Language  
      FROM countrylanguage  
      WHERE CountryCode = 'GRC'  
        AND Language = cl.Language  
  )  
GROUP BY c.Code, c.Name  
HAVING COUNT(DISTINCT cl.Language) = (  
    SELECT COUNT(DISTINCT Language)  
    FROM countrylanguage  
    WHERE CountryCode = 'GRC'  
);
