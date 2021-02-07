import 'package:flutter/cupertino.dart';
import '../providers/notification_info.dart';

class NotificationList with ChangeNotifier{
  List<NotificationInfo> _notifications =[
    NotificationInfo(className: "Primary 4",id: "a",
        dateOfSubmission: DateTime.now(),
        moreInfo:"https://i0.wp.com/allnewjobcircular.com/wp-content/uploads/2020/11/class-8-math-assignment-answer-2.jpg?resize=683%2C911&quality=95&strip=all&ssl=1",
        subject: "Mathematics assignment",
        teacherName: "",
    topic: "What do you mean"
    ),
    NotificationInfo(className: "Primary 4",
        dateOfSubmission: DateTime.now(),id: "b",
        subject: "PTA meeting",
        teacherName: "",
    moreInfo: "This is the detail about the PTA meeting",
    topic: "What do you mean"
    ),
    NotificationInfo(className: "Primary 4",
        dateOfSubmission: DateTime.now(),
        id: "c",
        moreInfo: "https://www.studiestoday.com/sites/default/files/images11/CBSE%20Class%201%20English%20Vocabulary%20Assignment%20Set%20B.PNG",
        subject: "Computer Studies",
        teacherName: "",
    topic: "What do you mean"
    ),
  ];

  List<NotificationInfo> get notifications{
    return [..._notifications];
  }

  NotificationInfo findById(String id){
    return _notifications.firstWhere((element) => element.id == id);
  }

}