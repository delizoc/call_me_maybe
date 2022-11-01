import 'package:call_me_maybe/components/buisness_components/email.dart';
import 'package:call_me_maybe/components/buisness_components/phone.dart';
import 'package:call_me_maybe/components/buisness_components/website.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatefulWidget {
  final double padding;
  // static const route = '/business_card';
  const BusinessCard({Key? key, required this.padding}) : super(key: key);
  @override
  State<BusinessCard> createState() => _BusinessCard();
}

class _BusinessCard extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/discoGal.png',
                      height: 75, width: 75)),
              const Center(
                child: Text(
                  'Colette DeLizo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  'Supreme Dalek',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Center(
                child: PhoneWidget(),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    WebsiteWidget(),
                    EmailWidget(),
                  ],
                ),
            ],
          )),
    );
  }
}
