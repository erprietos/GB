config { type: "table" }

SELECT
  order_date AS date,
  order_id AS order_id,
  order_status AS order_status,
  SUM(item_count) AS item_count,
  SUM(amount) AS revenue

FROM ${ref("store_clean")}

GROUP BY 1, 2