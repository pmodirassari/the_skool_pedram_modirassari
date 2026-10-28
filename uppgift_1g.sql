SET PAGESIZE 100;

DESC system.tabell3;

-- 1. g) Topp 5 län efter antal beviljade ansökningar

SELECT
    län,
    COUNT(beslut) AS antal_beviljade
FROM tabell3
WHERE beslut = 'Beviljad'
GROUP BY
    län
ORDER BY antal_beviljade DESC
FETCH FIRST 5 ROWS ONLY;

EXIT

