with GAda.Text_IO ;
with Cartographie ;

procedure Mission4 is

   package Txt renames GAda.Text_IO ;
   package C renames Cartographie ;

   procedure Afficher_Aeroport (Nom : String ; Pays : String ; Position : C.T_Coords) is
   begin

   end Afficher_Aeroport ;

begin

   -- Corps du programme
   Afficher_Aeroport (Nom => "Hong Kong Airport", Pays => "CN", Position => (113.9, 22.3)) ;

end Mission4 ;
