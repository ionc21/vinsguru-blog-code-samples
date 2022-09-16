DROP TABLE IF EXISTS productdb.customer;
DROP TABLE IF EXISTS productdb.product;
DROP TABLE IF EXISTS productdb.purchase_order;

CREATE TABLE productdb.customer(
                      id serial PRIMARY KEY,
                      firstname VARCHAR (50),
                      lastname VARCHAR (50),
                      state VARCHAR(10)
);

CREATE TABLE productdb.product(
                        id serial PRIMARY KEY,
                        description VARCHAR (500),
                        price numeric (10,2) NOT NULL
);

CREATE TABLE productdb.purchase_order(
                               id serial PRIMARY KEY,
                               user_id integer references customer (id),
                               product_id integer references product (id),
                               order_date date
);

CREATE TABLE productdb.purchase_order_summary(
                                         id VARCHAR(255) PRIMARY KEY,
                                         total_sale double precision
);