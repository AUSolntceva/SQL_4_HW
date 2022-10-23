INSERT INTO genres(id, genre_name) 
VALUES(1, 'classical music'),
(2, 'rock'),
(3, 'indie'),
(4, 'jazz'),
(5, 'pop');

INSERT INTO musicians(id, pen_name) 
VALUES(1, 'Hans Zimmer'),
(2, 'John Bon Jovi'),
(3, 'Metallica'),
(4, 'David Duchovny'),
(5,'Louis Armstrong'),
(6, 'Ray Charles'),
(7, 'Dolina Larisa'),
(8, 'Ed Sheeran'),
(9, 'Madonna');

INSERT INTO albums(id, title_album, realease_years_album) 
VALUES(1, 'Interstellar', '2022-01-01'),
(2, 'This House Is Not for Sale', '2016-01-01'),
(3, 'Every Third Thought', '2018-01-01'),
(4, 'Stardust', '1931-01-01'),
(5, 'Like a Prayer', '1989-01-01'),
(6, 'You Need Me', '2009-01-01'),
(7, 'Load', '1996-01-01'),
(8, 'Live in Japan', '1975-01-01'),
(9, 'Снег идёт', '1993-01-01');

INSERT INTO tracks(id, title_track, lasting, albums_id) 
VALUES(1, 'Cornfield Chase', 2.07, 1),
(2, 'Walls', 3.37, 2),
(3, 'I Will Drive You Home', 4.41, 2),
(4, 'Maybe I Can’t', 3.48, 3),
(5, 'Someone Else’s Girl', 3.31, 3),
(6, 'Stardust', 4.50, 4),
(7, 'Like a Prayer', 5.40, 5),
(8, 'Keep It Together', 5.03, 5),
(9, 'Express Yourself', 4.39, 5),
(10, 'So', 4.28, 6),
(11, 'Be Like You', 3.38, 6),
(12, 'You Need Me, I Dont Need You', 4.05, 6),
(13, 'Until It Sleeps', 4.27, 7),
(14, 'Bleeding Me', 8.17, 7),
(15, 'Hallelujah, I Love Her So', 2.33, 8),
(16, 'Снег идёт', 3.17, 9);

INSERT INTO songbooks(id, title_songbook, realease_years_songbook) 
VALUES(1, 'Кунг-фу Панда 3', '2016-01-01'),
(2, 'Лучшие синглы США: 1990', '2019-01-01'),
(3, 'Лучшие гитарные соло в метале', '2017-01-01'),
(4, 'David Duchovny', '2021-01-01'),
(5,'Джаз', '2018-01-01'),
(6, 'Мастера вокального джаза', '2021-01-01'),
(7, 'Woman in Love', '2016-01-01'),
(8, '100 поп-хитов', '2022-01-01'),
(9, 'Иностранная поп-музыка 2000-х', '2021-01-01');

INSERT INTO genres_musicians(genres_id, musicians_id)
VALUES(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(4, 6),
(5, 7),
(5, 8),
(5, 9),
(4, 7);

INSERT INTO albums_musicians(albums_id, musicians_id)
VALUES(1, 1),
(2, 2),
(3, 4),
(4, 5),
(5, 9),
(6, 8),
(7, 3),
(8, 6),
(9, 7);

INSERT INTO tracks_songbooks(tracks_id, songbooks_id)
VALUES(10, 2),
(6, 2),
(13, 3),
(14, 3),
(6, 5),
(7, 8),
(8, 8),
(9, 8),
(16, 8);
