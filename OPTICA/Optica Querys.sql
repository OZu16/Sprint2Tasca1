-- Llista el total de factures d'un client/a en un període determinat.
SELECT agent.name, transaction.id_transaction, transaction.buyer, transaction.seller, transaction.sale_date
FROM transaction
JOIN client ON transaction.buyer = client.id
JOIN agent ON client.id = agent.id
WHERE agent.name = 'manolo' AND HOUR(transaction.sale_date) = 15;  

-- Llista els diferents models d'ulleres que ha venut un empleat/da durant un any.
SELECT agent.name, glasses.id_glasses, transaction.sale_date
FROM glasses
JOIN transaction ON glasses.transaction = transaction.id_transaction
JOIN employee ON transaction.seller = employee.id
JOIN agent ON employee.id = agent.id
WHERE agent.name = 'javi' AND YEAR(transaction.sale_date) = 2023;

-- 	Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.
SELECT DISTINCT supplier.id  AS id_del_proveidor
FROM transaction
JOIN glasses ON transaction.id_transaction = glasses.transaction
JOIN brand ON glasses.brand = brand.id_brand
JOIN supplier ON brand.supplier = supplier.id
WHERE glasses.transaction IS NOT NULL;
