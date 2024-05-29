CREATE PROCEDURE [dbo].[UpdateOrderStatus]
    @id INT,
    @status NVARCHAR(255)
AS
BEGIN
    UPDATE Orders
    SET status = @status
    WHERE id = @id
END;
GO
