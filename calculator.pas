program ConsoleCalculator;

uses crt;

var
  num1, num2, result: real;
  operation: char;

begin
  clrscr;  { Очистка экрана }
  
  writeln('Консольный калькулятор');
  writeln('Введите первое число:');
  readln(num1);
  
  writeln('Введите операцию (+, -, *, /):');
  readln(operation);
  
  writeln('Введите второе число:');
  readln(num2);
  
  case operation of
    '+': result := num1 + num2;
    '-': result := num1 - num2;
    '*': result := num1 * num2;
    '/': 
      begin
        if num2 <> 0 then
          result := num1 / num2
        else
        begin
          writeln('Ошибка: Деление на ноль!');
          exit;
        end;
      end;
  else
    writeln('Ошибка: Неверная операция!');
    exit;
  end;

  writeln('Результат: ', result:0:2);
  readln;  { Ожидание нажатия клавиши перед закрытием }
end.
