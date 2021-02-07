import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/notification_list.dart';
class FullNotificationScreen extends StatefulWidget {
  static const routeName = "/fullNotificationScreen";
  @override
  _FullNotificationScreenState createState() => _FullNotificationScreenState();
}

class _FullNotificationScreenState extends State<FullNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final notificationId = ModalRoute.of(context).settings.arguments as String;
    final openedNotification = Provider.of<NotificationList>(context,listen: false)
    .findById(notificationId);
    return Scaffold(
      appBar: AppBar(
        title: Text(openedNotification.subject),
      ),
      body: Column(
        children: [
          openedNotification.moreInfo.startsWith("http")? Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(
                    openedNotification.moreInfo
                  )
                  )
                ),
              ),
              Align(
                child: Text("Given Date: ${openedNotification.assignmentGivenOn}"),
              ),
            ],
          ):
          Center(
            child:
                Text(openedNotification.moreInfo,style: TextStyle(
                  fontSize: 25
                ),),
          ),
                Align(
                  child: Text(" ${openedNotification.assignmentGivenOn}"),
                ),
        ],
      ),
    );
  }
}
