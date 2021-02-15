import 'package:flutter/material.dart';                         
import 'package:http/http.dart' as http;                      
import 'dart:convert'; 
import 'package:appbar/constants.dart'; 
import 'package:appbar/Screens/Profile/profile_screen.dart';
import 'package:appbar/Screens/Login/login_screen.dart';
class ProcessLogin{

  Future<List<dynamic>> postProcessLogin(context,email,password) async{
    var result = await http.post(
      UrlLogin,
      headers:<String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
          'email': email,
          'password': password
        }
      ),
    );
    if(result.statusCode == 200){
      var response = json.decode(result.body);
      print(response);
      if(response["status"] == 200 ){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProfileScreen();
            }
          )  
        );
      }else{
        Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginScreen();
          }
        )  
      );             
      }      
    }else{
      print("failed");
    }
  
  }
  bool valiEmail(String email){
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    return emailValid;
  }

  void Process(context,Function alert,email,password){
    if(valiEmail(email) != true){
      alert();
    }else{
      postProcessLogin(context,email,password);
    }
  } 
}
