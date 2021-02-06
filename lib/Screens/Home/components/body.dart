import 'package:flutter/material.dart';
class Body extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
        child: Column(
          children: <Widget>[
            Text("Helo"),
            Image.asset("assets/images/av.jpg")
          ] 
        )
    );
    
  }
}
