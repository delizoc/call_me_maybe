import 'package:flutter/material.dart';
import 'resume_components/resume_data.dart';

class Resume extends StatelessWidget {
  static const route = '/business_card';
  final double padding;

  final String name = 'Colette DeLizo';
  final String email = 'cdelizo@example.com';
  final String github = 'https://github.com/cdelizo';

  const Resume({Key? key, required this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 0, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[banner(context)])),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[banner3(context)])),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[banner2(context)])),
        for (var i = 0; i < 8; i++)
          ResumeContents(
              title: contentsData['title']![i % 4],
              company: contentsData['company']![i],
              duration: contentsData['duration']![i],
              location: contentsData['location']![i % 5],
              description:
                  'Andy walking, Andy tired. Andy take a little snooze. Tie him up when he\'s fast asleep. Send him on a pleasant cruise. - David Bowie')
      ]),
    )));
  }

  Widget banner(BuildContext context) {
    return Text(name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20));
  }

  Widget banner2(BuildContext context) {
    return Text(github,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
  }

  Widget banner3(BuildContext context) {
    return Text(email,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
  }
}

var contentsData = {
  'title': [
    'Sith Lord',
    'Sith',
    'Jedi',
    'Padawan'
  ],
  'company': [
    'Star Wars',
    'Star Wars',
    'Star Wars',
    'Star Wars',
    'Star Wars',
    'Star Wars',
    'Star Wars',
    'Star Wars'
  ],
  'duration': [
    '2012 - 2013',
    '2013 - 2014',
    '2014 - 2015',
    '2015 - 2016',
    '2016 - 2017',
    '2017 - 2018',
    '2018 - 2019',
    '2019 - Present'
  ],
  'location': [
    'Seattle, WA',
    'Death Star',
    'Naboo',
    'Degobah',
    'Tatooine'
  ]
};
