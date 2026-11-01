abstract class Vehicle {
  String start();
}

class ElectricCar extends Vehicle {
  @override
  String start() => 'Battery system started';
}

void main() {
  final car = ElectricCar();
  print(car.start()); // Battery system started
}