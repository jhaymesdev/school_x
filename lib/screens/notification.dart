import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/notification_list.dart';
import '../widgets/notification_card.dart';

class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    final notification = Provider.of<NotificationList>(context);
    final notificationsList = notification.notifications;
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: notificationsList[index],
         child: NotificationCard(),
      ),
        itemCount: notificationsList.length,),
    );
  }
}
