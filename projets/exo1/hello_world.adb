with GAda.Text_IO;
procedure Hello_world is
	begin
		GAda.Text_IO.Put("Hello_world");
    GAda.Text_IO.New_Line;
    GAda.Text_IO.Put_Line("Tapez une chaine ");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("AAAA",3)&" OK");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("BB",3)& " NoK");
    GAda.Text_IO.Put_Line(GAda.Text_IO.Normalise("C",3)& "Nook");
    GAda.Text_IO.Put('C');
    GAda.Text_IO.Put_Line('D');
end Hello_world;
