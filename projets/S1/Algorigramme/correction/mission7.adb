with Tapis ;
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
      Err : Integer ;
      A_Jeter : Boolean ;
   begin
      Err := 0 ; 
      
      -- Boucle principale
      while (not Tapis.Est_Vide) and Err < 5 loop
	 
	 if Tapis.Produit_Dans_Zone then
	    
	    if Dimensions_OK then
	       A_Jeter := False ;
	       Err := 0 ;
	    else
	       A_Jeter := True ;
	       Err := Err + 1 ;
	    end if ;
	    
	    -- Aiguiller_Produit est bien situé après le deuxième IF
	    Tapis.Aiguiller_Produit (Poubelle => A_Jeter) ;    
	    
	 else
	    Tapis.Avancer ;
	 end if ;
	 
      end loop ;
      
   end Piloter_Tapis ;
   
begin
   Piloter_Tapis ;   
end Mission7 ;
