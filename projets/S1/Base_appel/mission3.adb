with GAda.Text_IO ;

procedure Mission3 is
   package Txt renames GAda.Text_IO ;

   function Affine (A, B, X : Integer) return Integer is
      Resultat : Integer ;
   begin
      Resultat := A * X + B ;
      return Resultat ;
   end Affine ;

   procedure Tester_Affine (VA, VB, VX : Integer) is
      Resultat : Integer ;
   begin
      Txt.Put_Line(Aff => "Resultat = " & Integer'Image(Resultat)) ;
   end Tester_Affine ;

begin
   -- Corps du programme
   Tester_Affine (VA => 10, VB => 99, VX => 5) ;
end Mission3 ;
