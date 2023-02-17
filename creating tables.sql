CREATE TABLE "salesman" (
	"salesman_id" SERIAL primary key,
	"first_name" VARCHAR (100),
	"last_name" VARCHAR (100)
);

create table "customer" (
	"customer_id" SERIAL primary key,
	"first_name" VARCHAR (100),
	"last_name" VARCHAR (100)
);

create table "cars" (
	"car_id" SERIAL primary key,
	"model" VARCHAR (100)
);

create table "invoice" (
	"invoice_id" SERIAL primary key,
	"customer_id" INTEGER,
	foreign key(customer_id) references customer(customer_id),
	"salesman_id" INTEGER,
	foreign key(customer_id) references salesman(salesman_id),
	"car_id" INTEGER,
	foreign key(car_id) references cars(car_id),
	"invoice_date" DATE default CURRENT_DATE,
	"invoice_time" TIME
	
);

create table "services" (
	"service_id" SERIAL primary key,
	"customer_id" INTEGER,
	foreign key(customer_id) references customer(customer_id),
	"mechanic_id" INTEGER,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	"parts_id" INTEGER,
	foreign key (parts_id) references parts(parts_id),
	"car_id" INTEGER,
	foreign key(car_id) references cars(car_id),
	"service_date" DATE default CURRENT_DATE,
	"service_time" TIME
);

create table "parts" (
	"parts_id" SERIAL primary key,
	"order_date" DATE default CURRENT_DATE,
	"order_time" TIME,
	"order_cost" NUMERIC(8,2),
	"service_id" INTEGER
	
);

create table "ordered_parts" (
	"part_id" SERIAL primary key,
	"parts_id" INTEGER,
	foreign key(parts_id) references parts(parts_id),
	"part_name" VARCHAR(100),
	"part_price" NUMERIC(8,2),
	"total_price" NUMERIC(8,2)
	
);

create table "mechanic" (
	"mechanic_id" SERIAL primary key,
	"first_name" VARCHAR(100),
	"last_name" VARCHAR(100)
);



