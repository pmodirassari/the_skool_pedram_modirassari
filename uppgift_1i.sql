SET PAGESIZE 100;

DESC system.tabell3;

-- 1. i) Antal utbildningar som innehåller ordet AI

SELECT
    utbildningsnamn
FROM tabell3
WHERE utbildningsnamn LIKE '%AI%'
GROUP BY utbildningsnamn;

SELECT
    COUNT(utbildningsnamn) AS Antal_utbildningar_med_AI_i_namnet
FROM tabell3
WHERE utbildningsnamn LIKE '%AI%';

EXIT
