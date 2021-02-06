import 'package:flutter/material.dart';
import 'package:appbar/constants.dart';
import 'package:appbar/Screens/Home/components/customerlisttile.dart';
import 'package:appbar/Screens/Home/components/body.dart';
import 'package:appbar/components/appbarmenu.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBarMenu(
      title: "Home",
      backgroundbar: Colors.orange, 
      child: Body(),
    );
  }
}

