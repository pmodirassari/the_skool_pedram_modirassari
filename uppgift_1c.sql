SET PAGESIZE 100;

DESC system.tabell3;

-- 1. a) Antal AVSLAGNA ansökningar per utbildningsområde

SELECT
    utbildningsområde,
    COUNT(beslut) AS antal_avslagna
FROM tabell3
WHERE beslut = 'Avslag'
GROUP BY utbildningsområde
ORDER BY antal_avslagna DESC;


EXIT

