import 'package:flutter/material.dart';
import 'package:appbar/components/appbarmenu.dart';
import 'package:appbar/constants.dart';
import 'package:appbar/Screens/Login/components/body.dart';
class LoginScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return AppBarMenu(
      title: "Login",
      backgroundbar: kOrangeColor,
      child: Body(),
    );
  }

}
