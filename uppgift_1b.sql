SET PAGESIZE 100;

DESC system.tabell3;

-- 1. a) Antal BEVILJADE ansökningar per utbildningsområde

SELECT
    utbildningsområde,
    COUNT(beslut) AS antal_beviljade
FROM tabell3
WHERE beslut = 'Beviljad'
GROUP BY utbildningsområde
ORDER BY antal_beviljade DESC;


EXIT

