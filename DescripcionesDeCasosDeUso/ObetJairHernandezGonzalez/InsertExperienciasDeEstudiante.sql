Use Tutorias
Go
Create Procedure InsertExperiencias_Estudiantes
			@nrc int,	
			@matricula nvarchar(30)
				
	as 
	INSERT INTO ExperienciasEducativas_Estudiantes(NRC, Matricula) values (@nrc, @matricula);
GO 


