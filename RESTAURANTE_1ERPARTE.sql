SELECT * FROM menu_items;
SELECT * FROM order_details;

--Explorar la tabla “menu_items”.
--Encontrar el número de artículos en el menú
SELECT COUNT (item_name)
FROM menu_items;
/*El restaurante cuenta con 32 artículos en el menú*/


--¿Cuál es el artículo menos caro y el más caro en el menú?
SELECT price, item_name
FROM menu_items
ORDER BY price ASC;

SELECT item_name, price
FROM menu_items
ORDER BY price DESC;
/*El artículo más barato del menú es el 5 usd que corresponde a Edamames
y el producto más costoso corresponde a Shrimp Scampi con un costo de 19.95usd*/

Select * from menu_items;

-- ¿Cuántos platos americanos hay en el menú?
SELECT COUNT (*)
FROM menu_items
WHERE category LIKE ='American';
/*Hay 6 platos Americanos en el menú*/


-- ¿Cuál es el precio promedio de los platos?
SELECT ROUND (AVG (price),2)
FROM menu_items;
/*El precio promedio de los platos es de 13.29usd*/

