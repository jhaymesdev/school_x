
import 'package:flutter/cupertino.dart';

class NotificationInfo with ChangeNotifier{
  final String subject,moreInfo,teacherName,className,topic,id;
  final DateTime dateOfSubmission, assignmentGivenOn = DateTime.now();

  NotificationInfo({
    this.className, this.dateOfSubmission,this.moreInfo,this.subject,this.teacherName,this.topic,this.id
});
}