-- Найдем все альбомы за 2019 год;
SELECT name, year_release FROM album
WHERE year_release >= '01.01.2019' AND year_release <= '31.12.2019';

-- Найдем самый длинный трек;
SELECT name, duration
FROM track
ORDER BY (duration) DESC
LIMIT 1;

-- Найдем название треков, продолжительность которых не менее 3,5 минуты;
SELECT name, duration FROM track
WHERE duration  >= 3.5 * 60;

-- Найдем названия сборников с 2017 по 2020 год;
SELECT name FROM collection
WHERE year_release >= '01.01.2017' AND year_release < '01.01.2020';

-- Найдем исполнители, чье имя состоит из 1 слова;
SELECT name FROM artist
WHERE name NOT LIKE '% %';

-- Найдем название треков, которые содержат слово "мой"/"my";
SELECT name FROM album
WHERE lower(name) LIKE '%мой%';


--- Задание Продвинутая выборка данных.


-- Найдем количество исполнителей в каждом жанре;
SELECT name, count(ganreid) FROM ganre g  
JOIN ganreartist g2 ON g2.ganre_id  = g.ganreid
GROUP BY ganreid, name;

-- Найдем количество треков, вошедших в альбомы 2019-2020 годов;
SELECT a.name, year_release, COUNT(t.name) FROM album a
JOIN track t ON a.albumid  = t.album_id
WHERE '01.01.2019' <= year_release AND year_release <= '01.01.2020'
GROUP BY a.name, year_release

-- Найдем среднюю продолжительность треков по каждому альбому;
SELECT a.name, AVG(t.duration) FROM album a 
JOIN track t ON a.albumid = t.album_id
GROUP BY a.name;

-- Найдем всех исполнителей, которые не выпустили альбомы в 2020 году;
SELECT ar.name, al.year_release  FROM artist ar 
JOIN albumartist aa ON aa.artist_id = ar.artistid
JOIN album al ON al.albumid = aa.album_id
WHERE al.year_release NOT BETWEEN '01.01.2020' AND '31.12.2020';

-- Найдем названия сборников, в которых присутствует конкретный исполнитель (Пуся);
SELECT c.name, ar.name FROM collection c 
JOIN collectiontrack ct ON ct.collection_id = c.collectionid
JOIN track t ON ct.track_id = t.trackid
JOIN album al ON t.album_id = al.albumid
JOIN albumartist aa ON al.albumid = aa.album_id 
JOIN artist ar ON aa.artist_id = ar.artistid
WHERE LOWER(ar.name) IN ('пуся');

-- Найдем название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name AS album_name, ar.name AS name_artist, COUNT(g.name) AS h_m_ganre FROM album a 
JOIN albumartist aa ON aa.album_id = a.albumid 
JOIN artist ar ON aa.artist_id = ar.artistid 
JOIN ganreartist ga ON ar.artistid = ga.artist_id 
JOIN ganre g ON ga.ganre_id = g.ganreid
GROUP BY a.name, ar.name
HAVING count(g.name) > 1;

-- Найдем наименование треков, которые не входят в сборники;
SELECT t.name FROM track t
LEFT JOIN collectiontrack ct ON ct.track_id  = t.trackid
LEFT JOIN collection c ON ct.track_id = c.collectionid
WHERE ct.track_id IS NULL;

-- Найдем исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--(теоретически таких треков может быть несколько);
SELECT ar.name  FROM artist ar 
JOIN albumartist aa ON aa.artist_id = ar.artistid
JOIN album al ON al.albumid = aa.album_id
JOIN track t ON t.album_id = al.albumid
WHERE t.duration = (SELECT min(duration) FROM track)

-- Найдем название альбомов, содержащих наименьшее количество треков
SELECT a.name, Count(t.name) FROM album a 
JOIN track t ON a.albumid = t.album_id
GROUP BY a.name
ORDER BY Count(t.name) DESC
LIMIT 1;