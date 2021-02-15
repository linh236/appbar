import 'package:flutter/material.dart';    
import 'package:appbar/constants.dart'; 
import 'package:appbar/Screens/Login/components/text_field_container.dart';
class InputPasswordField extends StatelessWidget{
  final IconData icon;
  final Color color;
  final String hintText;
  final ValueChanged<String> onChanged;
  const InputPasswordField({
    Key key,
    this.icon = Icons.email,
    this.hintText,
    this.onChanged,
    this.color= kPrimaryColor,
  }):super(key:key);
  @override

  Widget build(BuildContext context){
    return  TextFieldContainer(
      child: TextFormField(
        obscureText:true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
     ),
   );
  }
}

