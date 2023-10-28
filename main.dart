import 'package:flutter/material.dart';
import 'package:tp/3rd.dart';

import '2nd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double degree = 0 ;
  rotate(){
    degree = degree + 45.0 ;
    if(degree == 360){
      degree = 0 ;
    }
   print(degree);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:FloatingActionButton(onPressed: rotate, tooltip: "Rotate", child: Text("rotate"),),
      appBar: AppBar(

        backgroundColor: Colors.black87,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("TP1" , style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          children: [

            Transform.rotate(angle: degree , child: Image.asset("assets/images/img.png" , width: 300, height: 300, ),),

            FloatingActionButton(onPressed: (){
              Navigator.push(context,   MaterialPageRoute(
                builder: (context) => ndscreen(),
              ),);
            },
                child: Text("2nd")),
            FloatingActionButton(onPressed: (){
              Navigator.push(context,   MaterialPageRoute(
                builder: (context) => rdscreen(),
              ),);
            }
            ,
            child: Text("Grid")),
          ],
        )));
//
  }
}
