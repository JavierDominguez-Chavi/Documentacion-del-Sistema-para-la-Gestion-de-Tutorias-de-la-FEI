Use Tutorias;
 GO
Create Procedure GetEstudiantes
			@busqueda nvarchar(100) 
		as 
	Select * From Estudiantes where nombre like @busqueda + '%' or apellidoMaterno like @busqueda+'%' 
	or apellidoPaterno like @busqueda+'%' or matricula like @busqueda+'%';
GO 

EXEC dbo.GetEstudiantes 's'; 



