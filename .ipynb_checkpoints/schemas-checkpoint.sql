DROP TABLE IF EXISTS card_holder;
CREATE TABLE card_holder (
	id INT 
	, name VARCHAR (255)
	, CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "id"
     )

);

DROP TABLE IF EXISTS credit_card;
CREATE TABLE credit_card (
	card VARCHAR(20) 
	, id_card_holder INT 
	, CONSTRAINT "pk_credit_card" PRIMARY KEY (
        "card")
);

DROP TABLE IF EXISTS merchant;
CREATE TABLE merchant (
	id INT 
	, name VARCHAR(255)
	, id_merchant_category INT
	, CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id")
);

DROP TABLE IF EXISTS merchant_category;
CREATE TABLE merchant_category (
	id INT 
	, name VARCHAR(255)
	, CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "id")
);

DROP TABLE IF EXISTS transaction;
CREATE TABLE transaction (
	id INT 
	, date timestamp without time zone NOT NULL
	, amount FLOAT
	, card VARCHAR(20)
	, id_merchant INT
	, CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id")
);