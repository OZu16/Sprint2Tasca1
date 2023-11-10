INSERT INTO province (`name`) VALUES
	('Barcelona'),
	('Girona'),
	('Lleida'),
	('Tarragona');

INSERT INTO locality (`name`, province) VALUES
	('Barcelona', 'Barcelona'),
	('Hospitalet de Llobregat', 'Barcelona'),
	('Olot', 'Girona'),
	('Lleida', 'Lleida'),
	('Reus', 'Tarragona');

INSERT INTO shop (id_shop, adress, cp, locality) VALUES
	(1, 'pizza hut 1', 12345, 'Barcelona'),
	(2, 'pizza hut 2', 54321, 'Reus');

INSERT INTO agent (id, `name`, lastname, nif, address, cp, locality, telephone, tipe) VALUES
	(1, 'joan', 'Doe', '123456789A', 'Avenida de las Flores 123, Ciudad Imaginaria, Provincia 1, 12345', 12345, 'Barcelona', 555555555, 'client'),
	(2, 'javi', 'Smith', '987654321B', 'Calle de los Sueños 456, Pueblo Fantástico, Provincia 2, 54321', 54321, 'Reus', 666666666, 'employee'),
	(3, 'osar', 'sanchez', '97854279Z', 'Paseo de la Luna 789, Villa Mágica, Provincia 3, 67890', 08018, 'Barcelona', 456123789, 'employee'),
	(4, 'marc', 'mamut', '64524178D', 'Camino de las Estrellas 1011, Ciudad Celestial, Provincia 1, 64542', 54321, 'Reus', 789456786, 'employee'),
	(5, 'juanlu', 'portu', '31214569O', 'Rincón Encantado 1213, Pueblo de Ensueño, Provincia 2, 13131', 96321, 'Hospitalet de Llobregat', 123541789, 'employee'),
	(6, 'rosa', 'melano', '36965874G', 'Sendero de las Mariposas 1415, Ciudad Colorida, Provincia 3, 14141', 45789, 'Hospitalet de Llobregat', 978564258, 'employee'),
	(7, 'clara', 'sanchez', '64547896K', 'Callejón de las Maravillas 1617, Villa Encantadora, Provincia 1, 01346', 30476, 'Reus', 456896379, 'client');

INSERT INTO `client` (id_client) VALUES
	(1),
	(7);
    
INSERT INTO employee (id_employee, id_shop) VALUES
	(2, 1),
	(3, 1),
    (4, 1),
    (5, 1),
    (6, 2);


INSERT INTO delivery_man (id_delivery_man) VALUES
	(3),
	(4);

INSERT INTO cook (id_cook) VALUES
	(2),
	(5),
    (6);

INSERT INTO product (id_product, `name`, `description`, image, price) VALUES
	(1, 'hamburgesa', 'burger bbq', NULL, 5.99),
	(2, 'pizza bbq', 'clasic pizza bbq', NULL, 7.99),
	(3, 'pizza mediterranea', 'clasic pizza mediterranea', NULL, 7.99),
	(4, 'pizza mozzarela', 'clasic pizza mozzarela', NULL, 7.99),
	(5, 'pizza vegana', 'vegana', NULL, 9.99),
	(6, 'zumo de piña', 'zumito fresquito', NULL, 2.99);

INSERT INTO product_cook (product_cook, cook_employee_id) VALUES
	(1, 2),
	(1, 5),
    (2, 5),
    (3, 5),
    (4, 5),
    (5, 2),
    (6, 6);

INSERT INTO hamburger (id_product, `name`) VALUES
	(1, 'hamburgesa');


INSERT INTO drink (id_product, `name`) VALUES
	(6, 'zumo de piña');


INSERT INTO category (id_category, category_name) VALUES
	(1, 'vegeta'),
	(2, 'no vegeta');

INSERT INTO pizza (id_product, `name`, category) VALUES
	(2, 'pizza bbq', 2),
	(3, 'pizza mediterranea', 2),
	(4, 'pizza mozzarela', 2),
	(5, 'pizza vegeta', 1);

INSERT INTO order_table (id_order, `date`, price, shop, products, `client`) VALUES
	(1, '2023-11-09 12:30:00', 30.30, 1, 1, 1),
	(2, '2023-11-09 18:45:00', 19.98, 2, 6, 7);

INSERT INTO pick_up (id_order) VALUES
	(1),
	(2);

INSERT INTO delivery (id_order, delivery_man) VALUES
	(1, 3),
    (2, 4);