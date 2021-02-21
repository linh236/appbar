import 'package:flutter/material.dart';
import 'package:appbar/constants.dart'; 
import 'package:appbar/Screens/Login/components/background.dart';
import 'package:appbar/components/text_field_container.dart';
import 'package:appbar/components/input_text_field.dart';
import 'package:appbar/components/input_password_field.dart';
import 'package:appbar/components/process_login.dart';
class Body extends StatelessWidget{
  var email="";
  var password="";
  final process = ProcessLogin();
  @override
  Widget build(BuildContext context){ 
    Size size = MediaQuery.of(context).size;
    void Message(){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Taet"),
            content: Text("Content"),
            actions: [
              FlatButton(
                onPressed: (){Navigator.of(context).pop();}, 
                child: Text("Close")
              )
            ]
          );
        } 
      );
    }
   // return  ProcessLogin(keyemail:email, keypassword:password);
    return Background(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              "assets/images/av.jpg",
              width:size.width*.7
            ), 
          ),
          InputTextField(
            hintText: "Email",
            onChanged: (String value){email=value;},
          ),
          InputPasswordField(
            hintText: "Password",
            icon: Icons.lock,
            onChanged:(value){password=value;}
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlatButton(
              onPressed:()=> {process.Process(context,Message,email, password)},
              color: kPrimaryColor,
              child:Text(
                "Login",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]
      ),
    );
  }
}

