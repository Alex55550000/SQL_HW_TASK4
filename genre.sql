create table Genre (
id SERIAL PRIMARY key,
name varchar(60)
);

create table author (
id SERIAL PRIMARY key,
name varchar(60)
);

create table album (
id SERIAL PRIMARY key,
name varchar(60),
year integer not null
);

create table track (
id SERIAL PRIMARY key,
name varchar(60),
duration integer not null,
album_id integer references album(id)
);

create table collection (
id SERIAL PRIMARY key,
year integer not null,
name varchar(60)
);

create table author_genre (
author_id integer references author(id),
genre_id integer references genre(id)
);

create table author_album (
author_id integer references author(id),
album_id integer references album(id)
);


create table track_collection (
track_id integer references track(id),
collection_id integer references collection(id)
);