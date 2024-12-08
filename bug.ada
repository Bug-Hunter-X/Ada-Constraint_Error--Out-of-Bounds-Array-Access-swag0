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
   -- Incorrect way to access array elements beyond the bounds
   My_Arr(11) := 5; -- This will raise Constraint_Error at runtime
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint Error: Index out of bounds");
end Example;
```