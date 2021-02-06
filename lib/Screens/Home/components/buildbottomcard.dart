import 'package:flutter/material.dart';
import 'package:appbar/constants.dart';
Widget _BuildButton(IconData icon){
  return IconButton(
    onPressed: (){},
    icon: Icon(icon, color: Colors.white)
  );
}
Widget _BuildText(String text){
  return Text(
    text,
    style: TextStyle(
      color: kWhiteColor, 
      fontWeight: FontWeight.bold,
      fontSize: 16
    ),
  );
}
class BuildBottomCard extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.3,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              _BuildText("ALL"),
              Spacer(),
              _BuildText("DONE"),
            ]
          ),
          SizedBox(height: size.height*.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              _BuildButton(Icons.radio_button_checked), 
              _BuildButton(Icons.home),
              _BuildButton(Icons.settings),
            ],
          ),
        ]
      )
    );
  }

}
