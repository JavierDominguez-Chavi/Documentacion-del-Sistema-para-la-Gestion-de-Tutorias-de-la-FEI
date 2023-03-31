USE [Tutorias]
GO

/****** Object:  StoredProcedure [dbo].[GetExperienciasEducativas]    Script Date: 27/03/2023 10:10:18 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[GetExperienciasEducativas]
			@busqueda nvarchar(100) 
		as 
	Select * from 
	dbo.ExperienciasEducativas_Academicos EE_A Inner Join ExperienciasEducativas EE 
	ON EE.IdExperienciaEducativa = EE_A.IdExperienciaEducativa 
	Where 
	EE.Nombre Like @busqueda+'%' 
	OR EE_A.NRC LIKE  @busqueda+'%';
GO

EXEC dbo.GetExperienciasEducativas 'b'; 







