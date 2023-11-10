-- Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat
SELECT drink.id_product, drink.name
FROM drink
JOIN product ON drink.id_product = product.id_product
JOIN order_table ON product.id_product = order_table.products
JOIN shop ON order_table.shop = shop.id_shop
JOIN locality ON shop.locality = locality.name
WHERE locality.name = 'Reus';

-- Llista quantes comandes ha efectuat un determinat empleat/da.
SELECT agent.name, COUNT(order_table.id_order) AS numero_comandes
FROM order_table
JOIN shop ON order_table.shop = shop.id_shop
JOIN employee ON shop.id_shop = employee.id_shop
JOIN agent ON employee.id_employee = agent.id
WHERE agent.tipe = 'employee' AND agent.name = 'javi'
GROUP BY agent.name;
