program mul;
var
  x, y: longint;
begin
  {$I-}
  read(x, y);
  if IOResult = 0 then
    writeln(x * y)
  else
    writeln('Вы ввели не понятные данные')
end.
