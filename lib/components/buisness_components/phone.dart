import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: Colors.blue),
        onPressed: () {
          launch('sms:+5555555555');
        },
        child: const Text('555 555 5555',style: TextStyle(fontSize: 15)));
  }
}
