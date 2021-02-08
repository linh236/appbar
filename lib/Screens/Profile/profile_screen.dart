import 'package:flutter/material.dart';
import 'package:appbar/Screens/Home/home_screen.dart';
import 'package:appbar/Screens/Profile/components/body.dart';
import 'package:appbar/components/appbarmenu.dart';
class ProfileScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context){
    return AppBarMenu(
      title: "Profile",
      backgroundbar: Colors.orange, 
      child: Body(),
    );
  }

}

