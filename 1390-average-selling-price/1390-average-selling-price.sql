SELECT
  Prices.product_id, 
  ROUND(
    ISNULL(
      CAST(SUM(UnitsSold.units * Prices.price) AS FLOAT) / NULLIF(SUM(UnitsSold.units), 0),
      0
    ),
    2
  ) AS average_price
FROM
  Prices
LEFT JOIN
  UnitsSold
  ON UnitsSold.product_id = Prices.product_id
  AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date
GROUP BY 
  Prices.product_id;
