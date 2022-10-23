CREATE TABLE IF NOT EXISTS genres (
id SERIAL PRIMARY KEY, 
genre_name VARCHAR(100) unique NOT NULL);

CREATE TABLE IF NOT EXISTS musicians (
id SERIAL PRIMARY KEY,
pen_name VARCHAR(100) unique NOT NULL);

CREATE TABLE IF NOT EXISTS albums (
id SERIAL PRIMARY KEY,
title_album VARCHAR(100) NOT NULL,
realease_years_album DATE check (realease_years_album > '1900-01-01') NOT NULL);

CREATE TABLE IF NOT EXISTS tracks (
id SERIAL PRIMARY KEY,
title_track VARCHAR(100) NOT NULL,
lasting INTEGER check (lasting > 0) NOT NULL,
albums_id INTEGER NOT NULL REFERENCES albums(id));

CREATE TABLE IF NOT EXISTS songbooks (
id SERIAL PRIMARY KEY,
title_songbook VARCHAR(100) NOT NULL,
realease_years_songbook DATE check (realease_years_songbook > '1900-01-01') NOT NULL);

CREATE TABLE IF NOT EXISTS genres_musicians (
genres_id INTEGER REFERENCES genres(id),
musicians_id INTEGER REFERENCES musicians(id),
CONSTRAINT pk_1 PRIMARY KEY (genres_id, musicians_id));

CREATE TABLE IF NOT EXISTS albums_musicians (
albums_id INTEGER REFERENCES albums(id),
musicians_id INTEGER REFERENCES musicians(id),
CONSTRAINT pk_2 PRIMARY KEY (albums_id, musicians_id));

CREATE TABLE IF NOT EXISTS tracks_songbooks (
tracks_id INTEGER REFERENCES tracks(id),
songbooks_id INTEGER REFERENCES songbooks(id),
CONSTRAINT pk_3 PRIMARY KEY (tracks_id, songbooks_id));
