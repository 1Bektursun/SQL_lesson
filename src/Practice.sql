create table publishers(
                           id serial primary key ,
                           name varchar not null
);

create type Gender as enum(
    'Male',
    'Female'
    );

create table authors(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar unique,
                        date_of_birth date,
                        country varchar,
                        gender Gender
);


create table languages(
                          id serial primary key ,
                          language varchar not null
);

create type Genre as enum(
    'DRAMA',
    'FANTASY',
    'HISTORY',
    'DETECTIVE',
    'BIOGRAPHY',
    'ROMANS'
    );

create table books(
                      id serial primary key ,
                      name varchar not null ,
                      country varchar,
                      published_year date,
                      price numeric,
                      genre Genre,
                      language_id integer references languages(id),
                      publisher_id integer references publishers(id),
                      author_id integer references authors(id)
);