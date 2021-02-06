import 'package:flutter/material.dart';
import 'package:appbar/Screens/Home/components/buildbottomcard.dart';
import 'package:appbar/Screens/Home/components/buildcardslist.dart';



class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child:BuildBottomCard(),
            ),
            BuildCardsList(),
          ] 
        )
    );
    
  }
}
