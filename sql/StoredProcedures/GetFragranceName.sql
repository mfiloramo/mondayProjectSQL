CREATE PROCEDURE [dbo].[GetFragranceName]
   @id BIGINT
AS
BEGIN
SELECT name FROM Fragrances
    WHERE id = @id;
END;
GO
