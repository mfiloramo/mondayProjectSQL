CREATE PROCEDURE [dbo].[AddFragrance]
    @id BIGINT = NULL,
    @name NVARCHAR(255) = NULL,
    @created_at DATETIME = NULL,
    @updated_at DATETIME = NULL
AS
BEGIN
    SET NOCOUNT ON;

        -- GENERATE A RANDOM NUMBER IF ONE IS NOT PROVIDED
    IF @id IS NULL
BEGIN
        SET @id = ABS(CHECKSUM(NEWID())) % 2147483647
END

    -- INSERT THE NEW FRAGRANCE INTO THE FRAGRANCE TABLE
INSERT INTO Fragrances (id, name, created_at, updated_at)
VALUES (
           @id,
           @name,
           COALESCE(@created_at, GETDATE()),
           COALESCE(@updated_at, GETDATE())
       );
END;
GO
