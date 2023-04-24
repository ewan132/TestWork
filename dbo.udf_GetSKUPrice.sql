
CREATE FUNCTION dbo.udf_GetSKUPrice
(

	@ID_SKU decimal(18,2)
)
RETURNS  decimal(18,2)
AS
BEGIN
		select 
			@ID_SKU= sum(Quantity)/sum(Value)
		from dbo.Basket B



	RETURN @ID_SKU

END
GO
