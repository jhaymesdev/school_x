import 'package:flutter/material.dart';
import 'package:school_x/screens/student_profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  String nameOfStudent = "Jhaymes";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.purpleAccent,
        height: 150,
          ),
      ListTile(
          onTap: (){
            Navigator.of(context).pushNamed(StudentProfileScreen.routeName,arguments: nameOfStudent);
          },
      title: Text("$nameOfStudent",style: TextStyle(fontSize: 20,),),
        trailing: Icon(Icons.person,color: Colors.black,),
        ),
      ListTile(
          onTap: (){},
      title: Text("LogIn Another student ",style: TextStyle(fontSize: 20,),),
        trailing: Icon(Icons.person_add_alt,color: Colors.black,),
        ),
      ListTile(
          onTap: (){},
      title: Text("Logout",style: TextStyle(fontSize: 20,),),
        trailing: Icon(Icons.logout,color: Colors.black,),
        ),
      ListTile(
          onTap: (){},
      title: Text("Settings ",style: TextStyle(fontSize: 20,),),
        trailing: Icon(Icons.settings,color: Colors.black,),
        ),
        ],
      ),
    );
  }
}
