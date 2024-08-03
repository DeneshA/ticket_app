
void main() {
  // runApp(const MyApp()); // This is a entry point for Fultter framework
  print("Hello Dart");

  // var vehicle = Vehicle();
  //     vehicle.wheelsNum();
  // print("Given wheel number is ${vehicle.wheels}");

  var carInst = Car(4); // Instantiate
  print("${carInst.wheels}");
  carInst.wheelsNum();
  carInst.carType();

  var planeInst = Plane(3);
  planeInst.wheelsNum();
}

abstract class Vehicle{
  Vehicle(this.wheels);

  int wheels;

  void wheelsNum(){
    //print("The vehicle's wheels number is $wheels" );
  }
}

class Car extends Vehicle{ //Inheritant
  Car(super.wheels);


  void carType(){
    print("Land runner");
  }

  @override
  void wheelsNum(){
    print("The car's wheels number is $wheels");
  }

}

class Plane extends Vehicle{
  Plane(super.wheels);

  void PlaneType(){
    print("Boing");
  }

  @override
  void wheelsNum(){
    print("The plane's wheels number is $wheels");
  }

}
