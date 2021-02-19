import 'package:flutter/material.dart';
import 'package:appbar/constants.dart'; 
import 'package:appbar/components/appbarmenu.dart';   
import 'package:intl/intl.dart';
import 'package:appbar/Screens/Home/components/body_detail.dart';
class DetailScreen extends StatelessWidget{
  final DateTime date;
  const DetailScreen({
    Key key,
    this.date
  }):super(key:key);
  @override
  Widget build(BuildContext context){
    String formatDate = DateFormat("yyyy-MM-dd").format(date);
    return AppBarMenu(
      title: 'Detail $formatDate',
      backgroundbar: kOrangeColor,
      child: BodyDetail(date: formatDate),
    );
  }
}
