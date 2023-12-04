CREATE PROCEDURE summary_order_status
(@StatusID INT) AS
BEGIN 
	SELECT
	a.OrderID,
	b.CustomerName,
	c.ProductName,
	a.Quantity,
	d.StatusOrder
	FROM FactSalesOrder a
	INNER JOIN DimCustomer b ON a.CustomerID = b.CustomerID
	INNER JOIN DimProduct c ON a.ProductID = c.ProductID
	INNER JOIN DimStatusOrder d ON a.StatusID = d.StatusID
	WHERE a.StatusID = @StatusID
END

EXEC summary_order_status @StatusID = 4