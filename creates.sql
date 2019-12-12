CREATE DATABASE movies_api;
USE movies_api;
CREATE TABLE movies
(
    id INT AUTO_INCREMENT,
    title VARCHAR(255),
    directed_by VARCHAR(255),
    release_date DATE,
    runtime_by_mins DATETIME,
    rating ENUM('G', 'R', 'Passed', 'Not Rated', 'PG', 'PG-13', 'Approved'),
    genre ENUM('Drama', 'Science fiction', 'Comedy', 'Romantic comedy', 'Epic', 'Biography', 'Screwball comedy', 'Comedy-drama, Western', 'Romance', 'Mystery', 'Film noir', 'Black comedy', 'Fantasy', 'Adventure', 'Thriller', 'Horror', 'Musical', 'Musical comedy'),
    PRIMARY KEY(id),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt DATETIME
);

CREATE TABLE directors
(
    id INT AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(movieId) REFERENCES(moviesId),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt DATETIME
);

CREATE TABLE genre
(
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(directorId) REFERENCES(directorsId),
    FOREIGN KEY(movieId) REFERENCES(moviesId),
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt DATETIME
    );

    