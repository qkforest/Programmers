SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAXSIZE - SIZE_OF_COLONY AS YEAR_DEV, ID
FROM ECOLI_DATA
LEFT JOIN (SELECT MAX(SIZE_OF_COLONY) AS MAXSIZE, YEAR(DIFFERENTIATION_DATE) AS YEAR
           FROM ECOLI_DATA
           GROUP BY YEAR) M
ON YEAR(DIFFERENTIATION_DATE) = M.YEAR
ORDER BY YEAR, YEAR_DEV