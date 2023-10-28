import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rdscreen extends StatefulWidget {
  const rdscreen({super.key});

  @override
  State<rdscreen> createState() => _rdscreenState();
}

class _rdscreenState extends State<rdscreen> {

  List<String>  data = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: GridView.builder(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           itemCount: data.length,

           itemBuilder: (context, index) {
             final asset = data[index];
             return Card(
                 elevation: 4, // Shadow elevation
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12), // Rounded corners
                 ),
                 child: Image.asset(asset)
             );
           },

       )

    );
  }
}
