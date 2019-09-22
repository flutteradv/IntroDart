import 'dart:io';

class Complex {
  num _real;
  num _imaginary;
  // static num counter = 0;
  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  Complex(this._real, this._imaginary);

  Complex.real(num real) : this(real, 0);
  Complex.imaginary(num imaginary) : this(0, imaginary);

  Complex operator +(Complex c){
    return Complex(
      this.real + c.real,
      this.imaginary+ c.imaginary
    );
  }
  static Complex subtract(Complex c1,Complex c2){
    return Complex(
      c1.real - c2.real,
      c1.imaginary - c2.imaginary
    );
  }
  Complex multiply(Complex c){
    var first = this.real * c.real;
    var inner = this.imaginary * c.real;
    var outer = this.real * c.imaginary;
    var last = -(this.imaginary) * c.imaginary;
    return Complex(
      first + last,
      inner + outer
    );
  }
  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this.real == other.real && this.imaginary == other.imaginary;
  }

  @override
  String toString() {
    if (imaginary >= 0) {
      return "$real + ${imaginary}i";
    }
    return "$real - ${imaginary.abs()}i";
  }
}

class Quaternion extends Complex{
  num jImage;
  Quaternion(
    num real,
    num imaginary,
    this.jImage
  ): super(
    real,
    imaginary
  );
  // @override
  // String toString(){
  //   final String jImageSign = (this.jImage >= 0) ? '+':'-';
  //   final String imaginarySign = (this.imaginary >= 0) ? '+':'-';
  //   return "${this.real} $imaginarySign ${this.imaginary.abs()}i $jImageSign ${this.jImage.abs()}j";
  // }

  @override
  String toString() {
    if (this.jImage >= 0 && this._imaginary >= 0) {
      return '${this._real} + ${this.imaginary}i + ${this.jImage}j';
    }
    if (this.jImage >= 0 && this._imaginary < 0) {
      return '${this._real} - ${this.imaginary.abs()}i + ${this.jImage}j';
    }
    return '${this._real} - ${this.imaginary.abs()}i - ${this.jImage.abs()}j';
  }
}