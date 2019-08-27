
import 'Complex.dart';

void main(){
  var c = Complex(3,4);
  // c.real = 2;
  // c.imaginary = 4;
  var c2 = Complex(3,4);
          //  ..real = 3
          //  ..imaginary = 4;
  var r = Complex.real(5);
  var i = Complex.imaginary(-10);
  i.imaginary = 20;
  i.real = 50;
  
  print(c == c2);
  print("real num: ${c.real}");
  print("imaginary num: ${c.imaginary}");
  print(c);
  print(r);
  print(i);
}

