CREATE TABLE dbo.SKU(
	Id int PRIMARY KEY CLUSTERED  IDENTITY NOT NULL
	,Code int unique NOT NULL
	,[Name]  AS ('S'+cast(ID AS varchar(100))) PERSISTED
	);

CREATE TABLE dbo.Family(
	Id int PRIMARY KEY   IDENTITY NOT NULL
	,SurName varchar(100) NULL
	,BudgetValue int NULL
	);

	CREATE TABLE dbo.Basket(
	Id int PRIMARY KEY  IDENTITY NOT NULL
	,ID_SKU int NOT NULL REFERENCES dbo.SKU(Id)
	,ID_Family int REFERENCES dbo.Family(Id)
	,Quantity int CHECK (Quantity>0)
	,[Value] int CHECK ([Value] >0)
	,PurchaseDate date DEFAULT GETDATE()
	,DiscountValue int 
	)

