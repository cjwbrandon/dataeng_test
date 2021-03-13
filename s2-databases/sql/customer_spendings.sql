SELECT st.customer_name, SUM(cc.price) as spending
FROM store.sales_transactions as st
LEFT JOIN store.car_inventory as ci ON st.serial_number = ci.serial_number
LEFT JOIN store.car_characteristics as cc ON (ci.model_name = cc.model_name AND ci.manufacturer = cc.manufacturer)
GROUP BY st.customer_name;