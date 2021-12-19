create table if not exists genre (
id serial primary key,
genre_name varchar(40) not null unique);

create table if not exists singer (
id serial primary key,
singer_name varchar(40) not null unique,
genre_id integer references genre(id));

create table if not exists albums (
id serial primary key,
album_name varchar(40) not null unique,
singer_id integer references singer(id));

create table if not exists songs (
id serial primary key,
song_name varchar(40) not null unique,
duration integer not null,
song_year integer not null,
album_id integer references albums(id));

create table if not exists collection (
id serial primary key,
collection_name varchar(40) not null unique,
collection_year integer not null,
album_id integer references albums(id),
song_id integer references songs(id));
