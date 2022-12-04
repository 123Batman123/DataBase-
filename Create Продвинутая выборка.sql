CREATE TABLE IF NOT EXISTS Artist (
	artistid SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ganre (
	ganreid SERIAL PRIMARY KEY,
	name VARCHAR(90) NOT NULL
);

CREATE TABLE IF NOT EXISTS GanreArtist (
	artist_id INTEGER NOT NULL REFERENCES Artist(artistid),
	ganre_id INTEGER NOT NULL REFERENCES Ganre(ganreid),
	CONSTRAINT pk_1 PRIMARY KEY (artist_id, ganre_id)
);

CREATE TABLE IF NOT EXISTS Album (
	albumid SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year_release DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS AlbumArtist (
	artist_id INTEGER NOT NULL REFERENCES Artist(artistid),
	album_id INTEGER NOT NULL REFERENCES Album(albumid),
	CONSTRAINT pk_1 PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	trackid SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration NUMERIC NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(albumid)
)

CREATE TABLE IF NOT EXISTS Collection (
	collectionid SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year_release DATE NOT NULL,
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	collection_id INTEGER NOT NULL REFERENCES Collection(collectionid),
	track_id INTEGER NOT NULL REFERENCES Track(trackid),
	CONSTRAINT pk_2 PRIMARY KEY (collection_id, track_id)
);

ALTER TABLE Collection
DROP track_id;

ALTER TABLE Ganre
ADD UNIQUE (name);

ALTER TABLE album 
ADD CHECK (year_release > '01.01.1930');

ALTER TABLE Track
ALTER COLUMN duration SET DATA TYPE INTEGER;

ALTER TABLE track
ADD CHECK (duration < 720);

ALTER TABLE Artist
ADD UNIQUE (name);

ALTER TABLE Album
ADD UNIQUE (name);

ALTER TABLE Track 
ADD UNIQUE (name);

ALTER TABLE Collection 
ADD UNIQUE (name);

ALTER TABLE Collection 
ADD CHECK (year_release > '01.01.1930');

UPDATE album 
SET name = 'Мой Лес Грёз'
WHERE albumid = 9;
	