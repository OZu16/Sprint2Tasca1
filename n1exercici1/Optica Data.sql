INSERT INTO agent (id, name, city, cp, tel, mail, tipe)
VALUES
    (1, 'manolo', 'bcn', 08018, 645424427, 'manolo@gmail.com', 'client'),
    (2, 'paca', 'bcn', 08524, 589531452, 'paca@gmail.com', 'client'),
    (3, 'javi', 'tarragona', 99999, 586321452, 'javi@gmail.com', 'employee'),
    (4, 'marc', 'sevilla', 63489, 66666666, 'marc@gmail.com', 'employee'),
    (5, 'nunito', 'SI', 11111, 789632569, 'nunito@gmail.com', 'supplier'),
    (6, 'antonio', 'bcn', 69825, 645826637, 'antonio@gmail.com', 'supplier'),
    (7, 'oriol', 'bcn', 61617, 648964732, 'oriol@gmail.com', 'supplier');
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