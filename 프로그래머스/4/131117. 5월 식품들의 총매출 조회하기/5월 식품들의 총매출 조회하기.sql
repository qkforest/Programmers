SELECT O.PRODUCT_ID, PRODUCT_NAME, PRICE * SUM(AMOUNT) AS TOTAL_SALES
FROM FOOD_ORDER AS O LEFT JOIN FOOD_PRODUCT AS P
ON O.PRODUCT_ID = P.PRODUCT_ID
WHERE PRODUCE_DATE BETWEEN '2022-05-01' AND '2022-05-31' AND P.PRODUCT_ID IS NOT NULL
GROUP BY O.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, O.PRODUCT_ID