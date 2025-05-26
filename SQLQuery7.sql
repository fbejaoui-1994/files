CREATE DATABASE TUNISIANFARMERS
USE TUNISIANFARMERS;
CREATE TABLE MARKET_SALES(
SaleID INT PRIMARY KEY,
Products VARCHAR (50),
Region VARCHAR (50),
QuantitySold INT,
UnitPrice DECIMAL(5,2)
);
ALTER TABLE MARKET_SALES
ADD SaleDate DATE
INSERT INTO MARKET_SALES(SaleID, Products, Region, QuantitySold, UnitPrice, SaleDate)
VALUES
(1, 'Tomatoes', 'Tunis', 40, 1.20, '2025-08-01'),     -- Tomatoes sold in Tunis
(2, 'Almonds', 'Sfax', 25, 5.00, '2025-08-01'),       -- Almonds in Sfax
(3, 'Oranges', 'Nabeul', 60, 0.80, '2025-08-01'),     -- Oranges in Nabeul
(4, 'Tomatoes', 'Beja', 35, 1.25, '2025-08-02'),      -- More tomatoes in Beja
(5, 'Almonds', 'Tunis', 20, 4.90, '2025-08-02'),      -- Almonds in Tunis
(6, 'Oranges', 'Sousse', 50, 0.85, '2025-08-02'),     -- Oranges in Sousse
(7, 'Tomatoes', 'Sfax', 45, 1.15, '2025-08-03'),      -- Tomatoes in Sfax
(8, 'Almonds', 'Nabeul', 30, 5.10, '2025-08-03'),     -- Almonds in Nabeul
(9, 'Oranges', 'Tunis', 55, 0.75, '2025-08-03'),      -- Oranges in Tunis
(10, 'Tomatoes', 'Sousse', 38, 1.30, '2025-08-04'),   -- Tomatoes in Sousse
(11, 'Almonds', 'Beja', 15, 5.20, '2025-08-04'),      -- Almonds in Beja
(12, 'Oranges', 'Sfax', 70, 0.90, '2025-08-04'),      -- Oranges in Sfax
(13, 'Tomatoes', 'Tunis', 50, 1.10, '2025-08-05'),    -- More tomatoes in Tunis
(14, 'Almonds', 'Sousse', 22, 4.95, '2025-08-05'),    -- Almonds in Sousse
(15, 'Oranges', 'Nabeul', 65, 0.82, '2025-08-05'),    -- Oranges in Nabeul
(16, 'Tomatoes', 'Beja', 42, 1.22, '2025-08-06'),     -- Tomatoes in Beja
(17, 'Almonds', 'Tunis', 28, 5.05, '2025-08-06'),     -- Almonds in Tunis
(18, 'Oranges', 'Sousse', 48, 0.88, '2025-08-06'),    -- Oranges in Sousse
(19, 'Tomatoes', 'Sfax', 55, 1.18, '2025-08-07'),     -- Tomatoes in Sfax
(20, 'Almonds', 'Nabeul', 18, 5.15, '2025-08-07');    -- Almonds in Nabeul
GO
SELECT * FROM MARKET_SALES
SELECT * from MARKET_SALES WHERE UnitPrice>2;

SELECT SUM(QuantitySold) AS TOTAL,Region FROM MARKET_SALES
GROUP BY Region 
ORDER BY SUM(QuantitySold) DESC