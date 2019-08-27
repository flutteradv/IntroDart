class Complex {
  num _real;
  num _imaginary;

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
