--DENTRO DE LA BASE DE PROBLEMELI--
------------------INICIO - CREACION DE FUNCIONES -----------------------
------------------OBTIENE EL PATH DE UNA CATEGORIA-----------------------
CREATE FUNCTION [dbo].[Path_Category_Item](@CategoryId int, @Path varchar(500))

RETURNS varchar(500)

AS BEGIN

      DECLARE @ParentCategoryId int;

      SELECT @CategoryId = c.Id
			, @Path = c.Name
			, @ParentCategoryId = ISNULL(c.ParentCategoryId,-1)

                  FROM Category c
				  WHERE c.Id = @CategoryId

      if (@ParentCategoryId >0) begin

            RETURN dbo.Path_Category_Item(@ParentCategoryId,@Path) + '>' + @Path

            end

      RETURN @Path

END
------------------FIN - CREACION DE FUNCIONES -----------------------
