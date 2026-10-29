SET PAGESIZE 100;

DESC system.tabell3;

-- uppgift 2 & 3

-- fråga 1 - Hur stor procent av ansökningar med utbildningar på distans respektive platsbundna blev beviljade? 

SELECT
    utbildningsområde,
    ROUND(SUM(CASE WHEN studieform = 'Bunden' AND beslut = 'Beviljad' THEN 1 ELSE 0 END)/NULLIF(SUM(CASE WHEN studieform='Bunden' THEN 1 ELSE 0 END), 0)*100, 2) AS Procent_beviljade_platsbundna,
    ROUND(SUM(CASE WHEN studieform = 'Distans' AND beslut = 'Beviljad' THEN 1 ELSE 0 END)/NULLIF(SUM(CASE WHEN studieform='Distans' THEN 1 ELSE 0 END), 0)*100, 2) AS Procent_beviljade_distans
FROM tabell3
GROUP BY utbildningsområde;

-- fråga 2

SELECT
    COUNT(utbildningsnamn) AS Antal_utbildningar_med_AI_i_namnet
FROM tabell3
WHERE utbildningsnamn LIKE '%AI%';

-- fråga 3


EXIT
