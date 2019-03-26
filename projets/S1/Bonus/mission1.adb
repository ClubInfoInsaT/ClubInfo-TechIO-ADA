with Gada.Text_IO ;
with Gada.Integer_Text_IO ;

procedure Mission1 is
   
   package Txt renames Gada.Text_IO ;
   package ITxt renames Gada.Integer_Text_IO ;
   
   
   -- Variable utilisée pour stocker l'entier lu au clavier.
   Entier_Lu : Integer := 1 ;
   
   -- Pour calculer la moyenne : somme et nombre d'éléments de la somme
   Somme : Integer := 0 ;
   Cardinal : Integer := 0 ;
   
   -- Pour repérer les extremums
   Le_Min : Integer := Integer'Last ; -- Integer'Last est un entier très grand.
   Le_Max : Integer := Integer'First ; -- Integer'First est un entier très petit.
   
begin
   Txt.Put_Line("Bonjour, entrez des nombres et terminez par 0.") ;
   Txt.New_Line ;
   
   while (Entier_Lu /= 0) loop
      Txt.Put("Votre nombre ? ") ;
      Entier_Lu := ITxt.Fget ;
      
      -- Ici, on recopie le nombre tapé :
      -- Txt.Put_Line("C'est vraiment hyper-cool, vous avez tapé " & Integer'Image(Entier_Lu)) ;
      
      -- Si ce n'est pas 0, on le compte dans la moyenne, et on l'examine pour la recherche d'extremum.
      if Entier_Lu /= 0 then
	 Somme := Somme + Entier_Lu ;
	 Cardinal := Cardinal + 1 ;
	 
	 if Entier_Lu > Le_Max then
	    Le_Max := Entier_Lu ;
	 end if ;
	 
	 if Entier_Lu < Le_Min then
	    Le_Min := Entier_Lu ;
	 end if ;
      end if ;
      
     
   end loop ;
   
   Txt.New_Line ;
   Txt.Put_Line("Moyenne de vos nombres : " & Float'Image( Float(Somme) / Float(Cardinal) )) ;
   Txt.Put_Line("Valeur maximale : " & Integer'Image(Le_Max)) ;
   Txt.Put_Line("Valeur minimale : " & Integer'Image(Le_Min)) ;
   
end Mission1 ;

