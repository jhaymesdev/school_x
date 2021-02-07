import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_x/screens/full_notification_screen.dart';
import '../providers/notification_info.dart';
class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notification = Provider.of<NotificationInfo>(context);
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(FullNotificationScreen.routeName,arguments: notification.id);
      },
      child: Card(
 elevation: 1.0,
        child: Container(
          height: 80, width: 100,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(notification.subject),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(notification.assignmentGivenOn.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
