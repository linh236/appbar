import 'package:flutter/material.dart';
import 'package:appbar/constants.dart';
import 'package:appbar/Screens/Home/components/customerlisttile.dart';
import 'package:appbar/Screens/Home/components/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("App Bar"), backgroundColor: Colors.orange),
        drawer: Drawer(
            child: ListView(children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
              ),
             child:Container(
                child: Column(
                  children:<Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/av.jpg",
                        height: size.height*.13,
                        width: size.width*.23,
                      ),
                    ),
                    Text(
                      "Nguyễn Quang Lĩnh",
                      style: TextStyle(color: kWhiteColor)
                    )
                  ]
                ),
               ),
            ),
          CustomerListTile(
            text: "Profile",
            icon: Icons.person,
            onTap: () {},
          ),
          CustomerListTile(
            text: "Notification",
            icon: Icons.notifications,
            onTap: () {},
          ),
          CustomerListTile(
            text: "Setting",
            icon: Icons.settings,
            onTap: () {},
          ),
          CustomerListTile(
            text: "Log Out",
            icon: Icons.lock,
            onTap: () {},
          ),
        ])),
      body:Body(),
    );
  }
}

