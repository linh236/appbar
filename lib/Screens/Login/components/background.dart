import 'package:flutter/material.dart';
import 'package:appbar/constants.dart';

 class Background extends StatelessWidget{
  final Widget child;

  const Background ({
    Key key,
    this.child
  }):super(key:key);
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment:Alignment.center,
        children: <Widget>[
          Positioned(
            top: -30,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width:size.width*.3,
              height: size.height*.3
              ),
          ),
          Positioned(
            bottom: -55,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width*.3,
              height: size.height*.3
            ),
          ),
          child, 
        ]
      )
    );

  }

}
