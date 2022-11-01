import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class WebsiteWidget extends StatelessWidget {
  const WebsiteWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue),
          onPressed: (){
            launch('https://github.com/delizoc');
            }, child: const Text('github.com/delizoc',style: TextStyle(fontSize: 15))
         );
  }
}
