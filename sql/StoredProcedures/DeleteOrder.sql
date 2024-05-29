CREATE PROCEDURE [dbo].[DeleteOrder]
   @id int
AS
BEGIN
DELETE FROM Orders
    WHERE id = @id;
END;
GO