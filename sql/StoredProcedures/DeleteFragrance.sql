CREATE PROCEDURE [dbo].[DeleteFragrance]
   @id BIGINT
AS
BEGIN
DELETE FROM Fragrances
    WHERE id = @id;
END;
GO
