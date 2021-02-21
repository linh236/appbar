import 'package:flutter/material.dart';
import 'package:appbar/Screens/Login/components/text_field_container.dart';
class DropDownButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: DropDownButtonPage()
    );
  }
}

class DropDownButtonPage extends StatefulWidget{
  @override

  _DropDownButtonState createState() => _DropDownButtonState();

}

class _DropDownButtonState extends State<DropDownButtonPage> {
  String setvalue = "a";
  @override
  Widget build(BuildContext context){
    return DropdownButton<String>(
      items: <String>["a","b","c"].map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value)
        );
      }).toList(),
      value: setvalue,
      onChanged: (value){
        setState(() {
          setvalue = value;
        });
      }
    );
  }

}
