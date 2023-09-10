use bookmsdb;
CREATE TABLE theatre (
  theatre_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(70) NOT NULL,
  address VARCHAR(90) NOT NULL,
  contact_number VARCHAR(10) NOT NULL,
  PRIMARY KEY (theatre_id)
);
CREATE TABLE movie (
  movie_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(90) NOT NULL,
  language VARCHAR(50) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  PRIMARY KEY (movie_id)
);

CREATE TABLE bookshow (
  show_id INT NOT NULL AUTO_INCREMENT,
  date DATE NOT NULL,
  time TIME NOT NULL,
  theatre_id INT NOT NULL,
  movie_id INT NOT NULL,
  PRIMARY KEY (show_id),
  FOREIGN KEY (theatre_id) REFERENCES theatre (theatre_id),
  FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);

CREATE TABLE ticket (
  ticket_id INT NOT NULL AUTO_INCREMENT,
  show_id INT NOT NULL,
  seat_number INT NOT NULL,
  price INT NOT NULL,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (show_id) REFERENCES bookshow (show_id)
);

/* Insert Data  in theatre*/
INSERT INTO theatre (name, address, contact_number)
VALUES ('PVR Cinemas', '123 Main Street', '1234567890');
INSERT INTO theatre (name, address, contact_number) 
VALUES ('ABC Cinemas', 'Delhi by-pass', '9012345678');
INSERT INTO theatre (name, address, contact_number) 
VALUES ('Atlas Cinemas', 'DLF phase', '8901234567');
INSERT INTO theatre (name, address, contact_number) 
VALUES ('WTF Cinemas', 'Sector-62 Main road', '6789012345');
INSERT INTO theatre (name, address, contact_number) 
VALUES ('new Cinemas', 'Gurugram', '9012345456');

/* Insert data in movie */
INSERT INTO movie (name, language, genre) 
VALUES ('The Batman', 'English', 'Action');
INSERT INTO movie (name, language, genre) 
VALUES ('Dhoom', 'Hindi', 'Action');
INSERT INTO movie (name, language, genre) 
VALUES ('Vampire Diaries', 'English', 'Horror');
INSERT INTO movie (name, language, genre) 
VALUES ('Tu Jhoothi main makkar', 'Hindi', 'Comedy');
INSERT INTO movie (name, language, genre) 
VALUES ('Smile', 'English', 'Horror');
INSERT INTO movie (name, language, genre) 
VALUES ('Sardar', 'Tamil', 'Action');
INSERT INTO movie (name, language, genre) 
VALUES ('Dangal', 'hindi', 'Action');
INSERT INTO movie (name, language, genre) 
VALUES ('Bahubali', 'hindi', 'Action');
INSERT INTO movie (name, language, genre) 
VALUES ('3 idiots', 'hindi', 'comedy');
INSERT INTO movie (name, language, genre) 
VALUES ('Tarzaan', 'hindi', 'Thriller');

/* Insert Data in bookshow*/
INSERT INTO bookshow (date, time, theatre_id, movie_id)
 VALUES ('2023-03-08', '10:00:00', 1, 1);
 INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2023-04-08', '20:00:00', 2, 1);
  INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2023-03-08', '22:00:00', 2, 2);
 INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2023-05-22', '22:30:00', 3, 4);
 INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2023-08-30', '15:00:00', 3, 6);
 INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2023-11-08', '10:00:00', 4, 7);
 INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2022-03-08', '12:00:00', 1, 9);
  INSERT INTO bookshow (date, time, theatre_id, movie_id) 
 VALUES ('2022-03-08', '13:00:00', 4, 2);

 /* Insert data in ticket */
 INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (1, 10, 20);
 INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (11, 23, 100);
  INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (8, 15, 40);
 INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (2, 8, 30);
  INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (7, 17, 30);
 INSERT INTO ticket (show_id, seat_number, price) 
 VALUES (15, 8, 10);
