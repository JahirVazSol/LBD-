SELECT nombreEmpleado, count (*) as Empleado
FROM Empleado 
GROUP BY puestoEmpleado 

SELECT idRefresco, count (*) as Refresco 
FROM Refresco 
GROUP BY idRefresco 

SELECT nombreCl, count (*) as Cliente
FROM Cliente
GROUP BY idDirección    

SLECT id_dirección, count (*) as Diracción 
FROM Diracción 
GROUP BY noCasa 

SELECT idPizza, count (*) as Pizza
FROM Pizza
GROUP BY precioPizza

