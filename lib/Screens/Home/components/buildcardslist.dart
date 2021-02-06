import 'package:flutter/material.dart';

class BuildCardsList extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        return Text('$index');
      }
    );
  }
}
