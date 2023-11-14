CREATE TABLE province (
	name varchar(255) NOT NULL,
    PRIMARY KEY (`name`)
);

CREATE TABLE locality (
	`name` varchar(255) NOT NULL,
	province varchar(255) NOT NULL,
    PRIMARY KEY (name),
    FOREIGN KEY (province) REFERENCES province(`name`)
);

CREATE TABLE shop (
	id_shop int NOT NULL,
    adress varchar(255) NOT NULL,
    cp int NOT NULL,
    locality varchar(255) NOT NULL,
    PRIMARY KEY (id_shop),
    FOREIGN KEY (locality) REFERENCES locality(`name`)
);  

CREATE TABLE agent (
	id int NOT NULL,
	`name` varchar(255) NOT NULL, 
	lastname varchar(255) NOT NULL,
    nif varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	cp int NOT NULL,
	locality varchar(255) NOT NULL,
	telephone int NOT NULL,
    tipe ENUM('client', 'employee') NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (locality) REFERENCES locality(name)
	);
    
CREATE TABLE `client` (
	id_client int NOT NULL,
    PRIMARY KEY (id_client),
    FOREIGN KEY (id_client) REFERENCES agent(id)
);

CREATE TABLE employee (
	id_employee int NOT NULL,
    id_shop int NOT NULL,
    PRIMARY KEY (id_employee),
    FOREIGN KEY (id_employee) REFERENCES agent(id),
	FOREIGN KEY (id_shop) REFERENCES shop(id_shop)
);

CREATE TABLE delivery_man (
	id_delivery_man int NOT NULL,
    PRIMARY KEY (id_delivery_man),
    FOREIGN KEY (id_delivery_man) REFERENCES employee(id_employee)
);

CREATE TABLE `cook`(
	`id_cook` int NOT NULL,
    PRIMARY KEY (`id_cook`),
    FOREIGN KEY (`id_cook`) REFERENCES employee(id_employee)
);

CREATE TABLE product (
	id_product int NOT NULL,
    `name` varchar(255) NOT NULL,
    `description` varchar(255) NOT NULL,
    image binary DEFAULT NULL,
    price float NOT NULL,
    PRIMARY KEY (id_product)
);

CREATE TABLE `product_cook` (
  `cook` int NOT NULL,
  `product` int NOT NULL,
  PRIMARY KEY (`cook`, `product`),
  FOREIGN KEY (`cook`) REFERENCES `cook`(`id_cook`),
  FOREIGN KEY (`product`) REFERENCES `product`(`id_product`)
);


CREATE TABLE `hamburger` (
  `id_product` integer NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY(`id_product`),
  FOREIGN KEY (`id_product`) REFERENCES product (id_product)
);

CREATE TABLE `drink` (
  `id_product` integer NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY(`id_product`),
  FOREIGN KEY (`id_product`) REFERENCES product (id_product)
);

CREATE TABLE `category` (
  `id_category` integer NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_category`)
);

CREATE TABLE `pizza` (
  `id_product` integer NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` integer NOT NULL,
  PRIMARY KEY(`id_product`),
  FOREIGN KEY (`id_product`) REFERENCES product (id_product),
  FOREIGN KEY (`category`) REFERENCES `category` (`id_category`)
);


CREATE TABLE order_table (
	id_order int NOT NULL,
    `date` timestamp NOT NULL,
    price float NOT NULL,
    shop int NOT NULL,
    products int NOT NULL,
    `client` int NOT NULL,
    PRIMARY KEY (id_order),
    FOREIGN KEY (shop) REFERENCES shop(id_shop),
	FOREIGN KEY (`client`) REFERENCES client(id_client),
    FOREIGN KEY (products) REFERENCES product(id_product)
);	 

CREATE TABLE pick_up (
	id_order int NOT NULL,
	PRIMARY KEY (id_order),
    FOREIGN KEY (id_order) REFERENCES order_table(id_order)
);

CREATE TABLE delivery (
	id_order int NOT NULL,
    delivery_man integer NOT NULL,
	PRIMARY KEY (id_order),
	FOREIGN KEY (id_order) REFERENCES order_table(id_order),
	FOREIGN KEY (delivery_man) REFERENCES delivery_man(id_delivery_man)
);
