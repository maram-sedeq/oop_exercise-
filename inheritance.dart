class Animal {
  Animal(this.name);

  final String name;

  String speak() => 'Some sound';
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  String speak() => 'Woof!';
}

void main() {
  final dog = Dog('Rex');
  print(dog.name); 
  print(dog.speak()); 
}