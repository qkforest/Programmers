SELECT ID, IFNULL(CHILD_COUNT, 0) AS CHILD_COUNT
FROM ECOLI_DATA
LEFT JOIN (SELECT PARENT_ID, COUNT(PARENT_ID) AS CHILD_COUNT
           FROM ECOLI_DATA
           GROUP BY PARENT_ID
           HAVING PARENT_ID IS NOT NULL) COUNT
ON ECOLI_DATA.ID = COUNT.PARENT_ID
ORDER BY ID