with Tapis ;

procedure Mission6 is
   
   
begin
   
   while not Tapis.Est_Vide loop
      
      while not Tapis.Produit_Dans_Zone loop
	 Tapis.Avancer ;
      end loop ;
      
      Tapis.Aiguiller_Produit (Poubelle => False) ;
      
   end loop ;
   
end Mission6 ;
