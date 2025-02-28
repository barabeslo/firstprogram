program PrimeChecker;

uses crt;

var
  num, i: longint;
  isPrime: boolean;

begin
  clrscr;  { Очистка экрана }
  
  writeln('Проверка на простое число');
  writeln('Введите число:');
  readln(num);
  
  { Предполагаем, что число простое }
  isPrime := true;

  { Проверяем, является ли число меньше 2 }
  if num < 2 then
    isPrime := false
  else
  begin
    { Проверяем делимость числа на все числа от 2 до квадратного корня из num }
    for i := 2 to trunc(sqrt(num)) do
    begin
      if (num mod i = 0) then
      begin
        isPrime := false;
        break;  { Выходим из цикла, если нашли делитель }
      end;
    end;
  end;

  { Вывод результата }
  if isPrime then
    writeln(num, ' является простым числом.')
  else
    writeln(num, ' не является простым числом.');

  readln;  { Ожидание нажатия клавиши перед закрытием }
end.
