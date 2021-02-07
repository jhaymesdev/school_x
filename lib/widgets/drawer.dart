import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
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
          onTap: (){},
      title: Text("Ifiok Jhaymes ",style: TextStyle(fontSize: 20,),),
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
