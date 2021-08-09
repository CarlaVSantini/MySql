-- Funciones aritméticas 
USE tienda; 
-- Promedio
SELECT avg(precio)
FROM articulo;
-- Max&Min 

SELECT max(precio)
FROM articulo; 

SELECT min(precio) 
FROM articulo; 

-- Count 
SELECT count(id_articulo)
FROM articulo;

SELECT count(*)
FROM articulo;

SELECT sum(precio)
FROM articulo;

-- Ejercicio 
-- PROMEDIO SALARIOS 
USE tienda;
SELECT avg(salario)
FROM puesto;
-- ARTICULOS QUE CONTENGAN PASTA
USE tienda; 
SELECT* 
FROM articulo
WHERE nombre LIKE "%pasta%";

-- EL SALARIO MINIMO
USE tienda;
SELECT min(salario)
FROM puesto;
-- LA SUMA DE LOS ULTIMOS 5 SALARIOS AGREGADOS 
USE tienda; 
SELECT sum(salario)
FROM puesto
ORDER BY id_puesto DESC
LIMIT 5;
-- ESTÁ SUMANDO TODOS LOS SALARIOS 


-- Este es el promedio de los ultimos 5 salarios que se agregaron
USE tienda; 
SELECT *
FROM puesto 
ORDER BY id_puesto DESC LIMIT 5;
SELECT sum(salario)
FROM puesto 
WHERE id_puesto IN(1000,999,998,997,996);

-- ORDENAMIENTO Y AGRUPACIONES 

-- Colocar un "alias" a una suma 

SELECT sum(precio) AS SumaDeInventario
FROM articulo;

-- Utilizar un filtro de grupo de una variable VARCHAR con un alias 
-- La suma de inventario por articulo

SELECT nombre, sum(precio) AS SumaDeInventario, sum(iva) AS Impuesto
FROM articulo
GROUP BY nombre
ORDER BY SumaDeInventario DESC;


-- lo mismo pero con max y min

SELECT nombre, max(precio) AS ValorMaximo, max(iva) AS MaximodeIva
FROM articulo
GROUP BY nombre;

-- Reto 3 

-- Cuantos registros hay por puesto 
USE tienda; 
SELECT nombre, count(*) AS Cantidad
FROM puesto
GROUP BY nombre;

-- ¿Cuánto dinero se paga en total por puesto?
USE tienda; 
SELECT nombre, sum(salario) AS Pago_Total
FROM puesto
GROUP BY nombre;

-- ¿Cuál es el número total de ventas por vendedor?

SELECT id_empleado, count(id_empleado)
FROM venta 
GROUP BY id_empleado;

-- ¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(id_articulo)
FROM venta 
GROUP BY id_articulo;





