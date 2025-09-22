CREATE DATABASE IF NOT EXISTS first_example;
USE first_example;
CREATE TABLE person (
	person_id smallint unsigned,
    fname varchar(20),
    lname varchar (20),
    gender enum('M','F'),
    birth_date date,
    street varchar(20),
    country varchar(20),
    postal_code varchar(20),
    constraint pk_person primary key (person_id)
);

CREATE TABLE favorite_food (
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id)
		references person(person_id)
);