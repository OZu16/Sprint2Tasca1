CREATE TABLE agent (
	id int NOT NULL,
    `name` varchar(255) NOT NULL,
    street varchar(255) NOT NULL,
    `number` int NOT NULL,
    door varchar(255) NOT NULL,
    city varchar(255) NOT NULL,
    cp int NOT NULL,
    country varchar(255) NOT NULL,
    tel int NOT NULL,
    mail varchar(255) NOT NULL,
    `type` ENUM('client', 'employee', 'supplier') NOT NULL,
    PRIMARY KEY (id)
    );
    
CREATE TABLE client (
	id int NOT NULL,
    register_date timestamp NOT NULL,
    referred int DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES agent(id),
    FOREIGN KEY (referred) REFERENCES client(id)
);

CREATE TABLE employee (
	id int NOT NULL,
    FOREIGN KEY (id) REFERENCES agent(id)
);

CREATE TABLE supplier (
	id int NOT NULL,
    FOREIGN KEY (id) REFERENCES agent(id)
);

CREATE TABLE transaction (
	id_transaction int NOT NULL,
    buyer int NOT NULL,
    seller int NOT NULL,
    sale_date timestamp NOT NULL,
    PRIMARY KEY (id_transaction),
    FOREIGN KEY (buyer) REFERENCES client (id),
    FOREIGN KEY (seller) REFERENCES employee(id)
);

CREATE TABLE brand (
	id_brand int NOT NULL,
    supplier int NOT NULL,	
    PRIMARY KEY (id_brand),
    FOREIGN KEY (supplier) REFERENCES supplier(id)
);

CREATE TABLE glasses (
	id_glasses int NOT NULL,
    `transaction` int DEFAULT NULL,
    brand int NOT NULL,
    graduation_l float NOT NULL,
	graduation_r float NOT NULL,
    munture varchar(255) NOT NULL,
    colour_munture varchar(255) NOT NULL,
    colour_glass varchar(255) NOT NULL,
    price float NOT NULL,
    PRIMARY KEY (id_glasses),
    FOREIGN KEY (transaction) REFERENCES transaction(id_transaction),
    FOREIGN KEY (brand) REFERENCES brand(id_brand)
);
