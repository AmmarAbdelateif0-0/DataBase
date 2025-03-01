

create table Musician(
musician_id INT PRIMARY KEY,
name varchar(20) not null,
street varchar(20),
city varchar(20),
phone_number varchar(20)
);

create table Instrument(
instrument_id INT PRIMARY KEY,
instrument_name varchar(20) unique not null,
musical_key varchar(20)
);

create table Album(
album_id INT PRIMARY KEY,
album_name varchar(20) unique not null,
copyright_date DATE,
producer_id INT,
Foreign key(producer_id) REFERENCES Musician(musician_id)
);

create table Song(
song_id INT PRIMARY KEY,
song_name varchar(20) unique not null,
author varchar(20),
album_id INT,
Foreign key(album_id) REFERENCES Album(album_id)
);


create table Preforms(
song_id     INT ,
musician_id INT ,
PRIMARY KEY(song_id,musician_id),
Foreign key(song_id) REFERENCES Song(song_id),
Foreign key(musician_id) REFERENCES Musician(musician_id)

);


create table Plays(
instrument_id     INT ,
musician_id INT ,
PRIMARY KEY(instrument_id,musician_id),
Foreign key(instrument_id) REFERENCES Instrument(instrument_id),
Foreign key(musician_id) REFERENCES Musician(musician_id)
);