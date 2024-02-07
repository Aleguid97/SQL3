-- Prendo il numero totale degli ordini
SELECT COUNT(*) AS NumeroTotaleOrdini FROM Orders

--Prendo il nmumero totale di clienti
SELECT COUNT(*) AS NumeroTotaleClienti FROM Customers

-- Prendo il numero totale di clienti che vivono a Londra
SELECT COUNT(*) AS NumeroTotaleClientiLondra FROM  Customers WHERE City = 'Londra'

-- Calcolo la media aritmetica del costo del trasporto di tutti gli ordini effettuati
SELECT AVG(Freight) AS MediaCostoTrasport FROM Orders;

-- Calcolo la media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
SELECT AVG (Freight) AS MediaCostoCustBOTTM from Orders where CustomerID = 'BOTTM'

--  calcolo il totale delle spese di trasporto effettuate raggruppate per id cliente
SELECT CustomerID, SUM(freight) AS TotaleSpeseTrasporto FROM Orders GROUP BY CustomerID

-- Calcolo il numero totale di clienti raggruppati per città di appartenenza
SELECT City, COUNT(CustomerID) AS ClientiPerCittà FROM Customers GROUP BY City

-- Calcolo del prezzo unitario per quantità raggruppato per ogni ordine
SELECT OrderID, SUM(UnitPrice * Quantity) AS TotaleOrdine FROM [Order Details] GROUP BY OrderID

--Totale del prezzo unitario per quantità solo dell'ordine con id=10248
SELECT OrderID, SUM(UnitPrice * Quantity) AS TotaleOrdine10248 FROM [Order Details] WHERE OrderID = 10248 GROUP BY OrderID

-- Estraggo il numero di prodotti censiti per ogni categoria
SELECT CategoryID, COUNT(ProductID) AS NumeroProdottiPerCategoria FROM Products GROUP BY CategoryID

--Calcolo il numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, COUNT(OrderID) AS OrdiniperPaese FROM Orders GROUP BY ShipCountry

-- Calcolo la media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT AVG (Freight) AS MediaCostoPerPaese from Orders Group by ShipCountry



