CREATE TABLE "cars_for_sale" (
  "car_id" serial PRIMARY KEY,
  "car_make" varchar(255),
  "car_model" varchar(255),
  "sticker_price" float4,
  "color" varchar(255)
);

CREATE TABLE "salesperson" (
  "salesperson_id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255)
);

CREATE TABLE "service_history" (
  "service_ticket_id" int PRIMARY KEY
);

CREATE TABLE "customer" (
  "customer_id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255),
  "phone_number" varchar(255)
);

CREATE TABLE "mechanics" (
  "mechanic_id" int PRIMARY KEY,
  "mechanic_first_name" varchar(255),
  "mechanic_last_name" varchar(255)
);

CREATE TABLE "invoice" (
  "invoice_id" int PRIMARY KEY,
  "customer_id" int,
  "salesperson_id" int,
  "car_id" int,
  "sale_price" float4
);

CREATE TABLE "cars_in_service" (
  "service_ticket_id" int PRIMARY KEY,
  "car_service_id" int,
  "car_make" varchar(255),
  "car_model" varchar(255),
  "color" varchar(255),
  "mechanic_id" int
);

ALTER TABLE "invoice" ADD FOREIGN KEY ("salesperson_id") REFERENCES "salesperson" ("salesperson_id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("car_id") REFERENCES "cars_for_sale" ("car_id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "service_history" ADD FOREIGN KEY ("service_ticket_id") REFERENCES "cars_in_service" ("service_ticket_id");

ALTER TABLE "cars_in_service" ADD FOREIGN KEY ("mechanic_id") REFERENCES "mechanics" ("mechanic_id");

