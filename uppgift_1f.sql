SET PAGESIZE 100;

DESC system.tabell3;

-- 1. f) Antal BEVILJADE ansökningar per utbildningsanordnare administrativ enhet & utbildningsnamn inom DATA/IT

SELECT
    utbildningsanordnare_administr,
    utbildningsnamn,
    COUNT(beslut) AS antal_beviljade
FROM tabell3
WHERE beslut = 'Beviljad' AND utbildningsområde = 'Data/IT'
GROUP BY
    utbildningsanordnare_administr,
    utbildningsnamn
ORDER BY utbildningsanordnare_administr ASC;

EXIT

