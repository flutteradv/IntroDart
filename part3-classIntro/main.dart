
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

class Complex {
  num _real;
  num _imaginary;
  
  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  Complex(this._real,this._imaginary);

  Complex.real(num real): this(real,0);
  Complex.imaginary(num imaginary): this(0,imaginary);

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