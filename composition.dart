class Engine {
  String start() => 'Engine started';
}

class Car {
  Car(this.engine);

  final Engine engine;

  String start() => engine.start();
}

void main() {
  final car = Car(Engine());
  print(car.start()); // Engine started
}