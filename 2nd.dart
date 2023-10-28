import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ndscreen extends StatefulWidget {
  const ndscreen({super.key});

  @override
  State<ndscreen> createState() => _ndscreenState();
}

class _ndscreenState extends State<ndscreen> {
  back(BuildContext context){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ElevatedButton(
           onPressed:(){back(context);} ,
            child: Text("go back"))
      ) ;
  }
}
