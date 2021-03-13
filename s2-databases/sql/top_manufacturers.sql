SELECT ci.manufacturer, SUM(cc.price) as sales, COUNT(st.serial_number) as sales_number
FROM store.car_inventory as ci
JOIN store.car_characteristics as cc ON (ci.model_name = cc.model_name AND ci.manufacturer = cc.manufacturer)
JOIN store.sales_transactions as st ON ci.serial_number = st.serial_number
WHERE date_part('month', st.datetime) = date_part('month', CURRENT_DATE)
GROUP BY ci.manufacturer
ORDER BY sales
LIMIT 3;