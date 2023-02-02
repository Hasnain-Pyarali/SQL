CREATE DATABASE ecom;

USE ecom;

CREATE TABLE USER (
    userID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    firstname VARCHAR(50),
    email VARCHAR(100),
    password TEXT,
    PRIMARY KEY (userID)
);

CREATE TABLE CARD (
    cardNB BIGINT(15) NOT NULL,
    userID int,
    PRIMARY KEY (cardNB),
    FOREIGN KEY (userID) REFERENCES USER(userID)
);

CREATE TABLE PAIEMENT (
    paiementID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (paiementID)
);

CREATE TABLE PRODUCT (
    name VARCHAR(50),
    price BIGINT(10),
    available BOOLEAN,
    quantity BIGINT(10)
);










DROP DATABASE ecom; --à enlever cette commande avant de push.