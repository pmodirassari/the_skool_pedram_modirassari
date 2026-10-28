SET PAGESIZE 100;

DESC system.tabell3;

-- 1. d) Antal BEVILJADE ansökningar per utbildningsnamn inom DATA/IT

SELECT
    utbildningsnamn,
    COUNT(beslut) AS antal_beviljade
FROM tabell3
WHERE beslut = 'Beviljad' AND utbildningsområde = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY utbildningsnamn;


EXIT

