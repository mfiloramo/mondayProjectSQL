CREATE PROCEDURE [dbo].[UpdateFragrance]
    @id BIGINT,
    @name NVARCHAR(255),
    @description NVARCHAR(MAX) = NULL,
    @category NVARCHAR(100) = NULL,
    @updated_at DATETIME = NULL,
    @image_url NVARCHAR(255) = NULL
AS
BEGIN
UPDATE Fragrances
SET
    name = ISNULL(@name, name),
    description = ISNULL(@description, description),
    category = ISNULL(@category, category),
    updated_at = ISNULL(@updated_at, updated_at),
    image_url = ISNULL(@image_url, image_url)
WHERE id = @id;
END;
GO
