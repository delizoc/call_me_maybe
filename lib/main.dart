// @dart=2.9

import 'package:flutter/material.dart';
import 'components/predictor.dart';
import 'components/resume.dart';
import 'components/business_card.dart';

const String title = 'Call Me Maybe';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData(
          fontFamily: 'RobotoScript',
          brightness: Brightness.light,
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
          length: 3, 
          child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs:[
                Tab(icon: Icon(Icons.face)),
                Tab(icon: Icon(Icons.description)),
                Tab(icon: Icon(Icons.help_outline))
              ],
            ),
            title: const Center (child: Text(title)
              ),
          ),
          body: const TabBarView(children: <Widget>[
            Center(child: BusinessCard(padding: 50)),
              Center(child: Resume(padding:50)),
              Center(child: Predictor()),
          ],)
        ), 
      )
    );
  }
}
