import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 3, 71, 105)),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var numchanger = 1;
  var num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 71, 105),
      body: SafeArea(
          child: Expanded(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Expanded(
                child: Image.asset(
                  'assets/images/dice-$numchanger.png',
                  width: 400,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      numchanger = Random().nextInt(6) + 1;
                      num = numchanger;
                    });
                  },
                  child: Text(
                    'ROLL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Expanded(
              child: Text(
                num.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      )),
    );
  }
}
