--INSERT Запросы
-- Добавить исполнителей

INSERT INTO artist(name)
VALUES('Петя Васичкин');

INSERT INTO artist(name)
VALUES('Пуся');

INSERT INTO artist(name)
VALUES('Мудрый Каа');

INSERT INTO artist(name)
VALUES('Алла Галкина');

INSERT INTO artist(name)
VALUES('Армагеддон');

INSERT INTO artist(name)
VALUES('Кто-то Там');

INSERT INTO artist(name)
VALUES('Выстрел в колено');

INSERT INTO artist(name)
VALUES('Пивной взрыв');

-- Добавить жанров

INSERT INTO ganre(name)
VALUES('ПОП');

INSERT INTO ganre(name)
VALUES('РОК');

INSERT INTO ganre(name)
VALUES('РЭП');

INSERT INTO ganre(name)
VALUES('МЕТАЛЛ');

INSERT INTO ganre(name)
VALUES('Шансон');

-- Связь жанров и исполнителей

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(2, 4);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(3, 1);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(4, 3);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(5, 5);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(6, 2);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(7, 5);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(8, 4);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(9, 2);

INSERT INTO ganreartist(artist_id, ganre_id)
VALUES(2, 2);

-- Добавить альбомы

INSERT INTO album(name, year_release)
VALUES('Привет Мир', '10.10.2010');

INSERT INTO album(name, year_release)
VALUES('Кукуруза', '01.01.1970');

INSERT INTO album(name, year_release)
VALUES('Розовые сны', '01.01.1987');

INSERT INTO album(name, year_release)
VALUES('Океан', '01.01.2002');

INSERT INTO album(name, year_release)
VALUES('Девочки', '01.01.2019');

INSERT INTO album(name, year_release)
VALUES('Пилот', '01.01.2010');

INSERT INTO album(name, year_release)
VALUES('Лес грез', '01.01.1988');

INSERT INTO album(name, year_release)
VALUES('Кукуруза 2', '01.01.1971');

-- Связать альбомы и исполнителей

INSERT INTO albumartist (artist_id, album_id)
VALUES(2, 1);

INSERT INTO albumartist (artist_id, album_id)
VALUES(3, 4);

INSERT INTO albumartist (artist_id, album_id)
VALUES(4, 5);

INSERT INTO albumartist (artist_id, album_id)
VALUES(5, 6);

INSERT INTO albumartist (artist_id, album_id)
VALUES(6, 7);

INSERT INTO albumartist (artist_id, album_id)
VALUES(7, 8);

INSERT INTO albumartist (artist_id, album_id)
VALUES(8, 9);

INSERT INTO albumartist (artist_id, album_id)
VALUES(9, 10);

-- Добавим треки

INSERT INTO Track (name, duration, album_id)
VALUES('Песня', 200, 1);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 2', 250, 1);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 3', 719, 4);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 4', 520, 4);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 5', 120, 5);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 6', 335, 5);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 7', 400, 6);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 8', 350, 6);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 9', 550, 7);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 10', 100, 7);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 11', 700, 8);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 12', 240, 8);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 13', 478, 9);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 14', 215, 9);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 15', 177, 10);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 16', 255, 10);

INSERT INTO Track (name, duration, album_id)
VALUES('Песня 17', 90, 10);

-- Добавим коллекции
INSERT INTO Collection(name, year_release)
VALUES('О старом', '01.02.2010');

INSERT INTO Collection(name, year_release)
VALUES('О новом', '01.03.2011');

INSERT INTO Collection(name, year_release)
VALUES('Сборник', '01.05.2015');

INSERT INTO Collection(name, year_release)
VALUES('Сборник сборников', '01.07.2016');

INSERT INTO Collection(name, year_release)
VALUES('Лучший сборник', '01.11.2017');

INSERT INTO Collection(name, year_release)
VALUES('Старый сборник', '01.12.2009');

INSERT INTO Collection(name, year_release)
VALUES('Первый сборник', '01.01.2005');

INSERT INTO Collection(name, year_release)
VALUES('Сборник о сборниках', '01.01.2021');

-- Связать треки и сборники
INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(2, 11);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(2, 15);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(2, 16);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(3, 12);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(3, 16);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(4, 1);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(4, 5);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(5, 2);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(5, 5);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(6, 7);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(6, 8);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(7, 4);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(7, 14);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(8, 3);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(8, 13);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(9, 9);

INSERT INTO Collectiontrack(collection_id, track_id)
VALUES(9, 10);