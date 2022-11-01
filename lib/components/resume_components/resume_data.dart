import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResumeContents extends StatefulWidget {
  String title;
  String company;
  String duration;
  String location;
  String description;
  ResumeContents({Key? key, required this.title, required this.company, required this.duration, required this.location, required this.description}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ResumeContents createState() => _ResumeContents();
}

class _ResumeContents extends State<ResumeContents> {
  @override
  Widget build(BuildContext context) {
    // retrieving providers objects
    //final resume = Provider.of<Resume>(context, listen: false);

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          margin: const EdgeInsets.all(1),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 3),
                child: Row(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 3, 5, 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Text(
                      widget.company,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      maxLines: 1,
                  ),
                      Text(
                        widget.duration,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 1,
                  ),
                      Text(
                        widget.location,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 1,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 3, 0, 3),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Text(
                        widget.description,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}