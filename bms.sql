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
