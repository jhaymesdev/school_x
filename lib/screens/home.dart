import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget newsFeed(String imagePath,String highlight){
    return Stack(children:[
      Container(
        color: Colors.black,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          Center(child: Text(highlight,style: TextStyle(fontSize: 20),)),
          Divider(height: 20,),
        ],
      )
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          newsFeed("assets/image/dsc_lead.jpg", "New DSC lead"),
          newsFeed("assets/image/game_prefect.jpg", "Update on the on-Going milo basket ball competition"),
          newsFeed("assets/image/prefect.jpg", "The frowning student finally becomes happy"),
          newsFeed("assets/image/dsc_lead.jpg", "New DSC lead"),
          newsFeed("assets/image/dsc_lead.jpg", "New DSC lead"),
          newsFeed("assets/image/dsc_lead.jpg", "New DSC lead"),
          newsFeed("assets/image/dsc_lead.jpg", "New DSC lead"),
        ],
      )
    );
  }
}
