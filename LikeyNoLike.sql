-- Uso de LIKE y NO LIKE 

USE tienda; 

SELECT* 
FROM empleado
WHERE apellido_materno LIKE "p%a"
