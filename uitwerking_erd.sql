

CREATE TABLE users(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) UNIQUE,
created_at DATETIME,
updated_at DATETIME,
);

CREATE TABLE books(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
publishing_year VARCHAR(255),
genre VARCHAR(255),
created_at DATETIME,
updated_at DATETIME,
FOREIGN KEY (authors_id) REFERENCES authors(id)
);

CREATE TABLE authors(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
created_at DATETIME,
updated_at DATETIME
);

CREATE TABLE favourites(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
created_at DATETIME,
updated_at DATETIME,
FOREIGN KEY (usesr_id) REFERENCES users(id),
FOREIGN KEY (books_id) REFERENCES books(id)
);
