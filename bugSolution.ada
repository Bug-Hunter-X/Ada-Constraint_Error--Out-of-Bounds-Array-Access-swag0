```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array
begin
   for I in My_Arr'Range loop
      My_Arr(I) := I * 2; 
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
   -- Correct way to prevent out-of-bounds access
   if 1 <= 11 and 11 <= My_Arr'Last then
      My_Arr(11) := 5; 
   else
      Ada.Text_IO.Put_Line("Index out of bounds. Operation skipped.");
   end if;
exception
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred.");
end Example;
```