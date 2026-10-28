SET PAGESIZE 100;

DESC system.tabell3;

-- 1. a) Antal ansökningar per utbildningsområde, sorterat på flest ansökningar

SELECT
    utbildningsområde,
    SUM(sökta_utbildningsomgångar) AS summa_sökta_utbildningsomgångar
FROM tabell3
GROUP BY utbildningsområde
ORDER BY summa_sökta_utbildningsomgångar DESC;


EXIT

