with Gada.Text_IO ;
with Rois ;

procedure Mission5 is
   
   package Txt renames GAda.Text_IO ;
   
   -- Afficher la liste de tous les rois
   procedure Tout_Afficher is
   begin
      for No in 1..Rois.Nb_Rois loop
	 Txt.Put_Line(Rois.Nom(No) & " " & Integer'Image(Rois.Debut(No)) & " -" & Integer'Image(Rois.Fin(No))) ;
      end loop ;
   end Tout_Afficher ;
   
   -- Trouver le numéro du roi ayant régné le plus longtemps
   function Plus_Long return Integer is
      -- Duree maximale observée
      Duree_Max : Integer := 0 ;
      
      -- Numéro du roi avec la durée maximale
      Numero_Max : Integer ;
      
      -- Variable intermédiaire pour le calcul de la durée de règne.
      Duree : Integer ;
   begin
      for No in 1..Rois.Nb_Rois loop
	 Duree := Rois.Fin(No) - Rois.Debut(No) ;
	 if Duree > Duree_Max then
	    Duree_Max := Duree ;
	    Numero_Max := No ;
	 end if ;
      end loop ;
      return Numero_Max ;
   end Plus_Long ;
   
   
   -- Variable pour stocker le résultat de la fonction
   -- (permet de n'invoquer la fonction qu'une seule fois au lieu de trois)
   LongRoi : Integer ;
   
begin
   
   Tout_Afficher ;
   
   LongRoi := Plus_Long ;
   Txt.Put_Line("Le roi ayant régné le plus longtemps est : " & Rois.Nom(LongRoi)
		  & " de " & Integer'Image(Rois.Debut(LongRoi))
		  & " a " & Integer'Image(Rois.Fin(LongRoi))) ;
end Mission5 ;
