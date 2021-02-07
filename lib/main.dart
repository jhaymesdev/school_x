import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/full_notification_screen.dart';
import './providers/notification_info.dart';
import './providers/notification_list.dart';
import './widgets/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => NotificationList(),),
        ChangeNotifierProvider(create: (BuildContext context) => NotificationInfo(),),
       // ChangeNotifierProvider(create: (BuildContext context)=> Cart())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.purple,
        ),
        home: CustomNavigationBar(),
        routes: {
          FullNotificationScreen.routeName:(context)=> FullNotificationScreen(),
        },
      ),
    );
  }
}
