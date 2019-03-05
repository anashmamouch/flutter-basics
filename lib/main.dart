/*
*
* @author Anas
* @date 5/03/2019
*
* */

import 'package:flutter/material.dart';
import './app_screens/FirstScreen.dart';
import 'dart:async';


void main() {
  print('hello app');
  const oneSec = const Duration(seconds:1);
  final stopwatch = Stopwatch()..start();
  new Timer.periodic(oneSec, (Timer t) => print('Time: ${stopwatch.elapsed.inSeconds}'));

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  static const oneSecond = const Duration(seconds:1);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
            debugShowCheckedModeBanner: true,
            title: "Flutter App",
            home: myScaffold()
    );
  }

  Widget myScaffold() {
    return Scaffold(
              appBar: AppBar(title: Text("Anas")),
              body: FirstScreen(),
            );
  }

}
