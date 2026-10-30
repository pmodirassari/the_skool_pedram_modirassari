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

-- fråga 2 - Hur stor del av de sökta utbildningsomgångarna blir beviljade? Och med vilken grad sjunker antalet beroede på om det är en utbildningsomgång som är nära i tiden (0) eller om den ges längre fram i tiden (5)? M.a.o.: Om vi ser till alla beviljade platser, hur är dessa fördelade över omgångarna procentuellt?

SELECT
    utbildningsområde,
    ROUND(SUM(beviljade_platser_utbildningso) / NULLIF(SUM(beviljade_platser_totalt), 0)*100, 2) AS procent_omg_1,
    ROUND(SUM(beviljade_platser_utbildnings2) / NULLIF(SUM(beviljade_platser_totalt), 0)*100, 2) AS procent_omg_2,
    ROUND(SUM(beviljade_platser_utbildnings3) / NULLIF(SUM(beviljade_platser_totalt), 0)*100, 2) AS procent_omg_3,
    ROUND(SUM(beviljade_platser_utbildnings4) / NULLIF(SUM(beviljade_platser_totalt), 0)*100, 2) AS procent_omg_4,
    ROUND(SUM(beviljade_platser_utbildnings5) / NULLIF(SUM(beviljade_platser_totalt), 0)*100, 2) AS procent_omg_5
FROM tabell3
GROUP BY utbildningsområde
ORDER BY utbildningsområde;

-- fråga 3


EXIT
