SELECT * FROM dbo.Clientes

SELECT * FROM dbo.Clientes WHERE CLAVE = 97

CREATE PROCEDURE añadirCliente
@Clave int,
@Cliente nvarchar(50)
AS 
BEGIN
INSERT INTO dbo.Clientes(CLAVE, CLIENTE)
VALUES(@Clave,@Cliente)
END

exec añadirCliente 295, 'Sergio Manuel'