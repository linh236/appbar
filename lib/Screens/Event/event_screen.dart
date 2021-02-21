import 'package:flutter/material.dart';
import 'package:appbar/components/appbarmenu.dart';
import 'package:appbar/constants.dart';
import 'package:appbar/Screens/Event/components/body.dart';
class EventScreen extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return AppBarMenu(
      title: "Event",
      backgroundbar: kOrangeColor,
      child: Body()
    );
  }

}
