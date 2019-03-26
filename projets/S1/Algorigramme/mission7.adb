with Outil_De_Mesure ;

procedure Mission7 is
   
   Somme : constant Float := 340.8 ;
   
   package OM renames Outil_De_Mesure ;
   
   -- Cette fonction Dimensions_OK vérifie que la somme des mesures ne dépasse pas une certaine longueur.
   -- Ce n'est pas un corrigé du TD.
   function Dimensions_OK return Boolean is
      Resultat : Boolean ;
   begin
      Resultat := OM.Dim(1) + OM.Dim(2) + OM.Dim(3) <= Somme ;
      return Resultat ;
   end Dimensions_OK ;
   
   procedure Piloter_Tapis is
   begin
      -- null est un bloc qui ne fait rien
      null ;
   end Piloter_Tapis ;
   
begin
   Piloter_Tapis ;
end Mission7 ;
