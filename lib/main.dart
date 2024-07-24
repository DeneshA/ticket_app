import 'package:flutter/material.dart';

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

//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//     @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//                                                                                                                                 colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//                                     _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//                             return Scaffold(
//       appBar: AppBar(
//                                 backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//                         title: Text(widget.title),
//       ),
//       body: Center(
//                         child: Column(
//                                                                                                                                             mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),     );
//   }
// }
