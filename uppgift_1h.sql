SET PAGESIZE 100;

DESC system.tabell3;

-- 1. h) Andel distans och andel bundna utbildningar inom respektive utbildningsområde

SELECT
    utbildningsområde,
    COUNT(studieform) AS total,
    ROUND(SUM((CASE WHEN studieform = 'Bunden' THEN 1 ELSE 0 END))/COUNT(studieform)*100, 2) AS procent_andel_bundna,
    ROUND(SUM((CASE WHEN studieform = 'Distans' THEN 1 ELSE 0 END))/COUNT(studieform)*100, 2) AS procent_andel_distans
FROM tabell3
GROUP BY utbildningsområde;
    



EXIT

