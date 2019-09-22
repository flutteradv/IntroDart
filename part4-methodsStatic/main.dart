
import '../part3-classIntro/Complex.dart';

void main(){
  final n1 = Complex(3,-2);
  final n2 = Complex(1,4);
  print(n1 + n2);
  print(n1.multiply(n2));
  print(Complex.subtract(n1, n2));
  // print(Complex.counter);
  print(Quaternion(1, 2, -3));
}