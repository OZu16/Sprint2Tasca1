INSERT INTO agent (id, `name`, street, `number`, door, city, cp, tel, country, mail, `type`)
VALUES
    (1, 'manolo', 'Gran Vía', 9, 2, 'bcn', 08018, 645424427, 'spain', 'manolo@gmail.com', 'client'),
    (2, 'paca', 'Avenida de la Alameda', 3, 139, 'bcn', 08524, 589531452, 'spain', 'paca@gmail.com', 'client'),
    (3, 'javi', 'Paseo del Prado', 8, 1, 'tarragona', 99999, 586321452, 'spain', 'javi@gmail.com', 'employee'),
    (4, 'marc', 'Plaza Mayor', 6, 3, 'sevilla', 63489, 66666666, 'spain', 'marc@gmail.com', 'employee'),
    (5, 'nunito', 'Carrer de la Rambla', 9, 2, 'bcn', 11111, 789632569, 'spain', 'nunito@gmail.com', 'supplier'),
    (6, 'antonio', 'Calle de la Puerta del Sol', 32, 4, 'madrid', 69825, 645826637, 'spain', 'antonio@gmail.com', 'supplier'),
    (7, 'oriol', 'Avenida de la Castellana', 96, 2, 'bcn', 61617, 648964732, 'spain', 'oriol@gmail.com', 'supplier');
INSERT INTO client (id, register_date, referred)
VALUES
    (1, '2023-01-01 10:00:00', null),
    (2, '2023-01-02 11:30:00', 1);
    
INSERT INTO employee (id)
VALUES
    (3),
    (4);
    
INSERT INTO supplier (id)
VALUES
    (5),
    (6),
    (7);
    
INSERT INTO transaction (id_transaction, buyer, seller, sale_date)
VALUES
    (1, 1, 3, '2023-02-01 15:00:00'),
    (2, 2, 4, '2023-02-02 16:30:00'),
    (3, 2, 4, '2022-03-02 13:30:00');
    
INSERT INTO brand (id_brand, supplier)
VALUES
    (1, 5),
    (2, 6),
    (3, 7);
    
INSERT INTO glasses (id_glasses, transaction, brand, graduation_l, graduation_r, munture, colour_munture, colour_glass, price)
VALUES
    (1, 1, 1, 2.0, 1.5, 'plastic', 'negre', 'clar', 100.00),
    (2, 2, 2, 1.5, 2.0, 'metall', 'metalic', 'tintat', 120.00),
    (3, 3, 2, 1.5, 2.0, 'metall', 'metalic', 'tintat', 120.00),
    (4, null, 2, 1.5, 2.0, 'metall', 'metalic', 'tintat', 120.00),
    (5, null, 2, 1.5, 2.0, 'metall', 'metalic', 'clar', 120.00),
    (6, null, 3, 1.5, 2.0, 'metall', 'metalic', 'blau', 99.99);