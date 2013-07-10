create table dogs (
    id int unsigned not null auto_increment primary key,
    name varchar(200),
    father_id int unsigned,
    mother_id int unsigned,
    gender enum('M','F'),
    birth_date date,
    pedigree_id varchar(200),
    mark_id varchar(200),
    color_id int unsigned,
    displasia varchar(200),
    kerung varchar(200),
    breeder varchar(200),
    owner_id int unsigned,
    coutry_id int unsigned,
    town_id int unsigned
);

create table owners (
    id int unsigned not null auto_increment primary key,
    name varchar(200),
    address text,
    phone varchar(200),
    email varchar(200),
    photo varchar(200)
);

create table countries (
    id int unsigned not null auto_increment primary key,
    name varchar(200),
    zip varchar(10),
    code char(2)
);

create table towns (
    id int unsigned not null auto_increment primary key,
    country_id int unsigned not null,
    name varchar(200)
);

create table pedigrees (
    id int unsigned not null auto_increment primary key,
    pedigree varchar(200)
);

create table marks (
    id int unsigned not null auto_increment primary key,
    mark varchar(200)
);

create table photos (
    id int unsigned not null auto_increment primary key,
    dog_id int unsigned
);

create table exhibitions (
    id int unsigned not null auto_increment primary key,
    name varchar(200),
    exposition_date date,
    town_id int unsigned
);

create table dog_exhibition (
    dog_id int unsigned,
    exhibition_id int unsigned,
    place varchar(10)
);

create table colors (
    id int unsigned not null auto_increment primary key,
    color varchar(200)
);
