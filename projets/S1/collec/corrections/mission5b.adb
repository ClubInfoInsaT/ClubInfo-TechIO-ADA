with Gada.Text_IO ;
with Villes ;

procedure Mission5b is
   
   package V renames Villes ;
   package Txt renames Gada.Text_IO ;
   
   procedure Afficher_Ville(Nom_Ville : String ; Fiche_Ville : V.T_Fiche) is
   begin
      Txt.Put_Line(Aff => Nom_Ville & " (" & Integer'Image(Fiche_Ville.Code_Postal) & 
		   " )  Pop 2010 = " & Integer'Image(Fiche_Ville.Pop2010) & " hab.") ;
   end Afficher_Ville ;
   
   
   -- Afficher toutes les communes d'une département
   procedure Afficher_Departement(Dept : Integer) is
      Fiche : V.T_Fiche ;
   begin
      -- Parcourir toutes les villes
      for Numv in 1..V.Nb_Villes loop
	 
	 Fiche := V.Fiche_Ville(No => Numv) ;
	 
	 -- et ne sélectionner que celles qui sont dans le département cherché
	 if Fiche.Departement = Dept then
	    Afficher_Ville(Nom_Ville => V.Denomination(Numv), Fiche_Ville => Fiche) ;
	 end if ;
      end loop ;
   end Afficher_Departement ;
   
   
   --- Trouver la ville la moins peuplee
   function Desert return Integer is
      No_Ref : Integer ;
      Pop_Ref : Integer := 999999999 ;
      Fiche : V.T_Fiche ;
   begin
      -- Parcourir toutes les villes et les comparer à la ville de référence la moins peuplée jusqu'ici.
      for Numv in 1..V.Nb_Villes loop
	 
	 Fiche := V.Fiche_Ville(No => Numv) ;
	 -- A-t-on une ville moins peuplée que la référence ?
	 if Fiche.Pop2010 < Pop_Ref then
	    -- Oui, on mémorise cette ville et sa population
	    Pop_Ref := Fiche.Pop2010 ;
	    No_Ref := Numv ;
	 end if ;
	 
      end loop ;
      return No_Ref ;
   end Desert ;
   
   --- Exercice suprême
   function Fiche_Departement (Num_Dept : Integer) return V.T_Fiche is
      Resultat : V.T_Fiche ;
      
      -- Population de la ville la plus peuplée
      Max_Pop : Integer := 0 ;
      
      -- Somme pondérée des coordonnées
      Somme_Long : Float := 0.0 ;
      Somme_Lat  : Float := 0.0 ;
      
      -- Fiche de chaque commune
      Fiche : V.T_Fiche ;      
   begin
      
      -- Initialisation
      Resultat := (Departement => Num_Dept,
		   Code_Postal => 0,
		   Pop2010     => 0,
		   Pop1999     => 0,
		   Surface     => 0.0,
		   Longitude   => 0.0,
		   Latitude    => 0.0,
		   Alt_Bas     => 999999,
		   Alt_Haute   => 0) ;
      
      -- Parcourir toutes les communes du département
      for Numv in 1..V.Nb_Villes loop
	 Fiche := V.Fiche_Ville(No => Numv) ;
	 
	 -- Dans le bon département ?
	 if Fiche.Departement = Num_Dept then
	    
	    -- Ville la plus peuplée : mémoriser son code postal
	    if Fiche.Pop2010 >= Max_Pop then
	       Max_Pop := Fiche.Pop2010 ;
	       Resultat.Code_Postal := Fiche.Code_Postal ;
	    end if ;
	    
	    -- Somme des populations
	    Resultat.Pop2010 := Resultat.Pop2010 + Fiche.Pop2010 ;
	    Resultat.Pop1999 := Resultat.Pop1999 + Fiche.Pop1999 ;
	    
	    -- Somme des surfaces
	    Resultat.Surface := Resultat.Surface + Fiche.Surface ;
	    
	    -- Somme pondérée des coordonnées
	    Somme_Long := Somme_Long + Fiche.Longitude * Fiche.Surface ;
	    Somme_Lat := Somme_Lat + Fiche.Latitude * Fiche.Surface ;
	    
	    -- Altitude min
	    if Fiche.Alt_Bas < Resultat.Alt_Bas then
	       Resultat.Alt_Bas := Fiche.Alt_Bas ;
	    end if ;
	    
	    -- Altitude max
	    if Fiche.Alt_Haute > Resultat.Alt_Haute then
	       Resultat.Alt_Haute := Fiche.Alt_Haute ;
	    end if ;
	 end if ;
	 
      end loop ;
      
      -- Calcul de la moyenne des coordonnées (seulement si le département est "non vide").
      if Resultat.Code_Postal /= 0 then
	 Resultat.Longitude := Somme_Long / Resultat.Surface ;
	 Resultat.Latitude := Somme_Lat / Resultat.Surface ;
      else
	 Resultat.Longitude := 0.0 ;
	 Resultat.Latitude := 0.0 ;
      end if ;
      
      return Resultat ;
   end Fiche_Departement ;
   
   procedure Tester_Departements is
      -- Test ad-hoc pour les département de 31 à 50
      Dept_Debut : constant Integer := 31 ;
      Dept_Fin : constant Integer := 50 ;
      
      Fiche : V.T_Fiche ;
   begin

      for Dept in Dept_Debut..Dept_Fin loop
	 Fiche := Fiche_Departement(Num_Dept => Dept) ;
	 
	 Txt.New_Line ;
	 Txt.Put_Line(Aff => "Departement " & Integer'Image(Dept)) ;
	 Txt.Put_Line(Aff => "   Code postal de la ville principale : " & Integer'Image(Fiche.Code_Postal)) ;
	 Txt.Put_Line(Aff => "   Population totale : " & Integer'Image(Fiche.Pop2010) & " (2010),   " & Integer'Image(Fiche.Pop1999) & " (1999)") ;
	 
	 -- On affiche volontairement la surface comme un entier pour que ce soit plus lisible.
	 Txt.Put_Line(Aff => "   Surface : " & Integer'Image( Integer(Fiche.Surface) ) & "km²") ;
	 Txt.Put_Line(Aff => "   Coordonnées moyennes : " & Float'Image(Fiche.Longitude) & ", " & Float'Image(Fiche.Latitude)) ;
	 Txt.Put_Line(Aff => "   Altitudes extrêmes : " & Integer'Image(Fiche.Alt_Bas) & "m <" & Integer'Image(Fiche.Alt_Haute) & "m") ;
      end loop ;
   end Tester_Departements ;
   
   Ville_Deserte : Integer ;
   
begin
   
   Afficher_Departement(Dept => 44) ;
   
   Ville_Deserte := Desert ;
   Txt.New_Line ;
   Txt.Put_Line("Ville la moins peuplée de la liste : ") ;
   Afficher_Ville( Nom_Ville => V.Denomination(No => Ville_Deserte), 
		   Fiche_Ville => V.Fiche_Ville(No => Ville_Deserte) ) ;
   
   Tester_Departements ;
end Mission5b ;

