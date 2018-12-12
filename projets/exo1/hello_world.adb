with GAda.Text_IO;
procedure Hello is
	begin
		GAda.Text_IO.Put("Hello");
    GAda.Text_IO.New_Line;
    GAda.Text_IO.Put_Line("Tapez une chaine ");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("AAAA",3)&" OK");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("BB",3)& " NoK");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("C",3)& "Nook");
    GAda.Text_IO.Put('C');
    GAda.Text_IO.Put_Line('D');
    GAda.Text_IO.Put("Tapez une chaine ");
    declare
      text: String :=GAda.Text_IO.FGet; 
      begin
      GAda.Text_IO.Put_Line("New Value "&text);
    end;
		GAda.Text_IO.Put("Test replace");
		GAda.Text_IO.Replace("Nope");
end Hello;
