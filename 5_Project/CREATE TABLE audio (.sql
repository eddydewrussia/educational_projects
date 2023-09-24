CREATE TABLE audio (
    data DATE,
    artist TEXT,
    track TEXT, stars INTEGER
);

INSERT INTO audio (data, artist, track, stars)
VALUES ('2023-01-01', 'ANNA ASTU', 'Track 1', 1000000),
       ('2023-01-02', 'Три дня дождя', 'Track 2', 2000000),
       ('2023-01-03', 'MACAN', 'Track 3', 3000000);

SELECT artist, SUM(stars) AS total_stars
FROM audio
WHERE data >= '2023-01-01' AND artist IN ('ANNA ASTU', 'Три дня дождя', 'MACAN')
GROUP BY artist
HAVING total_stars > 1000000;

