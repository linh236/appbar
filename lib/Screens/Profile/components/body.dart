import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:appbar/constants.dart';

class Body extends StatelessWidget {
  Future<List<dynamic>> fetchUses() async {
    var result = await http.get(Url);
    return json.decode(result.body)['data'];
  }

  String _name(dynamic use) {
    return use['name'];
  }

  double _cost(dynamic use) {
    return use['new_cost'] * use['amount'];
  }

  String _date(dynamic use) {
    return use['date'];
  }

  int _amountItem(dynamic use) {
    return use['amount'];
  }
  String _image(dynamic use){
    if (use["image"]["url"] != null){
      return Url + "/" + use["image"]["url"].toString();
    }else{
      return "https://randomuser.me/api/portraits/med/men/10.jpg";
    }
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<dynamic>>(
          future: fetchUses(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      child: Column(children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(_image(snapshot.data[index]))
                      ),
                      title: Text(_name(snapshot.data[index])),
                      subtitle: Text(_date((snapshot.data[index]))),
                      trailing: Text("Total   : " +
                          _cost(snapshot.data[index]).toString() +
                          "d" +
                          "\nCount : " +
                          _amountItem(snapshot.data[index]).toString()),
                      onTap: () {},
                    )
                  ]));
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
