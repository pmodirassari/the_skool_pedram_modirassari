SET PAGESIZE 100;

DESC system.tabell3;

-- 1. e) Antal AVSLAGNA ansökningar per utbildningsnamn inom DATA/IT

SELECT
    utbildningsnamn,
    COUNT(beslut) AS antal_avslagna
FROM tabell3
WHERE beslut = 'Avslag' AND utbildningsområde = 'Data/IT'
GROUP BY utbildningsnamn
ORDER BY utbildningsnamn;


EXIT

