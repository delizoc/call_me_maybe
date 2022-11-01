import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue),
          onPressed: (){
            launch('mailto:cdelizo@example.com');
            }, child: const Text('cdelizo@example.com', style: TextStyle(fontSize: 15))
          );
  }
}
