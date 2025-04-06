abstract class Vehicle {
  int _speed = 0;
  move();

  setSpeed(int speed) {
    if (speed > 0) {
      _speed = speed;
    } else {
      print("Speed should be a positive number.");
    }
  }
}
class Car extends Vehicle {
  @override
  move() {
    print("The car is moving at $_speed km/h.");
  }
}
main() {
  Car mycar = Car();
  mycar.setSpeed(100);
  mycar.move();
}