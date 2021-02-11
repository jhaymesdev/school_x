import 'package:flutter/material.dart';

class Analysis extends StatefulWidget {
  static const routeName = "analysis";
  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Welcome to the analysis page for result and student"),
      ),
    );
  }
}
