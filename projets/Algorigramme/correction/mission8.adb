with Gada.Text_IO ;

procedure Missionp1 is
   
   package Txt renames Gada.Text_IO ;
   
   function Secret(N : Integer) return Integer is
      
      X,Res,M,P : Integer ;
      B,D : Boolean ;
      
   begin
      
      X := N ;
      Res := 2 ;
      
      while X > 1 loop
         
         X := X -1 ;
         B := False ;
         
         while not B loop
            
            Res := Res + 1 ;
            D := False ;
            M := 2 ;
            
            while not (D or M > Res/2) loop
               
               P := 0 ;
               
               while P < Res loop
                  P := P + M ;
               end loop ;
               
               if P = Res then
                  D := True ;
               else
                  M := M + 1 ;
               end if ;
               
            end loop ;
            
            B := not D ;
            
         end loop ;
         
      end loop ;
      
      return Res ;
      
   end Secret ;
   
   
   -- Procedure de test : on affiche N et f(N)
   procedure Tester_Secret(N : Integer) is
   begin
      Txt.Put_Line("Secret(" & Integer'Image(N) & ") = " & Integer'Image(Secret(N => N)) ) ;
   end Tester_Secret ;
   
begin
   
   -- On invoque la procédure de test sur les entiers de 1 à 15.
   for I in 1..15 loop 
      Tester_Secret(N => I) ;
   end loop ;     
   
end Missionp1 ;
