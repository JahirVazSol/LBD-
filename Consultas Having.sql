SELECT COUNT (precioPizza), nombrePizza
FROM Pizza
GROUP BY nombrePizza
HAVING COUNT (precioPizza) > 85
ORDER BY COUNT (precioPizza) DESC;

SELECT COUNT (sueldoEmpleado), nombreEmpleado 
FROM Empleado 
GROUP BY  nombreEmpleado 
HAVING COUNT (sueldoEmpleado) >900
ORDER BY COUNT (sueldoEmpleado) ASC;

SELECT COUNT (precioRefresco), idRefresco 
FROM Refresco 
GROUP BY idRefresco
HAVING COUNT (precioRefresco) <20
ORDER BY COUNT (precioRefresco) DESC;

SELECT COUNT (precioComplemento), nombreComplemento 
FROM Complemento 
GROUP BY nombreComplemento 
HAVING COUNT (precioComplemento) <35
ORDER BY COUNT(precioComplemento) DESC;

SELECT COUNT (horasEmpleado), nombreEmpleado, idEmpleado
FROM Empleado 
GROUP BY nombreEmpleado 
HAVING COUNT (horasEmpleado) > 30
ORDER BY COUNT (horasEmpleado) ASC;
