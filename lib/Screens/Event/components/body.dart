import 'package:flutter/material.dart';
import 'package:appbar/components/input_text_field.dart';
import 'package:appbar/components/text_field_container.dart';
import 'package:appbar/components/dropdown_button.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Add a new event"),
          InputTextField(
            icon: Icons.home,
            hintText: "Note",
            onChanged: (value){},
            color: Colors.black
          ),
          InputTextField(
            icon: Icons.phone,
            color: Colors.black
          ),
          DropDownButton(),
        ]
      ),
    );
  }

}

