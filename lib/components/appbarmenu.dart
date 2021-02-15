import 'package:flutter/material.dart';   
import 'package:appbar/constants.dart';   
import 'package:appbar/Screens/Home/components/customerlisttile.dart';
import 'package:appbar/Screens/Home/components/body.dart'; 
import 'package:appbar/Screens/Profile/profile_screen.dart'; 
import 'package:appbar/Screens/Home/home_screen.dart';
import 'package:appbar/Screens/Login/login_screen.dart';
class AppBarMenu extends StatelessWidget{
  final Widget child;
  final String title;  
  final Color backgroundbar;
  final Function press;
  const AppBarMenu({
    Key key,
    @required this.child,
    this.title,
    this.backgroundbar,
    this.press,    
  }):super(key: key);
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(title), 
          backgroundColor: backgroundbar,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notifications,
                color: kBellColor,
              ),
            ),
          ],
        ),
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
            text: "Home",
            icon: Icons.home,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){return HomeScreen();}
                )
              );
            }
          ),
          CustomerListTile(
            text: "Profile",
            icon: Icons.person,
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){return ProfileScreen();}
                )
              );
            },
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
            text: "Log in",
            icon: Icons.lock,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){return LoginScreen();}
                )
              );
            },
          ),

        ])),
      body: child,
    );
  }
}
