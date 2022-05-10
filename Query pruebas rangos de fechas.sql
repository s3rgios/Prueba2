CREATE TABLE Productos 
(Nombre varchar(50),
Marca varchar(50),
Fecha DateTime
)

SELECT * FROM Productos

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Galletas', 'Gamesa', '08/10/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Chocoroles', 'Gamesa', '05/02/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Sabritas', 'Leo', '01/12/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Chips', 'Barcel', '09/15/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Chips', 'Barcel', '06/05/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Chips', 'Barcel', '05/06/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Chips Verdes', 'Barcel', '03/05/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Pan Integral', 'Bimbo', '04/20/22')

INSERT INTO Productos(Nombre,Marca,Fecha)
VALUES('Ruffles', 'Sabritas', '03/30/22')


--IMPORTANTE PARA LOS RANGOS DE FECHAS 
SELECT * FROM Productos
WHERE Fecha BETWEEN '2022-04-01' AND CONVERT(date, GETDATE())


--Stop procedures para obtener los rangos de fechas
CREATE PROCEDURE rangoFechasConsulta
@fechaInicial Date,
@fechaFinal	Date
AS 
BEGIN
SELECT * FROM Productos
WHERE Fecha BETWEEN @fechaInicial AND @fechaFinal
END

SELECT * FROM Productos
EXEC rangoFechasConsulta '2022-04-01', '2022-05-10'
