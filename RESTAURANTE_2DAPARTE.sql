--Explorar la tabla “order_details”.
SELECT * FROM order_details;

-- ¿Cuántos pedidos únicos se realizaron en total?
SELECT COUNT (DISTINCT (order_id))
FROM order_details;
/*Se realizaron 5,370 pedidos únicos*/

--¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
SELECT order_id, COUNT (item_id)
FROM order_details
GROUP BY order_id
ORDER BY COUNT (item_id) DESC
LIMIT 5;
/*Las ordenes con mayor número de items vendidos fueron la, 440,2675,3473,4305 Y 443*/

--¿Cuándo se realizó el primer pedido y el último pedido?
SELECT order_date, order_id
FROM order_details
ORDER BY order_date ASC;

SELECT order_date, order_id
FROM order_details
ORDER BY order_date DESC;
/*El primer pedido se realizó en 01-01-2023 y el último el 31-03-2023*/

-- ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
SELECT COUNT (order_id)
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';
/*El restaurante tuvo 702 pedidos del primero al cinco de enero de 2023*/
