SELECT nombreEmpleado, count (*) as Empleado
FROM Empleado 
GROUP BY puestoEmpleado 

SELECT idRefresco, count (*) as Refresco 
FROM Refresco 
GROUP BY idRefresco 

SELECT nombreCl, count (*) as Cliente
FROM Cliente
GROUP BY idDirecci�n    

SLECT id_direcci�n, count (*) as Diracci�n 
FROM Diracci�n 
GROUP BY noCasa 

SELECT idPizza, count (*) as Pizza
FROM Pizza
GROUP BY precioPizza

