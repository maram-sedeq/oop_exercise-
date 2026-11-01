import 'dart:math' as math;

abstract class Shape {
  double area();
}

class Circle extends Shape {
  Circle(this.radius);

  final double radius;

  @override
  double area() => math.pi * radius * radius;
}

class Rectangle extends Shape {
  Rectangle(this.width, this.height);

  final double width;
  final double height;

  @override
  double area() => width * height;
}

void printArea(Shape shape) {
  print(shape.area());
}

void main() {
  printArea(Circle(2)); // About 12.57
  printArea(Rectangle(3, 4)); // 12
}