import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_x/screens/analysis.dart';

class StudentProfileScreen extends StatefulWidget {
  static const routeName = "studentProfileScreen";
  @override
  _StudentProfileScreenState createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  Widget subjectTeacher(String nameOfSubject, String argument,String nameOfTeacher){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(nameOfSubject),
        Row(
          children: [
            Text(nameOfTeacher),
            IconButton(icon: Icon(Icons.message), onPressed: (){
              Navigator.of(context).pushNamed("", arguments: argument);
            }),
          ],
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    final studentName = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
  title: Text(studentName),
),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 60, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Subject"),
              Text("Teacher")
              ],
            ),
          ),
         Divider(height: 7,color: Colors.black,),
         subjectTeacher("Computer", "argument","name of the teacher"),
          subjectTeacher("Chemistry", "argument","Mr something else"),
          subjectTeacher("Mathematics", "argument","Another Mr something "),
          subjectTeacher("Biology", "argument","Mr Okon"),
          subjectTeacher("Physics", "argument","Mr name I thought of"),
          RaisedButton(onPressed: (){
            Navigator.of(context).pushNamed(Analysis.routeName);
          },color:  Colors.purpleAccent,child: Container(
            color: Colors.purpleAccent,
            child: Text("$studentName result"),
          ),
          )
        ],
      )
    );
  }
}
