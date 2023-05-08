DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS Depot;
DROP TABLE IF EXISTS Product;

CREATE TABLE Product (
    productId VARCHAR(10) PRIMARY KEY,
    productname VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO product (productId, productname, price)
VALUES ('p1', 'tape', 2.5),
       ('p2', 'tv', 250),
       ('p3', 'vcr', 80);

CREATE TABLE Depot (
    deptId VARCHAR(10) PRIMARY KEY,
    addr VARCHAR(255),
    volume INT
);

INSERT INTO Depot (deptId, addr, volume)
VALUES ('d1', 'New York', 9000),
       ('d2', 'Syracuse', 6000),
       ('d4', 'New York', 2000);

CREATE TABLE Stock (
    productId VARCHAR(10),
    deptId VARCHAR(10),
    quantity INT,
    PRIMARY KEY (productId, deptId),
    FOREIGN KEY (productId) REFERENCES Product(productId) ON DELETE CASCADE,
    FOREIGN KEY (deptId) REFERENCES Depot(deptId) ON DELETE CASCADE
);

INSERT INTO Stock (productId, deptId, quantity)
VALUES ('p1', 'd1', 1000),
       ('p1', 'd2', -100),
       ('p1', 'd4', 1200),
       ('p3', 'd1', 3000),
       ('p3', 'd4', 2000),
       ('p2', 'd4', 1500),
       ('p2', 'd1', -400),
       ('p2', 'd2', 2000);
