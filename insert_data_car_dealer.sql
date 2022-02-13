insert into mechanics (mechanic_id, mechanic_first_name, mechanic_last_name)
values
(1, 'Ricky', 'Oilslick'),
(2, 'Tim', 'Tire'),
(3, 'Eddie', 'Engine')

insert into cars_in_service (service_ticket_id, car_service_id, car_make, car_model, color, mechanic_id)
values 
(1, 1, 'Ford', 'Ranger', 'Blue', 1),
(2, 2, 'Dodge', 'Durango', 'Black', 1),
(3, 3, 'Toyota', 'Camry', 'Silver', 3),
(4, 4, 'Honda', 'Civic', 'White', 2),
(5, 5, 'Ford', 'Fiat', 'Brown', 1)

insert into service_history (service_ticket_id)
values 
(1),
(2),
(5)

insert into customer (customer_id, first_name, last_name, email, phone_number)
values 
(1, 'Eric', 'Sylvestre', 'eric@gmail.com', 5086789034),
(2, 'Julia', 'Rota', 'julia@gmail.com', 5086788910),
(3, 'Charlie', 'Switzer', 'charlie@gmail.com', 5088974653)

insert into cars_for_sale (car_id, car_make, car_model, sticker_price, color)
values 
(1, 'Chevrolet', 'Camaro', 48799, 'Black'),
(2, 'Ford', 'Mustang', 59999, 'Red'),
(3, 'Chevrolet', 'Camaro', 89999, 'White'),
(4, 'Ford', 'F-350', 100000, 'Blue'),
(5, 'Dodge', 'Challenger', 78500, 'Yellow')

insert into salesperson (salesperson_id, first_name, last_name)
values 
(1, 'Gary', 'Vee'),
(2, 'Elon', 'Musk'), 
(3, 'Jeff', 'Bezos')

insert into invoice (invoice_id, customer_id, salesperson_id, car_id, sale_price)
values 
(1, 1, 2, 1, 25000)

