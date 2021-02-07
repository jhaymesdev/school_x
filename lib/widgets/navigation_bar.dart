import 'package:flutter/material.dart';
import 'package:school_x/screens/analysis.dart';
import 'package:school_x/screens/cbt.dart';
import 'package:school_x/screens/e_leaarning.dart';
import 'package:school_x/screens/home.dart';
import 'package:school_x/widgets/drawer.dart';
import '../screens/notification.dart' as Screen;

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<Map<Object, Object>> pages;

  int selectedPageIndex = 0;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }
  @override
  void initState() {
    pages = [
      {
        "pages": HomePage(),
        "title": "School X",
        "drawer": CustomDrawer(),
        "action":
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        //how to add actions to a tap bar
      },
      {"pages":
      Learning(),
        "title": "E-Learning",
        "action": IconButton(icon: Icon(Icons.menu_book_outlined), onPressed: (){}),
        "drawer":CustomDrawer()
      } ,
      {"pages":
      CBT(),
        "title": "CBT test",
        "action": IconButton(icon: Icon(Icons.computer), onPressed: (){}),
        "drawer":CustomDrawer()
      },
      {"pages":
      Analysis(),
        "title": "Results",
        "action": IconButton(icon: Icon(Icons.receipt_rounded), onPressed: (){}),
        "drawer":CustomDrawer()
      },
      {"pages":
      Screen.Notification(),
        "title": "Update",
        "action": IconButton(icon: Icon(Icons.receipt_rounded), onPressed: (){}),
        "drawer":CustomDrawer()
      },
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                size: 30,
              ),
              title: Text("Home"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
                size: 30,
              ),
              title: Text("E-learning"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.computer,
                size: 30,
              ),
              title: Text("CBT"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_bookmark,
                size: 30,
              ),
              title: Text("Analysis"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              title: Text("Notifications"),
              backgroundColor: Colors.purpleAccent),
        ],
        onTap: selectPage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.shifting,
      ),
      //drawer: pages[selectedPageIndex]["actions"],
      drawer: pages[selectedPageIndex]["drawer"],
      appBar: AppBar(
        title: Text(pages[selectedPageIndex]["title"]),
        actions: [
          pages[selectedPageIndex]["action"]
        ],
      ),
      body: pages[selectedPageIndex]["pages"],
    );
  }
}