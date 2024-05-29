CREATE PROCEDURE [dbo].[CreateOrder]
    @first_name VARCHAR(MAX),
    @last_name VARCHAR(MAX),
    @number_of_kits INT,
    @fragrance1_id BIGINT,
    @fragrance2_id BIGINT,
    @fragrance3_id BIGINT,
    @created_at DATETIME,
    @updated_at DATETIME
AS
BEGIN


INSERT INTO Orders (first_name, last_name, number_of_kits, fragrance1_id, fragrance2_id, fragrance3_id, created_at, updated_at)
VALUES (@first_name, @last_name, @number_of_kits, @fragrance1_id, @fragrance2_id, @fragrance3_id, @created_at, @updated_at);

SELECT SCOPE_IDENTITY() AS NewOrderID;
END;
GO
