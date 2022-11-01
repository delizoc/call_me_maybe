import 'package:flutter/material.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  static const route = '/predictor';
  @override
  State<Predictor> createState() => _Predictor();
}

class _Predictor extends State<Predictor> {
  int index = 0;

  void indexer() {
    setState(() {
      if (index != 7) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> text = [
      'Yes, Definitely.',
      'Unlikely but possible.',
      'Maybe indeed.',
      'The future is uncertain.',
      'Forget about it.',
      'Don\'t Stop Believin!',
      'Certainly uncertain.',
      'The magic eight.'

    ];

    return Scaffold(

      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              ),
              const Center(
                child: Text(
                  'Call me... Maybe?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: InkWell(
                      onTap: indexer,
                      child: const Text(
                        'Ask question... tap for the answer.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  text[index],
                  style: const TextStyle(
                    fontSize: 23,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}