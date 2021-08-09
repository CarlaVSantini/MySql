USE tienda; 

SELECT * 
FROM venta

-- Hola! Esta linea no es usada por SQL y sirve para poner notas
/*
BLA BLA BLA
BLA BLA BLA
BLA BLA BLA 
*/
WHERE id_articulo
IN (135,963)
AND id_empleado 
IN (835,369);
