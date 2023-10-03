
WITH food_purchase_qty AS (
SELECT 
    F.food_name AS FOOD,
    SUM(P.purchase_qauntity) AS TOTAL_QUANTITY,
	DENSE_RANK() OVER (ORDER BY SUM(P.purchase_qauntity) DESC) AS Ranking
FROM
    FoodListing AS F
        INNER JOIN
    PurchaseTransactions AS P ON P.item_id = F.item_id
 GROUP BY F.food_name  ORDER By TOTAL_QUANTITY DESC
) SELECT FOOD,TOTAL_QUANTITY
FROM food_purchase_qty where Ranking=3;
