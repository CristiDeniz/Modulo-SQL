/*Realizar un left join entre entre order_details y menu_items con el identificador
item_id(tabla order_details) y menu_item_id(tabla menu_items)*/
SELECT *
FROM order_details AS A
LEFT JOIN menu_items AS B
ON A.item_id=B.menu_item_id;

--Cuáles fueron los platillos más pedido del menú
SELECT COUNT (A.order_id),B.item_name
FROM order_details AS A
LEFT JOIN menu_items AS B
ON A.item_id=B.menu_item_id
GROUP BY B.menu_item_id
ORDER BY COUNT (A.order_id) DESC
LIMIT 5;
/*Los cinco platillos más vendidos por en el restaurante fueron 1.Hamburguesa,2.Edamame,3.Korean beef bowl,4.Cheeseburger
y 5.French fries*/
SELECT COUNT (A.order_id),B.item_name
FROM order_details AS A
LEFT JOIN menu_items AS B
ON A.item_id=B.menu_item_id
GROUP BY B.menu_item_id
ORDER BY COUNT (A.order_id) ASC
LIMIT 6;
/*Los cinco productos menos vendidos en el restaurante son 1. Chicken tacos, 2.Potstickers, 3.Cheese Lasagna, 4.Steak tacos 
y 5. Cheese quesadillas*/
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT MAX (price)
FROM menu_items;
--PRECIO MAX 19.95
SELECT MIN (price)
FROM menu_items;
--PRECIO MIN 5.OO
SELECT ROUND (AVG (price),2)
FROM menu_items;
--PRECIO PROMEDIO 13.29

SELECT MAX (order_date), MIN (order_date)
FROM order_details;
--Enero a Marzo

SELECT SUM (price)
FROM order_details AS A
LEFT JOIN menu_items AS B
ON A.item_id=B.menu_item_id;
--Ventas totales de 159,217.90

SELECT * FROM menu_items;

SELECT category, SUM (price) AS Venta_por_category
FROM menu_items
GROUP BY category;

SELECT SUM (price),category
FROM order_details AS A
LEFT JOIN menu_items AS B
ON A.item_id=B.menu_item_id
GROUP BY category;

SELECT price, category,
CASE
   WHEN price<=9.00 THEN 'una estrella'
   WHEN price<=14.00 THEN 'dos estrellas'
   WHEN price<=20.00 THEN 'tres estrellas'
ELSE 'sin precio'
END AS "precio calificación"
FROM menu_items;


SELECT price, category,
CASE
   WHEN price<=9.00 THEN 'una estrella'
   WHEN price<=14.00 THEN 'dos estrellas'
   WHEN price<=20.00 THEN 'tres estrellas'
ELSE 'sin precio'
END AS "precio calificación"
FROM menu_items
ORDER BY price;