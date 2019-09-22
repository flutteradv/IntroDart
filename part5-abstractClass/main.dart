import 'dart:math';


void main() {
  Square square = Square(10);
  Rectangle rectangle = Rectangle(10,5);
  Circle circle = Circle(10);
  print(square.name);
  print(rectangle.name);
  print(circle.name);
  Shape randShape;
  Random rand = Random();
  int choice = rand.nextInt(3);
  switch (choice) {
    case 0:
      randShape = Circle(rand.nextInt(10) + 1.0);
      break;
    case 1:
      randShape = Rectangle(rand.nextInt(10) + 1.0,rand.nextInt(10) + 1.0);
      break;
    case 2:
      randShape = Square(rand.nextInt(10) + 1.0);
      break;
    default:
      print("I'll never execute");
  }
  print(randShape.name);
  print("Perimeter: ${randShape.perimeter}");
  print("Area: ${randShape.area}");
}

abstract class Shape {
  double get area;
  double get perimeter;
  String get name;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double get area => pi * radius * radius;

  @override
  String get name => "I am a circle with radius $radius";

  @override
  double get perimeter => 2 * pi * radius;
}

class Rectangle extends Shape {
  double width, length;
  Rectangle(this.width, this.length);
  @override
  double get area => width * length;

  @override
  double get perimeter => 2 * (width + length);

  @override
  String get name => "I am a rectangle with width $width and length $length";
}

class Square extends Rectangle {
  double side;
  Square(this.side) : super(side, side);
  @override
  String get name => "I am a square with the side of $length";
}
