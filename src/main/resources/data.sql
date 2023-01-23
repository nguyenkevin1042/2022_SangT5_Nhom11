insert into category(code,name,size) VALUES ('STD','Standard',20);
insert into category(code,name,size) VALUES ('SUP','Superior',40);
insert into category(code,name,size) VALUES ('DLX','Deluxe',70);
insert into category(code,name,size) VALUES ('SUT','Suite',100);

insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(1, 1, 'Single Bed', 1, 250000.0, 5);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(1, 2, 'Single Bed', 2, 500000.0, 4);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(2, 2, 'Double Bed', 1, 600000.0, 6);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(2, 2, 'Queen size bed', 1, 750000.0, 3);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(3, 2, 'King size bed', 1, 1000000.0, 6);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(3, 4, 'King size bed', 2, 2000000.0, 3);

insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(4, 4, 'King size bed', 2, 3200000.0, 2);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(4, 2, 'Super king size bed', 1, 4000000.0, 1);
insert into room(category_id,capacity,kind_of_bed,number_of_bed,price_per_night,quantity) values 
(4, 6, 'Queen size bed', 3, 4800000.0, 2);
