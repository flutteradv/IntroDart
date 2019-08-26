
void main(){
  var c = Complex(3,4);
  // c.real = 2;
  // c.imaginary = 4;
  var c2 = Complex(3,4);
          //  ..real = 3
          //  ..imaginary = 4;
  print(c == c2);
  print("real num: ${c.real}");
  print("imaginary num: ${c.imaginary}");
  print(c);
}

class Complex {
  num real;
  num imaginary;
  
  Complex(this.real,this.imaginary);

  @override
  bool operator ==(other){
    if(!(other is Complex)) {
      return false;
    }
    return this.real == other.real && this.imaginary == other.imaginary;
  }

  @override
  String toString(){
    if(imaginary >= 0){
      return "$real + ${imaginary}i";
    }
    return "$real - ${imaginary.abs()}i";
  }
  
}